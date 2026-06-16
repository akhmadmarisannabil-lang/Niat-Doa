import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';

import '../services/quran_api_service.dart';

class AlFajrPage extends StatefulWidget {
  final Map<String, dynamic> surahData;

  const AlFajrPage({super.key, required this.surahData});

  @override
  State<AlFajrPage> createState() => _AlFajrPageState();
}

class _AlFajrPageState extends State<AlFajrPage> {
  final AudioPlayer player = AudioPlayer();
  bool isPlayingFullSurah = false;

  final ScrollController _scrollController = ScrollController();
  final List<GlobalKey> ayatKeys = List.generate(30, (_) => GlobalKey());

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
    final data = await QuranApiService.getSurat(89);

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
        : Colors.teal.withValues(alpha: 0.2);
    final Color arabicTextColor = isLightMode
        ? Colors.black
        : Colors.white.withValues(alpha: 0.9);

    final List<Map<String, dynamic>> ayatList = [
      {
        'no': '1',
        'arabic': "وَالْفَجْرِۙ",
        'transliteration': "Wal-fajr(i).",
        'translation': "Demi waktu fajar,",
      },
      {
        'no': '2',
        'arabic': "وَلَيَالٍ عَشْرٍۙ",
        'transliteration': "Wa layālin ‘asyr(in).",
        'translation': "demi malam yang sepuluh,",
      },
      {
        'no': '3',
        'arabic': "وَالشَّفْعِ وَالْوَتْرِۙ",
        'transliteration': "Wasy-syaf‘i wal-watr(i).",
        'translation': "demi yang genap dan yang ganjil,",
      },
      {
        'no': '4',
        'arabic': "وَاللَّيْلِ اِذَا يَسْرِۚ",
        'transliteration': "Wal-laili iżā yasr(i).",
        'translation': "dan demi malam apabila berlalu.",
      },
      {
        'no': '5',
        'arabic': "هَلْ فِيْ ذٰلِكَ قَسَمٌ لِّذِيْ حِجْرٍۗ",
        'transliteration': "Hal fī żālika qasamul liżī ḥijr(in).",
        'translation':
            "Apakah pada yang demikian itu terdapat sumpah (yang dapat diterima) oleh (orang) yang berakal?",
      },
      {
        'no': '6',
        'arabic': "اَلَمْ تَرَ كَيْفَ فَعَلَ رَبُّكَ بِعَادٍۖ",
        'transliteration': "Alam tara kaifa fa‘ala rabbuka bi‘ād(in).",
        'translation':
            "Tidakkah engkau (Nabi Muhammad) memperhatikan bagaimana Tuhanmu berbuat terhadap (kaum) ‘Ad,",
      },
      {
        'no': '7',
        'arabic': "اِرَمَ ذَاتِ الْعِمَادِۖ",
        'transliteration': "Irama żātil-‘imād(i).",
        'translation':
            "(yaitu) penduduk Iram (ibu kota kaum ‘Ad) yang mempunyai bangunan-bangunan yang tinggi,",
      },
      {
        'no': '8',
        'arabic': "الَّتِيْ لَمْ يُخْلَقْ مِثْلُهَا فِي الْبِلَادِۖ",
        'transliteration': "Allatī lam yukhlaq miṡluhā fil-bilād(i).",
        'translation':
            "yang sebelumnya tidak pernah dibangun (suatu kota pun) seperti itu di negeri-negeri (lain)?",
      },
      {
        'no': '9',
        'arabic': "وَثَمُوْدَ الَّذِيْنَ جَابُوا الصَّخْرَ بِالْوَادِۖ",
        'transliteration': "Wa ṡamūdal-lażīna jābuṣ-ṣakhra bil-wād(i).",
        'translation':
            "(Tidakkah engkau perhatikan pula kaum) Samud yang memotong batu-batu besar di lembah",
      },
      {
        'no': '10',
        'arabic': "وَفِرْعَوْنَ ذِى الْاَوْتَادِۖ",
        'transliteration': "Wa fir‘auna żil-autād(i).",
        'translation':
            "dan Fir‘aun yang mempunyai pasak-pasak (bangunan yang besar)",
      },
      {
        'no': '11',
        'arabic': "الَّذِيْنَ طَغَوْا فِي الْبِلَادِۖ",
        'transliteration': "Allatīna ṭagau fil-bilād(i).",
        'translation': "yang berbuat sewenang-wenang dalam negeri,",
      },
      {
        'no': '12',
        'arabic': "فَاَكْثَرُوْا فِيْهَا الْفَسَادَۖ",
        'transliteration': "Fa akṡarū fīhal-fasād(a).",
        'translation':
            "lalu banyak berbuat kerusakan di dalamnya (negeri itu),",
      },
      {
        'no': '13',
        'arabic': "فَصَبَّ عَلَيْهِمْ رَبُّكَ سَوْطَ عَذَابٍۖ",
        'transliteration': "Fa ṣabba ‘alaihim rabbuka sauṭa ‘ażāb(in).",
        'translation':
            "maka Tuhanmu menimpakan cemeti azab (yang dahsyat) kepada mereka?",
      },
      {
        'no': '14',
        'arabic': "اِنَّ رَبَّكَ لَبِالْمِرْصَادِۗ",
        'transliteration': "Inna rabbaka labil-mirṣād(i).",
        'translation': "Sesungguhnya Tuhanmu benar-benar mengawasi.",
      },
      {
        'no': '15',
        'arabic':
            "فَاَمَّا الْاِنْسَانُ اِذَا مَا ابْتَلٰىهُ رَبُّهٗ فَاَكْرَمَهٗ وَنَعَّمَهٗۙ فَيَقُوْلُ رَبِّيْٓ اَكْرَمَنِۗ",
        'transliteration':
            "Fa ammal-insānu iżā mabtalāhu rabbuhū fa akramahū wa na‘‘amahū fayaqūlu rabbī akraman(i).",
        'translation':
            "Adapun manusia, apabila Tuhan mengujinya lalu memuliakannya dan memberinya kenikmatan, berkatalah dia, “Tuhanku telah memuliakanku.”",
      },
      {
        'no': '16',
        'arabic':
            "وَاَمَّآ اِذَا مَا ابْتَلٰىهُ فَقَدَرَ عَلَيْهِ رِزْقَهٗ ۙفَيَقُوْلُ رَبِّيْٓ اَهَانَنِۚ",
        'transliteration':
            "Wa ammā iżā mabtalāhu faqadara ‘alaihi rizqahū fayaqūlu rabbī ahānan(i).",
        'translation':
            "Sementara itu, apabila Dia mengujinya lalu membatasi rezekinya, berkatalah dia, “Tuhanku telah menghinaku.”",
      },
      {
        'no': '17',
        'arabic': "كَلَّا بَلْ لَّا تُكْرِمُوْنَ الْيَتِيْمَۙ",
        'transliteration': "Kallā bal lā tukrimūnal-yatīm(a).",
        'translation':
            "Sekali-kali tidak! Sebaliknya, kamu tidak memuliakan anak yatim,",
      },
      {
        'no': '18',
        'arabic': "وَلَا تَحٰۤضُّوْنَ عَلٰى طَعَامِ الْمِسْكِيْنِۙ",
        'transliteration': "Wa lā taḥāḍḍūna ‘alā ṭa‘āmil-miskīn(i).",
        'translation': "tidak saling mengajak memberi makan orang miskin,",
      },
      {
        'no': '19',
        'arabic': "وَتَاْكُلُوْنَ التُّرَاثَ اَكْلًا لَّمًّاۙ",
        'transliteration': "Wa ta'kulūnat-turāṡa aklal lammā(n).",
        'translation':
            "memakan harta warisan dengan cara mencampurbaurkan (yang halal dan yang haram),",
      },
      {
        'no': '20',
        'arabic': "وَتُحِبُّوْنَ الْمَالَ حُبًّا جَمًّاۗ",
        'transliteration': "Wa tuḥibbūnal-māla ḥubban jammā(n).",
        'translation': "dan mencintai harta dengan kecintaan yang berlebihan.",
      },
      {
        'no': '21',
        'arabic': "كَلَّآ اِذَا دُكَّتِ الْاَرْضُ دَكًّا دَكًّاۙ",
        'transliteration': "Kallā iżā dukkatil-arḍu dakkan dakkā(n).",
        'translation':
            "Jangan sekali-kali begitu! Apabila bumi diguncangkan berturut-turut (berbenturan),",
      },
      {
        'no': '22',
        'arabic': "وَجَاۤءَ رَبُّكَ وَالْمَلَكُ صَفًّا صَفًّاۚ",
        'transliteration': "Wa jā'a rabbuka wal-malaku ṣaffan ṣaffā(n).",
        'translation':
            "Tuhanmu datang, begitu pula para malaikat (yang datang) berbaris-baris,",
      },
      {
        'no': '23',
        'arabic':
            "وَجِيْۤءَ يَوْمَىِٕذٍۢ بِجَهَنَّمَۙ يَوْمَىِٕذٍ يَّتَذَكَّرُ الْاِنْسَانُ وَاَنّٰى لَهُ الذِّكْرٰىۗ",
        'transliteration':
            "Wa jī'a yauma'iżim bijahannama yauma'iżiy yatażakkarul-insānu wa annā lahuz-żikrā.",
        'translation':
            "dan pada hari itu (neraka) Jahanam didatangkan, sadarlah manusia pada hari itu juga. Akan tetapi, bagaimana bisa kesadaran itu bermanfaat baginya?",
      },
      {
        'no': '24',
        'arabic': "يَقُوْلُ يٰلَيْتَنِيْ قَدَّمْتُ لِحَيَاتِيْۚ",
        'transliteration': "Yaqūlu yā laitanī qaddamtu liḥayātī.",
        'translation':
            "Dia berkata, “Oh, seandainya dahulu aku mengerjakan (kebajikan) untuk hidupku ini!”",
      },
      {
        'no': '25',
        'arabic': "فَيَوْمَىِٕذٍ لَّا يُعَذِّبُ عَذَابَهٗٓ اَحَدٌۙ",
        'transliteration': "Fa yauma'iżil lā yu‘ażżibu ‘ażābahū aḥad(un).",
        'translation':
            "Pada hari itu tidak ada seorang pun yang mampu mengazab (seadil) azab-Nya.",
      },
      {
        'no': '26',
        'arabic': "وَلَا يُوْثِقُ وَثَاقَهٗٓ اَحَدٌۗ",
        'transliteration': "Wa lā yūṡiqu waṡāqahū aḥad(un).",
        'translation':
            "Tidak ada seorang pun juga yang mampu mengikat (sekuat) ikatan-Nya.",
      },
      {
        'no': '27',
        'arabic': "يٰٓاَيَّتُهَا النَّفْسُ الْمُطْمَئِنَّةُۖ",
        'transliteration': "Yā ayyatuhan-nafsul-muṭma'innah(tu).",
        'translation': "Wahai jiwa yang tenang,",
      },
      {
        'no': '28',
        'arabic': "ارْجِعِيْٓ اِلٰى رَبِّكِ رَاضِيَةً مَّرْضِيَّةًۚ",
        'transliteration': "Irji‘ī ilā rabbiki rāḍiyatam marḍiyyah(tan).",
        'translation': "kembalilah kepada Tuhanmu dengan rida dan diridai.",
      },
      {
        'no': '29',
        'arabic': "فَادْخُلِيْ فِيْ عِبٰدِيْۙ",
        'transliteration': "Fadkhulī fī ‘ibādī.",
        'translation': "Lalu, masuklah ke dalam golongan hamba-hamba-Ku",
      },
      {
        'no': '30',
        'arabic': "وَادْخُلِيْ جَنَّتِيْࣖ",
        'transliteration': "Wadkhulī jannatī.",
        'translation': "dan masuklah ke dalam surga-Ku!",
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
          widget.surahData['name'] ?? 'Al-Fajr',
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
                "${widget.surahData['verses'] ?? 30} Ayat",
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
                            ? Colors.amber.withValues(alpha: 0.25)
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
                              : Colors.teal.withValues(alpha: 0.15),
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
