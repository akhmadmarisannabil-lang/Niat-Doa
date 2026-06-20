import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';

import '../services/quran_api_service.dart';

class AtTariqPage extends StatefulWidget {
  final Map<String, dynamic> surahData;

  const AtTariqPage({super.key, required this.surahData});

  @override
  State<AtTariqPage> createState() => _AtTariqPageState();
}

class _AtTariqPageState extends State<AtTariqPage> {
  final AudioPlayer player = AudioPlayer();
  bool isPlayingFullSurah = false;

  final ScrollController _scrollController = ScrollController();
  final List<GlobalKey> ayatKeys = List.generate(17, (_) => GlobalKey());

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
    final data = await QuranApiService.getSurat(86);

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

      debugPrint("Ayat ${i + 1}");
      debugPrint(url);
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
        'arabic': "وَالسَّمَاۤءِ وَالطَّارِقِۙ",
        'transliteration': "Was-samā'i waṭ-ṭāriq(i).",
        'translation': "Demi langit dan yang datang pada malam hari.",
      },
      {
        'no': '2',
        'arabic': "وَمَآ اَدْرٰىكَ مَا الطَّارِقُۙ",
        'transliteration': "Wa mā adrāka maṭ-ṭāriq(u).",
        'translation': "Tahukah kamu apakah yang datang pada malam hari itu?",
      },
      {
        'no': '3',
        'arabic': "النَّجْمُ الثَّاقِبُۙ",
        'transliteration': "An-najmus-ṡāqib(u).",
        'translation': "(Itulah) bintang yang bersinar tajam.",
      },
      {
        'no': '4',
        'arabic': "اِنْ كُلُّ نَفْسٍ لَّمَّا عَلَيْهَا حَافِظٌۗ",
        'transliteration': "In kullu nafsil lammā ‘alihā ḥāfiẓ(un).",
        'translation': "Setiap orang pasti ada penjaganya.",
      },
      {
        'no': '5',
        'arabic': "فَلْيَنْظُرِ الْاِنْسَانُ مِمَّ خُلِقَۗ",
        'transliteration': "Falyanẓuril-insānu mimma khuliq(a).",
        'translation':
            "Hendaklah manusia memperhatikan dari apa dia diciptakan.",
      },
      {
        'no': '6',
        'arabic': "خُلِقَ مِنْ مَّۤاءٍ دَافِقٍۙ",
        'transliteration': "Khuliqa mim mā'in dāfiq(in),",
        'translation': "Dia diciptakan dari air (mani) yang memancar,",
      },
      {
        'no': '7',
        'arabic': "يَّخْرُجُ مِنْۢ بَيْنِ الصُّلْبِ وَالتَّرَاۤىِٕبِۗ",
        'transliteration': "yakhruju mim bainiṣ-ṣulbi wat-tarā'ib(i).",
        'translation':
            "yang keluar dari antara tulang sulbi (punggung) dan tulang dada.",
      },
      {
        'no': '8',
        'arabic': "اِنَّهٗ عَلٰى رَجْعِهٖ لَقَادِرٌۗ",
        'transliteration': "Innahū ‘alā raj‘ihī laqādir(un).",
        'translation':
            "Sesungguhnya Dia (Allah) benar-benar kuasa untuk mengembalikannya (hidup setelah mati)",
      },
      {
        'no': '9',
        'arabic': "يَوْمَ تُبْلَى السَّرَاۤىِٕرُۙ",
        'transliteration': "Yauma tublas-sarā'ir(u),",
        'translation': "pada hari ditampakkan segala rahasia.",
      },
      {
        'no': '10',
        'arabic': "فَمَا لَهٗ مِنْ قُوَّةٍ وَّلَا نَاصِرٍۗ",
        'transliteration': "Famā lahū min quwwatiw wa la nāṣir(in).",
        'translation':
            "Maka, baginya (manusia) tidak ada lagi kekuatan dan tidak (pula) ada penolong.",
      },
      {
        'no': '11',
        'arabic': "وَالسَّمَاۤءِ ذَاتِ الرَّجْعِۙ",
        'transliteration': "Was-samā'i żātir-raj‘(i),",
        'translation': "Demi langit yang mengandung hujan",
      },
      {
        'no': '12',
        'arabic': "وَالْاَرْضِ ذَاتِ الصَّدْعِۙ",
        'transliteration': "wal-arḍi żātiṣ-ṣad‘(i),",
        'translation':
            "dan bumi yang memiliki rekahan (tempat tumbuhnya pepohonan),",
      },
      {
        'no': '13',
        'arabic': "اِنَّهٗ لَقَوْلٌ فَصْلٌۙ",
        'transliteration': "Innahū laqaulun faṣl(un),",
        'translation':
            "sesungguhnya (Al-Qur’an) itu benar-benar firman pemisah (antara yang hak dan yang batil)",
      },
      {
        'no': '14',
        'arabic': "وَمَا هُوَ بِالْهَزْلِۗ",
        'transliteration': "wa mā huwa bil-hazl(i).",
        'translation':
            "dan ia (Al-Qur’an) sama sekali bukan perkataan senda gurau.",
      },
      {
        'no': '15',
        'arabic': "اِنَّهُمْ يَكِيْدُوْنَ كَيْدًاۙ",
        'transliteration': "Innahum yakīdūna kaidā(n),",
        'translation': "Sesungguhnya mereka (orang kafir) melakukan tipu daya.",
      },
      {
        'no': '16',
        'arabic': "وَاَكِيْدُ كَيْدًاۚ",
        'transliteration': "Wa akīdu kaidā(n).",
        'translation': "Aku pun membalasnya dengan tipu daya.",
      },
      {
        'no': '17',
        'arabic': "فَمَهِّلِ الْكٰفِرِيْنَ اَمْهِلْهُمْ رُوَيْدًاࣖ",
        'transliteration': "Famahhilil-kāfirīna amhilhum ruwaidā(n).",
        'translation':
            "Maka, tangguhkanlah orang-orang kafir itu. Biarkanlah mereka sejenak (bersenang-senang).",
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
          widget.surahData['name'] ?? 'At-Tariq',
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
                "${widget.surahData['verses'] ?? 17} Ayat",
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
                  initialValue: selectedQori,
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
