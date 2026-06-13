import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';

import '../services/quran_api_service.dart';

class AlLailPage extends StatefulWidget {
  final Map<String, dynamic> surahData;

  const AlLailPage({super.key, required this.surahData});

  @override
  State<AlLailPage> createState() => _AlLailPageState();
}

class _AlLailPageState extends State<AlLailPage> {
  final AudioPlayer player = AudioPlayer();
  bool isPlayingFullSurah = false;

  final ScrollController _scrollController = ScrollController();
  final List<GlobalKey> ayatKeys = List.generate(21, (_) => GlobalKey());

  Map<String, dynamic>? suratAudio;

  List<dynamic> ayatAudio = [];

  int currentPlayingAyat = -1;
  bool isPlaying = false;
  int playSession = 0;

  String selectedQori = "01";

  final Map<String, String> qoriList = {
    "01": "Abdullah Al-Juhany",
    "02": "Abdul Muhsin Al-Qasim",
    "03": "Abdurrahman As-Sudais",
    "04": "Ibrahim Al-Dossari",
    "05": "Misyari Rasyid Alafasy",
  };

  @override
  void initState() {
    super.initState();
    loadAudioData();
  }

  Future<void> loadAudioData() async {
    final data = await QuranApiService.getSurat(92);

    setState(() {
      suratAudio = data;
      ayatAudio = data['ayat'];
    });
  }

  Future<void> stopAudio() async {
    playSession++;

    isPlaying = false;

    await player.stop();
    await player.seek(Duration.zero);

    setState(() {
      currentPlayingAyat = -1;
      isPlayingFullSurah = false;
    });
  }

  void scrollToAyat(int index) {
    final context = ayatKeys[index].currentContext;

    if (context != null) {
      Scrollable.ensureVisible(
        context,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
        alignment: 0.3,
      );
    }
  }

  Future<void> playAyat(int startIndex) async {
    if (ayatAudio.isEmpty) return;

    playSession++;

    final mySession = playSession;

    await player.stop();
    await player.seek(Duration.zero);

    isPlaying = true;

    for (int i = startIndex; i < ayatAudio.length; i++) {
      if (mySession != playSession) return;

      if (!isPlaying) break;

      setState(() {
        currentPlayingAyat = i;
      });

      WidgetsBinding.instance.addPostFrameCallback((_) {
        scrollToAyat(i);
      });

      final url = ayatAudio[i]['audio'][selectedQori];

      print("Ayat ${i + 1}");
      print(url);

      await player.setUrl(url);

      await player.play();

      await player.playerStateStream.firstWhere(
        (state) =>
            state.processingState == ProcessingState.completed ||
            mySession != playSession,
      );

      if (mySession != playSession) return;

      if (!isPlaying) {
        break;
      }

      if (!isPlaying) return; // <-- tambahkan di sini
    }

    setState(() {
      currentPlayingAyat = -1;
      isPlaying = false;
    });
  }

  Future<void> playFullSurah() async {
    if (suratAudio == null) return;

    await stopAudio();

    setState(() {
      isPlayingFullSurah = true;
    });

    try {
      // audio full surah dari API eQuran
      final audioUrl = suratAudio!['audioFull'][selectedQori];

      await player.setUrl(audioUrl);
      await player.play();

      await player.playerStateStream.firstWhere(
        (state) => state.processingState == ProcessingState.completed,
      );
    } catch (e) {
      debugPrint("Error play full surah: $e");
    }

    if (mounted) {
      setState(() {
        isPlayingFullSurah = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final bool isLightMode = Theme.of(context).brightness == Brightness.light;

    final Color bgColor = isLightMode
        ? const Color(0xfff5f7fa)
        : const Color(0xff090f16);
    final Color cardColor = isLightMode
        ? Colors.white
        : const Color(0xff111a24);
    final Color mainTextColor = isLightMode
        ? const Color(0xff1e293b)
        : Colors.white;
    final Color subTextColor = isLightMode
        ? const Color(0xff475569)
        : Colors.white70;
    final Color chipBgColor = isLightMode
        ? const Color(0xffe2e8f0)
        : Colors.white10;
    final Color chipTextColor = isLightMode
        ? const Color(0xff64748b)
        : Colors.white70;
    final Color accentColor = isLightMode
        ? const Color(0xff0f766e)
        : Colors.tealAccent;
    final Color borderColor = isLightMode
        ? const Color(0xffe2e8f0)
        : Colors.teal.withOpacity(0.2);
    final Color arabicTextColor = isLightMode
        ? Colors.black
        : Colors.white.withOpacity(0.9);

    final List<Map<String, dynamic>> ayatList = [
      {
        'no': '1',
        'arabic': "وَاللَّيْلِ اِذَا يَغْشٰىۙ",
        'transliteration': "Wal-laili iżā yagsyā.",
        'translation': "Demi malam apabila menutupi (cahaya siang),",
      },
      {
        'no': '2',
        'arabic': "وَالنَّهَارِ اِذَا تَجَلّٰىۙ",
        'transliteration': "Wan-nahāri iżā tajallā.",
        'translation': "demi siang apabila terang benderang,",
      },
      {
        'no': '3',
        'arabic': "وَمَا خَلَقَ الذَّكَرَ وَالْاُنْثٰىۙ",
        'transliteration': "Wa mā khalaqaż-żakara wal-unṡā.",
        'translation': "dan demi penciptaan laki-laki dan perempuan.",
      },
      {
        'no': '4',
        'arabic': "اِنَّ سَعْيَكُمْ لَشَتّٰىۗ",
        'transliteration': "Inna sa‘yakum lasyattā.",
        'translation': "Sesungguhnya usahamu benar-benar beraneka ragam.",
      },
      {
        'no': '5',
        'arabic': "فَاَمَّا مَنْ اَعْطٰى وَاتَّقٰىۙ",
        'transliteration': "Fa ammā man a‘ṭā wattaqā.",
        'translation':
            "Siapa yang memberikan (hartanya di jalan Allah) dan bertakwa",
      },
      {
        'no': '6',
        'arabic': "وَصَدَّقَ بِالْحُسْنٰىۙ",
        'transliteration': "Wa ṣaddaqa bil-ḥusnā.",
        'translation':
            "serta membenarkan adanya (balasan) yang terbaik (surga),",
      },
      {
        'no': '7',
        'arabic': "فَسَنُيَسِّرُهٗ لِلْيُسْرٰىۗ",
        'transliteration': "Fasanuyassiruhū lil-yusrā.",
        'translation':
            "Kami akan melapangkan baginya jalan kemudahan (kebahagiaan).",
      },
      {
        'no': '8',
        'arabic': "وَاَمَّا مَنْۢ بَخِلَ وَاسْتَغْنٰىۙ",
        'transliteration': "Wa ammā mam bakhila wastagnā.",
        'translation':
            "Adapun orang yang kikir dan merasa dirinya cukup (tidak perlu pertolongan Allah),",
      },
      {
        'no': '9',
        'arabic': "وَكَذَّبَ بِالْحُسْنٰىۙ",
        'transliteration': "Wa każżaba bil-ḥusnā.",
        'translation': "serta mendustakan (balasan) yang terbaik,",
      },
      {
        'no': '10',
        'arabic': "فَسَنُيَسِّرُهٗ لِلْعُسْرٰىۗ",
        'transliteration': "Fasanuyassiruhū lil-‘usrā.",
        'translation': "Kami akan memudahkannya menuju jalan kesengsaraan.",
      },
      {
        'no': '11',
        'arabic': "وَمَا يُغْنِيْ عَنْهُ مَالُهٗٓ اِذَا تَرَدّٰىۗ",
        'transliteration': "Wa mā yugnī ‘anhu māluhū iżā taraddā.",
        'translation':
            "Hartanya tidak bermanfaat baginya apabila dia telah binasa.",
      },
      {
        'no': '12',
        'arabic': "اِنَّ عَلَيْنَا لَلْهُدٰىۖ",
        'transliteration': "Inna ‘alainā lal-hudā.",
        'translation': "Sesungguhnya Kamilah yang (berhak) memberi petunjuk,",
      },
      {
        'no': '13',
        'arabic': "وَاِنَّ لَنَا لَلْاٰخِرَةَ وَالْاُوْلٰى",
        'transliteration': "Wa inna lanā lal-ākhirata wal-ūlā.",
        'translation': "sesungguhnya milik Kamilah akhirat dan dunia.",
      },
      {
        'no': '14',
        'arabic': "فَاَنْذَرْتُكُمْ نَارًا تَلَهَّظٰىۚ",
        'transliteration': "Fa anżartukum nāran talahhaẓā.",
        'translation':
            "Maka, Aku memperingatkanmu dengan neraka yang menyala-nyala,",
      },
      {
        'no': '15',
        'arabic': "لَا يَصْلٰىهَآ اِلَّا الْاَشْقَىۙ",
        'transliteration': "Lā yaṣlāhā illal-asyqā.",
        'translation':
            "Tidak masuk ke dalamnya kecuali orang yang paling celaka,",
      },
      {
        'no': '16',
        'arabic': "الَّذِيْ كَذَّبَ وَتَوَلّٰىۗ",
        'transliteration': "Allażī każżaba wa tawallā.",
        'translation':
            "yang mendustakan (kebenaran) dan berpaling (dari keimanan).",
      },
      {
        'no': '17',
        'arabic': "وَسَيُجَنَّبُهَا الْاَتْقَىۙ",
        'transliteration': "Wa sayujannabuhal-atqā.",
        'translation':
            "Akan dijauhkan darinya (neraka) orang yang paling bertakwa,",
      },
      {
        'no': '18',
        'arabic': "الَّذِيْ يُؤْتِيْ مَالَهٗ يَتَزَكّٰىۚ",
        'transliteration': "Allażī yu'tī mālahū yatazakkā.",
        'translation':
            "yang menginfakkan hartanya (di jalan Allah) untuk membersihkan (diri dari sifat kikir dan tamak).",
      },
      {
        'no': '19',
        'arabic': "وَمَا لِاَحَدٍ عِنْدَهٗ مِنْ نِّعْمَةٍ تُجْزٰىٓۙ",
        'transliteration': "Wa mā li'aḥadin ‘indahū min ni‘matin tujzā.",
        'translation':
            "Tidak ada suatu nikmat pun yang diberikan seseorang kepadanya yang harus dibalas,",
      },
      {
        'no': '20',
        'arabic': "اِلَّا ابْتِغَاۤءَ وَجْهِ رَبِّهِ الْاَعْلٰىۚ",
        'transliteration': "Illabtigā'a wajhi rabbihil-a‘lā.",
        'translation':
            "kecuali (dia memberikannya semata-mata) karena mencari keridaan Tuhannya Yang Maha Tinggi.",
      },
      {
        'no': '21',
        'arabic': "وَلَسَوْفَ يَرْضٰىࣖ",
        'transliteration': "Wa lasaufa yarḍā.",
        'translation':
            "Sungguh, kelak dia akan mendapatkan kepuasan (menerima balasan amalnya).",
      },
    ];

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: isLightMode ? Colors.black87 : Colors.white70,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          widget.surahData['name'] ?? 'Al-Lail',
          style: TextStyle(
            color: mainTextColor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              isPlayingFullSurah ? Icons.stop_circle : Icons.library_music,
              color: Colors.teal,
            ),
            tooltip: "Full Surah",
            onPressed: () async {
              if (isPlayingFullSurah) {
                await stopAudio();
              } else {
                await playFullSurah();
              }
            },
          ),
        ],
      ),
      body: ListView(
        controller: _scrollController,
        padding: const EdgeInsets.all(16.0),
        children: [
          Wrap(
            spacing: 8,
            children: [
              _buildChip(
                widget.surahData['type'] ?? "MAKKIYAH",
                chipBgColor,
                chipTextColor,
              ),
              _buildChip(
                "${widget.surahData['verses'] ?? 21} Ayat",
                chipBgColor,
                chipTextColor,
              ),
              _buildChip("Juz 30", chipBgColor, chipTextColor),
            ],
          ),
          const SizedBox(height: 20),

          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: cardColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Audio Murottal",
                  style: TextStyle(
                    color: accentColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 15),

                DropdownButtonFormField<String>(
                  value: selectedQori,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  items: qoriList.entries.map((entry) {
                    return DropdownMenuItem<String>(
                      value: entry.key,
                      child: Text(entry.value),
                    );
                  }).toList(),
                  onChanged: (value) async {
                    await stopAudio(); // hentikan audio yang sedang berjalan

                    setState(() {
                      selectedQori = value!;
                    });
                  },
                ),
              ],
            ),
          ),

          const SizedBox(height: 24),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: ayatList.length,
            itemBuilder: (context, index) {
              final ayat = ayatList[index];

              return Padding(
                padding: const EdgeInsets.only(bottom: 32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.menu_book, color: accentColor, size: 18),

                        const SizedBox(width: 6),

                        Text(
                          "Ayat ${ayat['no']}",
                          style: TextStyle(
                            color: accentColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),

                        const Spacer(),

                        IconButton(
                          icon: Icon(
                            currentPlayingAyat == index
                                ? Icons.stop_circle
                                : Icons.play_circle_fill,
                            color: accentColor,
                            size: 30,
                          ),
                          onPressed: () async {
                            // Jika ayat ini sedang diputar → stop
                            if (currentPlayingAyat == index && isPlaying) {
                              await stopAudio();
                              return;
                            }

                            // Jika ada audio lain yang sedang berjalan
                            if (isPlaying) {
                              await stopAudio();
                            }

                            await playAyat(index);
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Container(
                      key: ayatKeys[index],
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 28,
                      ),
                      decoration: BoxDecoration(
                        color: currentPlayingAyat == index
                            ? Colors.amber.withOpacity(0.25)
                            : cardColor,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: currentPlayingAyat == index
                              ? Colors.orange
                              : borderColor,
                          width: currentPlayingAyat == index ? 3 : 1,
                        ),
                      ),
                      child: Text(
                        ayat['arabic'],
                        textAlign: TextAlign.center,
                        style: GoogleFonts.amiri(
                          color: arabicTextColor,
                          fontSize: 24,
                          fontWeight: FontWeight.normal,
                          height: 2.2,
                        ),
                      ),
                    ),

                    const SizedBox(height: 16),
                    Text(
                      "Transliterasi",
                      style: TextStyle(
                        color: accentColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: cardColor,
                        borderRadius: BorderRadius.circular(12),
                        border: isLightMode
                            ? Border.all(color: borderColor)
                            : null,
                      ),
                      child: Text(
                        ayat['transliteration'],
                        style: TextStyle(
                          color: subTextColor,
                          fontSize: 14,
                          fontStyle: FontStyle.italic,
                          height: 1.4,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      "Terjemahan",
                      style: TextStyle(
                        color: accentColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: cardColor,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: isLightMode
                              ? borderColor
                              : Colors.teal.withOpacity(0.15),
                        ),
                      ),
                      child: Text(
                        ayat['translation'],
                        style: TextStyle(
                          color: subTextColor,
                          fontSize: 14,
                          height: 1.4,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    player.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  Widget _buildChip(String label, Color bg, Color textCol) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(label, style: TextStyle(color: textCol, fontSize: 11)),
    );
  }
}
