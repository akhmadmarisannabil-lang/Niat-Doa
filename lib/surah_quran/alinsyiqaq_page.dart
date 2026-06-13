import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';

import '../services/quran_api_service.dart';

class AlInsyiqaqPage extends StatefulWidget {
  final Map<String, dynamic> surahData;

  const AlInsyiqaqPage({super.key, required this.surahData});

  @override
  State<AlInsyiqaqPage> createState() => _AlInsyiqaqPageState();
}

class _AlInsyiqaqPageState extends State<AlInsyiqaqPage> {
  final AudioPlayer player = AudioPlayer();
  bool isPlayingFullSurah = false;

  final ScrollController _scrollController = ScrollController();
  final List<GlobalKey> ayatKeys = List.generate(25, (_) => GlobalKey());

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
    final data = await QuranApiService.getSurat(84);

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
        'arabic': "اِذَا السَّمَاۤءُ انْشَقَّتْۙ",
        'transliteration': "Iżas-samā'unsyaqqat.",
        'translation': "Apabila langit terbelah,",
      },
      {
        'no': '2',
        'arabic': "وَاَذِنَتْ لِرَبِّهَا وَحُقَّتْۙ",
        'transliteration': "Wa ażinat lirabbihā wa ḥuqqat.",
        'translation':
            "serta patuh kepada Tuhannya dan sudah semestinya patuh.",
      },
      {
        'no': '3',
        'arabic': "وَاِذَا الْاَرْضُ مُدَّتْۙ",
        'transliteration': "Wa iżal-arḍu muddat.",
        'translation': "apabila bumi diratakan,",
      },
      {
        'no': '4',
        'arabic': "وَاَلْقَتْ مَا فِيْهَا وَتَخَلَّتْۙ",
        'transliteration': "Wa alqat mā fīhā wa takhallat.",
        'translation':
            "memuntahkan apa yang ada di dalamnya dan menjadi kosong,",
      },
      {
        'no': '5',
        'arabic': "وَاَذِنَتْ لِرَبِّهَا وَحُقَّتْۗ",
        'transliteration': "Wa ażinat lirabbihā wa ḥuqqat.",
        'translation':
            "serta patuh kepada Tuhannya, dan sudah semestinya patuh.",
      },
      {
        'no': '6',
        'arabic':
            "يٰٓاَيُّهَا الْاِنْسَانُ اِنَّكَ كَادِحٌ اِلٰى رَبِّكَ كَدْحًا فَمُلٰقِيْهِۚ",
        'transliteration':
            "Yā ayyuhal-insānu innaka kādiḥun ilā rabbika kadḥan famulāqīh(i).",
        'translation':
            "Wahai manusia, sesungguhnya engkau telah bekerja keras menuju (pertemuan dengan) Tuhanmu, maka engkau pasti akan menemui-Nya.",
      },
      {
        'no': '7',
        'arabic': "فَاَمَّا مَنْ اُوْتِيَ كِتٰبَهٗ بِيَمِيْنِهٖۙ",
        'transliteration': "Fa ammā man ūtiya kitābahū biyamīnih(ī),",
        'translation':
            "Adapun orang yang catatan amalnya diberikan dari sebelah kanannya,",
      },
      {
        'no': '8',
        'arabic': "فَسَوْفَ يُحَاسَبُ حِسَابًا يَّسِيْرًاۙ",
        'transliteration': "fasaufa yuḥāsabu ḥisābay-yasīrā(n),",
        'translation': "dia akan diperiksa dengan pemeriksaan yang mudah",
      },
      {
        'no': '9',
        'arabic': "وَّيَنْقَلِبُ اِلٰٓى اَهْلِهٖ مَسْرُوْرًاۗ",
        'transliteration': "wa yanqalibu ilā ahlihī masrūrā(n).",
        'translation':
            "dan dia akan kembali kepada keluarganya (yang sama-sama beriman) dengan gembira.",
      },
      {
        'no': '10',
        'arabic': "وَاَمَّا مَنْ اُوْتِيَ كِتٰبَهٗ وَرَاۤءَ ظَهْرِهٖۙ",
        'transliteration': "Wa ammā man ūtiya kitābahū warā'a ẓahrih(ī),",
        'translation':
            "Adapun orang yang catatannya diberikan dari belakang punggungnya,",
      },
      {
        'no': '11',
        'arabic': "فَسَوْفَ يَدْعُوْا ثُبُوْرًاۙ",
        'transliteration': "fasaufa yad‘ū ṡubūrā(n),",
        'translation': "dia akan berteriak, \"Celakalah aku!\"",
      },
      {
        'no': '12',
        'arabic': "وَّيَصْلٰى سَعِيْرًاۗ",
        'transliteration': "wa yaṣlā sa‘īrā(n).",
        'translation': "Dia akan memasuki (neraka) Sa‘ir (yang menyala-nyala).",
      },
      {
        'no': '13',
        'arabic': "اِنَّهٗ كَانَ فِيْٓ اَهْلِهٖ مَسْرُوْرًاۗ",
        'transliteration': "Innahū kāna fī ahlihī masrūrā(n).",
        'translation':
            "Sesungguhnya dia dahulu (di dunia) bergembira di kalangan keluarganya (yang sama-sama kafir).",
      },
      {
        'no': '14',
        'arabic': "اِنَّهٗ ظَنَّ اَنْ لَّنْ يَّحُوْرَۛ",
        'transliteration': "Innahū ẓanna al-lay yaḥūr(a).",
        'translation':
            "Sesungguhnya dia mengira bahwa dia tidak akan pernah kembali (kepada Tuhannya).",
      },
      {
        'no': '15',
        'arabic': "بَلٰىۛ اِنَّ رَبَّهٗ كَانَ بِهٖ بَصِيْرًاۗ",
        'transliteration': "Balā, inna rabbahū kāna bihī baṣīrā(n).",
        'translation':
            "Tidak demikian! Sesungguhnya Tuhannya selalu melihatnya.",
      },
      {
        'no': '16',
        'arabic': "فَلَآ اُقْسِمُ بِالشَّفَقِۙ",
        'transliteration': "Falā uqsimu bisy-syafaq(i).",
        'translation': "Aku bersumpah demi cahaya merah pada waktu senja,",
      },
      {
        'no': '17',
        'arabic': "وَاللَّيْلِ وَمَا وَسَقَۙ",
        'transliteration': "wal-laili wa mā wasaq(a),",
        'translation': "demi malam dan apa yang diselubunginya,",
      },
      {
        'no': '18',
        'arabic': "وَالْقَمَرِ اِذَا اتَّسَقَۙ",
        'transliteration': "wal-qamari iżattasaq(a),",
        'translation': "dan demi bulan apabila telah purnama.",
      },
      {
        'no': '19',
        'arabic': "لَتَرْكَبُنَّ طَبَقًا عَنْ طَبَقٍۗ",
        'transliteration': "Latar-kabunna ṭabaqan ‘an ṭabaq(in).",
        'translation':
            "Sungguh, kamu akan melalui tingkat demi tingkat (dalam kehidupan).",
      },
      {
        'no': '20',
        'arabic': "فَمَا لَهُمْ لَا يُؤْمِنُوْنَۙ",
        'transliteration': "Famā lahum lā yu'minūn(a).",
        'translation': "Maka, mengapa mereka tidak mau beriman?",
      },
      {
        'no': '21',
        'arabic': "وَاِذَا قُرِئَ عَلَيْهِمُ الْقُرْاٰنُ لَا يَسْجُدُوْنَ ۗ ۩",
        'transliteration': "Wa iżā quri'a ‘alaihimul-qur'ānu lā yasjudūn(a).",
        'translation':
            "Apabila Al-Qur’an dibacakan kepada mereka, mereka tidak (mau) bersujud,",
      },
      {
        'no': '22',
        'arabic': "بَلِ الَّذِيْنَ كَفَرُوْا يُكَذِّبُوْنَۖ",
        'transliteration': "Balil-lażīna kafarū yukażżibūn(a).",
        'translation': "Bahkan orang-orang yang kufur itu mendustakan(nya).",
      },
      {
        'no': '23',
        'arabic': "وَاللّٰهُ اَعْلَمُ بِمَا يُوْعُوْنَۖ",
        'transliteration': "Wallāhu a‘lamu bimā yū‘ūn(a).",
        'translation':
            "Allah lebih mengetahui apa yang mereka sembunyikan (dalam hati mereka).",
      },
      {
        'no': '24',
        'arabic': "فَبَشِّرْهُمْ بِعَذَابٍ اَلِيْمٍۙ",
        'transliteration': "Fabasysyirhum bi‘ażābin alīm(in),",
        'translation':
            "Maka, berilah mereka kabar ‘gembira’ dengan azab yang pedih,",
      },
      {
        'no': '25',
        'arabic':
            "اِلَّا الَّذِيْنَ اٰمَنُوْا وَعَمِلُوا الصّٰلِحٰتِ لَهُمْ اَجْرٌ غَيْرُ مَمْنُوْنٍࣖ",
        'transliteration':
            "illal-lażīna āmanū wa ‘amiluṣ-ṣāliḥāti lahum ajrun gairu mamnūn(i).",
        'translation':
            "Kecuali orang-orang yang beriman dan mengerjakan kebajikan. Bagi merekalah pahala yang tidak putus-putus.",
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
          widget.surahData['name'] ?? 'Al-Insyiqaq',
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
                "${widget.surahData['verses'] ?? 25} Ayat",
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
