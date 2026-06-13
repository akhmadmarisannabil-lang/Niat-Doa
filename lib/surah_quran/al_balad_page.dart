import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';

import '../services/quran_api_service.dart';

class AlBaladPage extends StatefulWidget {
  final Map<String, dynamic> surahData;

  const AlBaladPage({super.key, required this.surahData});

  @override
  State<AlBaladPage> createState() => _AlBaladPageState();
}

class _AlBaladPageState extends State<AlBaladPage> {
  final AudioPlayer player = AudioPlayer();
  bool isPlayingFullSurah = false;

  final ScrollController _scrollController = ScrollController();
  final List<GlobalKey> ayatKeys = List.generate(20, (_) => GlobalKey());

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
    final data = await QuranApiService.getSurat(90);

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
        'arabic': "لَآ اُقْسِمُ بِهٰذَا الْبَلَدِۙ",
        'transliteration': "Lā uqsimu bihāżal-balad(i).",
        'translation': "Aku bersumpah demi negeri ini (Makah),",
      },
      {
        'no': '2',
        'arabic': "وَاَنْتَ حِلٌّۢ بِهٰذَا الْبَلَدِۙ",
        'transliteration': "Wa anta ḥillum bihāżal-balad(i).",
        'translation':
            "sedangkan engkau (Nabi Muhammad) bertempat tinggal di negeri (Makah) ini,",
      },
      {
        'no': '3',
        'arabic': "وَوَالِدٍ وَّمَا وَلَدَۙ",
        'transliteration': "Wa wālidiw wa mā walad(a).",
        'translation': "(Aku juga bersumpah) demi bapak dan anaknya,",
      },
      {
        'no': '4',
        'arabic': "لَقَدْ خَلَقْنَا الْاِنْسَانَ فِيْ كَبَدٍۗ",
        'transliteration': "Laqad khalaqnal-insāna fī kabad(in).",
        'translation':
            "sungguh, Kami benar-benar telah menciptakan manusia dalam keadaan susah payah.",
      },
      {
        'no': '5',
        'arabic': "اَيَحْسَبُ اَنْ لَّنْ يَّقْدِرَ عَلَيْهِ اَحَدٌۘ",
        'transliteration': "Ayaḥsabu al lay yaqdira ‘alaihi aḥad(un).",
        'translation':
            "Apakah dia (manusia) itu mengira bahwa tidak ada sesuatu pun yang berkuasa atasnya?",
      },
      {
        'no': '6',
        'arabic': "يَقُوْلُ اَهْلَكْتُ مَالًا لُّبَدًاۗ",
        'transliteration': "Yaqūlu ahlaktu mālal lubadā(n).",
        'translation':
            "Dia mengatakan, “Aku telah menghabiskan harta yang banyak.”",
      },
      {
        'no': '7',
        'arabic': "اَيَحْسَبُ اَنْ لَّمْ يَرَهٗٓ اَحَدٌۗ",
        'transliteration': "Ayaḥsabu al lam yarahū aḥad(un).",
        'translation':
            "Apakah dia mengira bahwa tidak ada seorang pun yang melihatnya?",
      },
      {
        'no': '8',
        'arabic': "اَلَمْ نَجْعَلْ لَّهٗ عَيْنَيْنِۙ",
        'transliteration': "Alam naj‘al lahū ‘ainain(i).",
        'translation': "Bukankah Kami telah menjadikan untuknya sepasang mata,",
      },
      {
        'no': '9',
        'arabic': "وَلِسَانًا وَّشَفَتَيْنِۙ",
        'transliteration': "Wa lisānaw wa syafatain(i).",
        'translation': "lidah, dan sepasang bibir,",
      },
      {
        'no': '10',
        'arabic': "وَهَدَيْنٰهُ النَّجْدَيْنِۙ",
        'transliteration': "Wa hadaināhun-najdain(i).",
        'translation':
            "serta Kami telah menunjukkan kepadanya dua jalan (kebajikan dan kejahatan)?",
      },
      {
        'no': '11',
        'arabic': "فَلَا اقْتَحَمَ الْعَقَبَةَۖ",
        'transliteration': "Falaqtahamal-‘aqabah(ta).",
        'translation':
            "Maka, tidakkah sebaiknya dia menempuh jalan (kebajikan) yang mendaki dan sukar?",
      },
      {
        'no': '12',
        'arabic': "وَمَآ اَدْرٰىكَ مَا الْعَقَبَةُۗ",
        'transliteration': "Wa mā adrāka mal-‘aqabah(tu).",
        'translation': "Tahukah kamu apakah jalan yang mendaki dan sukar itu?",
      },
      {
        'no': '13',
        'arabic': "فَكُّ رَقَبَةٍۙ",
        'transliteration': "Fakku raqabah(tin).",
        'translation': "(Itulah upaya) melepaskan perbudakan",
      },
      {
        'no': '14',
        'arabic': "اَوْ اِطْعٰمٌ فِيْ يَوْمٍ ذِيْ مَسْغَبَةٍۙ",
        'transliteration': "Au iṭ‘āmun fī yaumin żī masgabah(tin).",
        'translation': "atau memberi makan pada hari terjadi kelaparan",
      },
      {
        'no': '15',
        'arabic': "يَّتِيْمًا ذَا مَقْرَبَةٍۙ",
        'transliteration': "Yatīman żā maqrabah(tin).",
        'translation': "(kepada) anak yatim yang memiliki hubungan kekerabatan",
      },
      {
        'no': '16',
        'arabic': "اَوْ مِسْكِيْنًا ذَا مَتْرَبَةٍۗ",
        'transliteration': "Au miskīnan żā matrabah(tin).",
        'translation': "atau orang miskin yang sangat membutuhkan.",
      },
      {
        'no': '17',
        'arabic':
            "ثُمَّ كَانَ مِنَ الَّذِيْنَ اٰمَنُوْا وَتَوَاصَوْا بِالصَّبْرِ وَتَوَاصَوْا بِالْمَرْحَمَةِۗ",
        'transliteration':
            "Ṡumma kāna minal-lażīna āmanū wa tawāṣau biṣ-ṣabri wa tawāṣau bil-marḥamah(ti).",
        'translation':
            "Kemudian, dia juga termasuk orang-orang yang beriman dan saling berpesan untuk bersabar serta saling berpesan untuk berkasih sayang.",
      },
      {
        'no': '18',
        'arabic': "اُولٰۤىِٕكَ اَصْحٰبُ الْمَيْمَنَةِۗ",
        'transliteration': "Ulā'ika aṣ-ḥābul-maimanah(ti).",
        'translation': "Mereka itulah golongan kanan.",
      },
      {
        'no': '19',
        'arabic':
            "وَالَّذِيْنَ كَفَرُوْا بِاٰيٰتِنَا هُمْ اَصْحٰبُ الْمَشْـَٔمَةِۗ",
        'transliteration':
            "Wal-lażīna kafarū bi'āyātinā hum aṣ-ḥābul-masy'amah(ti).",
        'translation':
            "Adapun orang-orang yang kufur pada ayat-ayat Kami, merekalah golongan kiri.",
      },
      {
        'no': '20',
        'arabic': "عَلَيْهِمْ نَارٌ مُّؤْصَدَةٌࣖ",
        'transliteration': "‘Alaihim nārum mu'ṣadah(tun).",
        'translation': "Mereka berada dalam neraka yang ditutup rapat.",
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
          widget.surahData['name'] ?? 'Al-Balad',
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
                "${widget.surahData['verses'] ?? 20} Ayat",
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
