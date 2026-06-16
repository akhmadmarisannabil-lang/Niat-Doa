import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';

import '../services/quran_api_service.dart';

class AlGhasyiyahPage extends StatefulWidget {
  final Map<String, dynamic> surahData;

  const AlGhasyiyahPage({super.key, required this.surahData});

  @override
  State<AlGhasyiyahPage> createState() => _AlGhasyiyahPageState();
}

class _AlGhasyiyahPageState extends State<AlGhasyiyahPage> {
  final AudioPlayer player = AudioPlayer();
  bool isPlayingFullSurah = false;

  final ScrollController _scrollController = ScrollController();
  final List<GlobalKey> ayatKeys = List.generate(26, (_) => GlobalKey());

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
    final data = await QuranApiService.getSurat(88);

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
        'arabic': "هَلْ اَتٰىكَ حَدِيْثُ الْغَاشِيَةِۗ",
        'transliteration': "Hal atāka ḥadīṡul-gāsyiyah(ti).",
        'translation':
            "Sudahkah sampai kepadamu berita tentang al-Gāsyiyah (hari Kiamat yang menutupi kesadaran manusia dengan kedahsyatannya)?",
      },
      {
        'no': '2',
        'arabic': "وُجُوْهٌ يَّوْمَىِٕذٍ خَاشِعَةٌۙ",
        'transliteration': "Wujūhuy yauma'iżin khāsyiyah(tun).",
        'translation': "Pada hari itu banyak wajah yang tertunduk hina",
      },
      {
        'no': '3',
        'arabic': "عَامِلَةٌ نَّاصِبَةٌۙ",
        'transliteration': "‘Āmilatun nāṣibah(tun).",
        'translation':
            "(karena) berusaha keras (menghindari azab neraka) lagi kepayahan (karena dibelenggu).",
      },
      {
        'no': '4',
        'arabic': "تَصْلٰى نَارًا حَامِيَةًۙ",
        'transliteration': "Taṣlā nāran ḥāmiyah(tan).",
        'translation': "Mereka memasuki api (neraka) yang sangat panas.",
      },
      {
        'no': '5',
        'arabic': "تُسْقٰى مِنْ عَيْنٍ اٰنِيَةٍۗ",
        'transliteration': "Tusqā min ‘ainin āniyah(tin).",
        'translation':
            "(Mereka) diberi minum dari sumber mata air yang sangat panas.",
      },
      {
        'no': '6',
        'arabic': "لَيْسَ لَهُمْ طَعَامٌ اِلَّا مِنْ ضَرِيْعٍۙ",
        'transliteration': "Laisa lahum ṭa‘āmun illā min ḍarī‘(in).",
        'translation':
            "Tidak ada makanan bagi mereka selain dari pohon yang berduri,",
      },
      {
        'no': '7',
        'arabic': "لَّايُسْمِنُ وَلَا يُغْنِيْ مِنْ جُوْعٍۗ",
        'transliteration': "Lā yusminu wa lā yugnī min jū‘(in).",
        'translation':
            "yang tidak menggemukkan dan tidak pula menghilangkan lapar.",
      },
      {
        'no': '8',
        'arabic': "وُجُوْهٌ يَّوْمَىِٕذٍ نَّاعِمَةٌۙ",
        'transliteration': "Wujūhuy yauma'iżin nā‘imah(tun).",
        'translation': "Pada hari itu banyak (pula) wajah yang berseri-seri,",
      },
      {
        'no': '9',
        'arabic': "لِّسَعْيِهَا رَاضِيَةٌۙ",
        'transliteration': "Lisa‘yihā rāḍiyah(tun).",
        'translation': "merasa puas karena usahanya.",
      },
      {
        'no': '10',
        'arabic': "فِيْ جَنَّةٍ عَالِيَةٍۙ",
        'transliteration': "Fī jannatin ‘āliyah(tin).",
        'translation': "(Mereka) dalam surga yang tinggi.",
      },
      {
        'no': '11',
        'arabic': "لَّا تَسْمَعُ فِيْهَا لَاغِيَةًۗ",
        'transliteration': "Lā tasma‘u fīhā lāgiyah(tan).",
        'translation':
            "Di sana kamu tidak mendengar (perkataan) yang tidak berguna.",
      },
      {
        'no': '12',
        'arabic': "فِيْهَا عَيْنٌ جَارِيَةٌۗ",
        'transliteration': "Fīhā ‘ainun jāriyah(tun).",
        'translation': "Di sana ada mata air yang mengalir.",
      },
      {
        'no': '13',
        'arabic': "فِيْهَا سُرُرٌ مَّرْفُوْعَةٌۙ",
        'transliteration': "Fīhā sururum marfū‘ah(tun).",
        'translation': "Di sana ada (pula) dipan-dipan yang ditinggikan,",
      },
      {
        'no': '14',
        'arabic': "وَاكْوَابٌ مَّوْضُوْعَةٌۙ",
        'transliteration': "Wa akwābum mauḍū‘ah(tun).",
        'translation': "gelas-gelas yang tersedia (di dekatnya),",
      },
      {
        'no': '15',
        'arabic': "وَنَمَارِقُ مَصْفُوْفَةٌۙ",
        'transliteration': "Wa namāriqu maṣfūfah(tun).",
        'translation': "bantal-bantal sandaran yang tersusun,",
      },
      {
        'no': '16',
        'arabic': "وَزَرَابِيُّ مَبْثُوْثَةٌۗ",
        'transliteration': "Wa zarābiyyu mabṡūṡah(tun).",
        'translation': "dan permadani-permadani yang terhampar.",
      },
      {
        'no': '17',
        'arabic': "اَفَلَا يَنْظُرُوْنَ اِلَى الْاِبِلِ كَيْفَ خُلِقَتْۗ",
        'transliteration': "Afalā yanẓurūna ilal-ibili kaifa khuliqat.",
        'translation':
            "Tidakkah mereka memperhatikan unta, bagaimana ia diciptakan?",
      },
      {
        'no': '18',
        'arabic': "وَاِلَى السَّمَاۤءِ كَيْفَ رُفِعَتْۗ",
        'transliteration': "Wa ilas-samā'i kaifa rufi‘at.",
        'translation': "Bagaimana langit ditinggikan?",
      },
      {
        'no': '19',
        'arabic': "وَاِلَى الْجِبَالِ كَيْفَ نُصِبَتْۗ",
        'transliteration': "Wa ilal-jibāli kaifa nuṣibat.",
        'translation': "Bagaimana gunung-gunung ditegakkan?",
      },
      {
        'no': '20',
        'arabic': "وَاِلَى الْاَرْضِ كَيْفَ سُطِحَتْۗ",
        'transliteration': "Wa ilal-arḍi kaifa suṭiḥat.",
        'translation': "Bagaimana pula bumi dihamparkan?",
      },
      {
        'no': '21',
        'arabic': "فَذَكِّرْۗ اِنَّمَآ اَنْتَ مُذَكِّرٌۗ",
        'transliteration': "Fażakkir, innamā anta mużakkir(un).",
        'translation':
            "Maka, berilah peringatan karena sesungguhnya engkau (Nabi Muhammad) hanyalah pemberi peringatan.",
      },
      {
        'no': '22',
        'arabic': "لَّسْتَ عَلَيْهِمْ بِمُصَيْطِرٍۙ",
        'transliteration': "Lasta ‘alaihim bimuṣaiṭir(in).",
        'translation': "Engkau bukanlah orang yang berkuasa atas mereka.",
      },
      {
        'no': '23',
        'arabic': "اِلَّا مَنْ تَوَلّٰى وَكَفَرَۙ",
        'transliteration': "Illā man tawallā wa kafar(a).",
        'translation': "Akan tetapi, orang yang berpaling dan kufur,",
      },
      {
        'no': '24',
        'arabic': "فَيُعَذِّبُهُ اللّٰهُ الْعَذَابَ الْاَكْبَرَۗ",
        'transliteration': "Fayu‘ażżibuhullāhul-‘ażābal-akbar(a).",
        'translation': "Allah akan mengazabnya dengan azab yang paling besar.",
      },
      {
        'no': '25',
        'arabic': "اِنَّ اِلَيْنَآ اِيَابَهُمْ",
        'transliteration': "Inna ilainā iyābahum.",
        'translation': "Sesungguhnya kepada Kamilah mereka kembali.",
      },
      {
        'no': '26',
        'arabic': "ثُمَّ اِنَّ عَلَيْنَا حِسَابَهُمْࣖ",
        'transliteration': "Ṡumma inna ‘alainā ḥisābahum.",
        'translation':
            "Kemudian, sesungguhnya Kamilah yang berhak melakukan hisab (perhitungan) atas mereka.",
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
          widget.surahData['name'] ?? 'Al-Ghasyiyah',
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
                "${widget.surahData['verses'] ?? 26} Ayat",
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
