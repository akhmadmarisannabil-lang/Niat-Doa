import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';

import '../services/quran_api_service.dart';

class AbasaPage extends StatefulWidget {
  final Map<String, dynamic> surahData;

  const AbasaPage({super.key, required this.surahData});

  @override
  State<AbasaPage> createState() => _AbasaPageState();
}

class _AbasaPageState extends State<AbasaPage> {
  final AudioPlayer player = AudioPlayer();
  bool isPlayingFullSurah = false;

  final ScrollController _scrollController = ScrollController();
  final List<GlobalKey> ayatKeys = List.generate(80, (_) => GlobalKey());

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
    final data = await QuranApiService.getSurat(80);

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

    // Sampel Data Ayat Resmi 'Abasa
    final List<Map<String, dynamic>> ayatList = [
      {
        'no': '1',
        'arabic': "عَبَسَ وَتَوَلّٰىٓۙ",
        'transliteration': "‘Abasa wa tawallā.",
        'translation': "Dia (Nabi Muhammad) berwajah masam dan berpaling",
      },
      {
        'no': '2',
        'arabic': "اَنْ جَاۤءَهُ الْاَعْمٰىۗ",
        'transliteration': "An jā'ahul-a‘mā.",
        'translation':
            "karena seorang tunanetra (Abdullah bin Ummi Maktum) telah datang kepadanya.",
      },
      {
        'no': '3',
        'arabic': "وَمَا يُدْرِيْكَ لَعَلَّهٗ يَزَّكّٰىٓۙ",
        'transliteration': "Wa mā yudrīka la‘allahū yazzakkā.",
        'translation':
            "Tahukah engkau (Nabi Muhammad) boleh jadi dia ingin menyucikan dirinya (dari dosa)",
      },
      {
        'no': '4',
        'arabic': "اَوْ يَذَّكَّرُ فَتَنْفَعَهُ الذِّكْرٰىۗ",
        'transliteration': "Au yażżakkaru fatanfa‘ahuż-żikrā.",
        'translation':
            "atau dia (ingin) mendapatkan pengajaran sehingga pengajaran itu bermanfaat baginya?",
      },
      {
        'no': '5',
        'arabic': "اَمَّا مَنِ اسْتَغْنٰىۙ",
        'transliteration': "Ammā manistagnā.",
        'translation':
            "Adapun orang yang merasa dirinya serba cukup (para pembesar Quraisy),",
      },
      {
        'no': '6',
        'arabic': "فَاَنْتَ لَهٗ تَصَدّٰىۗ",
        'transliteration': "Fa anta lahū taṣaddā.",
        'translation': "engkau (Nabi Muhammad) memberi perhatian kepadanya.",
      },
      {
        'no': '7',
        'arabic': "وَمَا عَلَيْكَ اَلَّا يَزَّكّٰىۗ",
        'transliteration': "Wa mā ‘alaika allā yazzakkā.",
        'translation':
            "Padahal, tidak ada (cela) atasmu kalau dia tidak menyucikan diri (beriman).",
      },
      {
        'no': '8',
        'arabic': "وَاَمَّا مَنْ جَاۤءَكَ يَسْعٰىۙ",
        'transliteration': "Wa ammā man jā'aka yas‘ā.",
        'translation':
            "Adapun orang yang datang kepadamu dengan bersegera (untuk mendapatkan pengajaran),",
      },
      {
        'no': '9',
        'arabic': "وَهُوَ يَخْشٰىۙ",
        'transliteration': "Wa huwa yakhsyā.",
        'translation': "sedangkan dia takut (kepada Allah),",
      },
      {
        'no': '10',
        'arabic': "فَاَنْتَ عَنْهُ تَلَهّٰىۚ",
        'transliteration': "Fa anta ‘anhu talahhā.",
        'translation': "malah engkau (Nabi Muhammad) abaikan.",
      },
      {
        'no': '11',
        'arabic': "كَلَّآ اِنَّهَا تَذْكِرَةٌ ۚ",
        'transliteration': "Kallā innahā tażkirah(tun).",
        'translation':
            "Sekali-kali jangan (begitu)! Sesungguhnya (ajaran Allah) itu merupakan peringatan.",
      },
      {
        'no': '12',
        'arabic': "فَمَنْ شَاۤءَ ذَكَرَهٗ ۘ",
        'transliteration': "Faman syā'a żakarah(ū).",
        'translation': "Siapa yang menghendaki tentulah akan memperhatikannya",
      },
      {
        'no': '13',
        'arabic': "فِيْ صُحُفٍ مُّكَرَّمَةٍۙ",
        'transliteration': "Fī ṣuḥufim-mukarramah(tin).",
        'translation': "di dalam suhuf yang dimuliakan (di sisi Allah),",
      },
      {
        'no': '14',
        'arabic': "مَّرْفُوْعَةٍ مُّطَهَّرَةٍ ۢ ۙ",
        'transliteration': "Marfū‘atim muṭahharah(tin).",
        'translation': "yang ditinggikan (kedudukannya) lagi disucikan",
      },
      {
        'no': '15',
        'arabic': "بِاَيْدِيْ سَفَرَةٍۙ",
        'transliteration': "Bi'aidī safarah(tin).",
        'translation': "di tangan para utusan (malaikat),",
      },
      {
        'no': '16',
        'arabic': "كِرَامٍۢ بَرَرَةٍۗ",
        'transliteration': "Kirāmim bararah(tin).",
        'translation': "yang mulia lagi berbudi.",
      },
      {
        'no': '17',
        'arabic': "قُتِلَ الْاِنْسَانُ مَآ اَكْفَرَهٗۗ",
        'transliteration': "Qutilal-insānu mā akfarah(ū).",
        'translation': "Celakalah manusia! Alangkah kufur dia!",
      },
      {
        'no': '18',
        'arabic': "مِنْ اَيِّ شَيْءٍ خَلَقَهٗۗ",
        'transliteration': "Min ayyi syai'in khalaqah(ū).",
        'translation': "Dari apakah Dia menciptakannya?",
      },
      {
        'no': '19',
        'arabic': "مِنْ نُّطْفَةٍۗ خَلَقَهٗ فَقَدَّرَهٗۗ",
        'transliteration': "Min nuṭfah(tin), khalaqahū fa qaddarah(ū).",
        'translation':
            "Dia menciptakannya dari setetes mani, lalu menentukan (takdir)-nya.",
      },
      {
        'no': '20',
        'arabic': "ثُمَّ السَّبِيْلَ يَسَّرَهٗۙ",
        'transliteration': "Ṡummas-sabīla yassarah(ū).",
        'translation': "Kemudian, jalannya Dia mudahkan.",
      },
      {
        'no': '21',
        'arabic': "ثُمَّ اَمَاتَهٗ فَاَقْبَرَهٗۙ",
        'transliteration': "Ṡumma amātahū fa aqbarah(ū).",
        'translation': "Kemudian, Dia mematikannya lalu menguburkannya.",
      },
      {
        'no': '22',
        'arabic': "ثُمَّ اِذَا شَاۤءَ اَنْشَرَهٗۗ",
        'transliteration': "Ṡumma iżā syā'a ansyarahū.",
        'translation':
            "Kemudian, jika menghendaki, Dia membangkitkannya kembali.",
      },
      {
        'no': '23',
        'arabic': "كَلَّا لَمَّا يَقْضِ مَآ اَمَرَهٗۗ",
        'transliteration': "Kallā lammā yaqḍi mā amarah(ū).",
        'translation':
            "Sekali-kali jangan (begitu)! Dia (manusia) itu belum melaksanakan apa yang Dia (Allah) perintahkan kepadanya.",
      },
      {
        'no': '24',
        'arabic': "فَلْيَنْظُرِ الْاِنْسَانُ اِلٰى طَعَامِهٖٓۙ",
        'transliteration': "Falyanẓuril-insānu ilā ṭa‘āmihī.",
        'translation': "Maka, hendaklah manusia memperhatikan makanannya.",
      },
      {
        'no': '25',
        'arabic': "اَنَّا صَبَبْنَا الْمَاۤءَ صَبًّاۙ",
        'transliteration': "Annā ṣababnal-mā'a ṣabbā(n).",
        'translation':
            "Sesungguhnya Kami telah mencurahkan air (dari langit) dengan berlimpah.",
      },
      {
        'no': '26',
        'arabic': "ثُمَّ شَقَقْنَا الْاَرْضَ شَقًّاۙ",
        'transliteration': "Ṡumma syaqaqnal-arḍa syaqqā(n).",
        'translation': "Kemudian, Kami belah bumi dengan sebaik-baiknya.",
      },
      {
        'no': '27',
        'arabic': "فَاَنْبَتْنَا فِيْهَا حَبًّاۙ",
        'transliteration': "Fa'ambatnā fīhā ḥabbā(n).",
        'translation': "lalu, Kami tumbuhkan padanya biji-bijian,",
      },
      {
        'no': '28',
        'arabic': "وَعِنَبًا وَّقَضْبًاۙ",
        'transliteration': "Wa ‘inabaw-wa qaḍbā(n).",
        'translation': "anggur, sayur-sayuran,",
      },
      {
        'no': '29',
        'arabic': "وَزَيْتُوْنًا وَّنَخْلًاۙ",
        'transliteration': "Wa zaitūnaw-wanakhlā(n).",
        'translation': "zaitun, pohon kurma,",
      },
      {
        'no': '30',
        'arabic': "وَحَدَاۤئِقَ غُلْبًاۙ",
        'transliteration': "Wa ḥadā'iqa gulbā(n).",
        'translation': "kebun-kebun (yang) rindang,",
      },
      {
        'no': '31',
        'arabic': "وَفَاكِهَةً وَّاَبًّا",
        'transliteration': "Wa fākihataw wa abbā(n).",
        'translation': "buah-buahan, dan rerumputan.",
      },
      {
        'no': '32',
        'arabic': "مَتَاعًا لَّكُمْ وَلِاَنْعَامِكُمْۗ",
        'transliteration': "Matā‘al lakum wa li'an‘āmikum.",
        'translation':
            "(Semua itu disediakan) untuk kesenanganmu dan hewan-hewan ternakmu.",
      },
      {
        'no': '33',
        'arabic': "فَاِذَا جَاۤءَتِ الصَّاۤخَّةُ ۖ",
        'transliteration': "Fa iżā jā'atiṣ-ṣākhkhah(tu).",
        'translation':
            "Maka, apabila datang suara yang memekakkan (dari tiupan sangkakala),",
      },
      {
        'no': '34',
        'arabic': "يَوْمَ يَفِرُّ الْمَرْءُ مِنْ اَخِيْهِۙ",
        'transliteration': "Yauma yafirrul-mar'u min akhīh(i).",
        'translation': "pada hari itu manusia lari dari saudaranya,",
      },
      {
        'no': '35',
        'arabic': "وَاُمِّهٖ وَاَبِيْهِۙ",
        'transliteration': "Wa ummihī wa abīh(i).",
        'translation': "(dari) ibu dan bapaknya,",
      },
      {
        'no': '36',
        'arabic': "وَصَاحِبَتِهٖ وَبَنِيْهِۗ",
        'transliteration': "Wa ṣāḥibatihī wa banīh(i).",
        'translation': "serta (dari) istri dan anak-anaknya.",
      },
      {
        'no': '37',
        'arabic': "لِكُلِّ امْرِئٍ مِّنْهُمْ يَوْمَئِذٍ شَأْنٌ يُّغْنِيْهِۗ",
        'transliteration': "Likullimri'im-minhum yauma'iżin sya'nuy-yugnīh(i).",
        'translation':
            "Setiap orang dari mereka pada hari itu mempunyai urusan yang menyibukkannya.",
      },
      {
        'no': '38',
        'arabic': "وُجُوْهٌ يَّوْمَىِٕذٍ مُّسْفِرَةٌۙ",
        'transliteration': "Wujūhuy yauma'iżim musfirah(tun).",
        'translation': "Pada hari itu ada wajah-wajah yang berseri-seri,",
      },
      {
        'no': '39',
        'arabic': "ضَاحِكَةٌ مُّسْتَبْشِرَةٌ ۚ",
        'transliteration': "Ḍāḥikatum mustabsyirah(tun).",
        'translation': "tertawa lagi gembira ria.",
      },
      {
        'no': '40',
        'arabic': "وَوُجُوْهٌ يَّوْمَىِٕذٍ عَلَيْهَا غَبَرَةٌۙ",
        'transliteration': "Wa wujūhuy yauma'iżin ‘alaihā gabarah(tun).",
        'translation':
            "Pada hari itu ada (pula) wajah-wajah yang tertutup debu (suram)",
      },
      {
        'no': '41',
        'arabic': "تَرْهَقُهَا قَتَرَةٌ ۗ",
        'transliteration': "Tarhaquhā qatarah(tun).",
        'translation':
            "dan tertutup oleh kegelapan (ditimpa kehinaan dan kesusahan).",
      },
      {
        'no': '42',
        'arabic': "اُولٰۤىِٕكَ هُمُ الْكَفَرَةُ الْفَجَرَةُ ࣖ",
        'transliteration': "Ulā'ika humul-kafaratul-fajarah(tu).",
        'translation': "Mereka itulah orang-orang kafir lagi para pendurhaka.",
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
          widget.surahData['name'] ?? "'Abasa",
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
                "${widget.surahData['verses'] ?? 42} Ayat",
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
