import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';

import '../services/quran_api_service.dart';

class AlMutaffifinPage extends StatefulWidget {
  final Map<String, dynamic> surahData;

  const AlMutaffifinPage({super.key, required this.surahData});

  @override
  State<AlMutaffifinPage> createState() => _AlMutaffifinPageState();
}

class _AlMutaffifinPageState extends State<AlMutaffifinPage> {
  final AudioPlayer player = AudioPlayer();
  bool isPlayingFullSurah = false;

  final ScrollController _scrollController = ScrollController();
  final List<GlobalKey> ayatKeys = List.generate(36, (_) => GlobalKey());

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
    final data = await QuranApiService.getSurat(83);

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

    // Token Warna Adaptif Berdasarkan Tema Aktif
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

    // Data ayat dikosongkan agar dapat Anda muat secara dinamis lewat API / Local JSON
    final List<Map<String, dynamic>> ayatList = [
      {
        'no': '1',
        'arabic': "وَيْلٌ لِّلْمُطَفِّفِيْنَۙ",
        'transliteration': "Wailul-lil-muṭaffifīn(a).",
        'translation':
            "Celakalah orang-orang yang curang (dalam menakar dan menimbang)!",
      },
      {
        'no': '2',
        'arabic': "الَّذِيْنَ اِذَا اكْتَالُوْا عَلَى النَّاسِ يَسْتَوْفُوْنَۖ",
        'transliteration': "Al-lażīna iżaktālū ‘alan-nāsi yastaufūn(a).",
        'translation':
            "(Mereka adalah) orang-orang yang apabila menerima takaran dari orang lain, mereka minta dipenuhi.",
      },
      {
        'no': '3',
        'arabic': "وَاِذَا كَالُوْهُمْ اَوْ وَّزَنُوْهُمْ يُخْسِرُوْنَۗ",
        'transliteration': "Wa iżā kālūhum aw wazanūhum yukhsirūn(a).",
        'translation':
            "(Sebaliknya,) apabila mereka menakar atau menimbang untuk orang lain, mereka kurangi.",
      },
      {
        'no': '4',
        'arabic': "اَلَا يَظُنُّ اُولٰۤىِٕكَ اَنَّهُمْ مَّبْعُوْثُوْنَۙ",
        'transliteration': "Alā yaẓunnu ulā'ika annahum mab‘ūṡūn(a),",
        'translation':
            "Tidakkah mereka mengira (bahwa) sesungguhnya mereka akan dibangkitkan",
      },
      {
        'no': '5',
        'arabic': "لِيَوْمٍ عَظِيْمٍۙ",
        'transliteration': "liyaumin ‘aẓīm(in),",
        'translation': "pada suatu hari yang besar (Kiamat),",
      },
      {
        'no': '6',
        'arabic': "يَّوْمَ يَقُوْمُ النَّاسُ لِرَبِّ الْعٰلَمِيْنَۗ",
        'transliteration': "yauma yaqūmun-nāsu lirabbil-‘ālamīn(a).",
        'translation':
            "(yaitu) hari (ketika) manusia bangkit menghadap Tuhan seluruh alam?",
      },
      {
        'no': '7',
        'arabic': "كَلَّآ اِنَّ كِتٰبَ الْفُجَّارِ لَفِيْ سِجِّيْنٍۗ",
        'transliteration': "Kallā inna kitābal-fujjāri lafī sijjīn(i).",
        'translation':
            "Jangan sekali-kali begitu! Sesungguhnya catatan orang yang durhaka benar-benar (tersimpan) dalam Sijjīn.",
      },
      {
        'no': '8',
        'arabic': "وَمَآ اَدْرٰىكَ مَا سِجِّيْنٌۗ",
        'transliteration': "Wa mā adrāka mā sijjīn(un).",
        'translation': "Tahukah engkau apakah Sijjīn itu?",
      },
      {
        'no': '9',
        'arabic': "كِتٰبٌ مَّرْقُوْمٌۗ",
        'transliteration': "Kitābum-marqūm(un).",
        'translation': "(Ia adalah) kitab yang berisi catatan (amal).",
      },
      {
        'no': '10',
        'arabic': "وَيْلٌ يَّوْمَىِٕذٍ لِّلْمُكَذِّبِيْنَۙ",
        'transliteration': "Wailuy-yauma'iżil-lil-mukażżibīn(a).",
        'translation': "Celakalah pada hari itu bagi para pendusta,",
      },
      {
        'no': '11',
        'arabic': "الَّذِيْنَ يُكَذِّبُوْنَ بِيَوْمِ الدِّيْنِۗ",
        'transliteration': "Al-lażīna yukażżibūna biyaumid-dīn(i).",
        'translation': "yaitu orang-orang yang mendustakan hari Pembalasan.",
      },
      {
        'no': '12',
        'arabic': "وَمَا يُكَذِّبُ بِهٖٓ اِلَّا كُلُّ مُعْتَدٍ اَثِيْمٍۙ",
        'transliteration': "Wa mā yukażżibu bihī illā kullu mu‘tadin aṡīm(in).",
        'translation':
            "Tidak ada yang mendustakannya, kecuali setiap orang yang melampaui batas lagi sangat berdosa.",
      },
      {
        'no': '13',
        'arabic':
            "اِذَا تُتْلٰى عَلَيْهِ اٰيٰتُنَا قَالَ اَسَاطِيْرُ الْاَوَّلِيْنَۗ",
        'transliteration':
            "Iżā tutlā ‘alaihi āyātunā qāla asāṭīrul-awwalīn(a).",
        'translation':
            "Apabila dibacakan kepadanya ayat-ayat Kami, dia berkata, “(Itu adalah) dongeng orang-orang dahulu.”",
      },
      {
        'no': '14',
        'arabic':
            "كَلَّا بَلْ ۜرَانَ عَلٰى قُلُوْبِهِمْ مَّا كَانُوْا يَكْسِبُوْنَ",
        'transliteration': "Kallā bal rāna ‘alā qulūbihim mā kānū yaksibūn(a).",
        'translation':
            "Sekali-kali tidak! Bahkan, apa yang selalu mereka kerjakan itu telah menutupi hati mereka.",
      },
      {
        'no': '15',
        'arabic':
            "كَلَّآ اِنَّهُمْ عَنْ رَّبِّهِمْ يَوْمَىِٕذٍ لَّمَحْجُوْبُوْنَۗ",
        'transliteration':
            "Kallā innahum ‘an rabbihim yauma'iżil-lamahjūbūn(a).",
        'translation':
            "Sekali-kali tidak! Sesungguhnya mereka pada hari itu benar-benar terhalang dari (rahmat) Tuhannya.",
      },
      {
        'no': '16',
        'arabic': "ثُمَّ اِنَّهُمْ لَصَالُوا الْجَحِيْمِۗ",
        'transliteration': "Ṡumma innahum laṣālul-jaḥīm(i).",
        'translation':
            "Sesungguhnya mereka kemudian benar-benar masuk (neraka) Jahim.",
      },
      {
        'no': '17',
        'arabic': "ثُمَّ يُقَالُ هٰذَا الَّذِيْ كُنْتُمْ بِهٖ تُكَذِّبُوْنَۗ",
        'transliteration': "Ṡumma yuqālu hāżal-lażī kuntum bihī tukażżibūn(a).",
        'translation':
            "Lalu dikatakan (kepada mereka), “Inilah (azab) yang selalu kamu dustakan.”",
      },
      {
        'no': '18',
        'arabic': "كَلَّآ اِنَّ كِتٰبَ الْاَبْرَارِ لَفِيْ عِلِّيِّيْنَۗ",
        'transliteration': "Kallā inna kitābal-abrāri lafī ‘illiyyīn(i).",
        'translation':
            "Sekali-kali tidak! Sesungguhnya catatan orang-orang yang berbakti benar-benar tersimpan dalam ‘Illiyyīn.",
      },
      {
        'no': '19',
        'arabic': "وَمَآ اَدْرٰىكَ مَا عِلِّيُّوْنَۗ",
        'transliteration': "Wa mā adrāka mā ‘illiyyūn(a).",
        'translation': "Tahukah engkau apakah ‘Illiyyīn itu?",
      },
      {
        'no': '20',
        'arabic': "كِتٰبٌ مَّرْقُوْمٌۙ",
        'transliteration': "Kitābum-marqūm(un),",
        'translation': "(Itulah) kitab yang berisi catatan (amal)",
      },
      {
        'no': '21',
        'arabic': "يَّشْهَدُهُ الْمُقَرَّبُوْنَۗ",
        'transliteration': "yasyhaduhul-muqarrabūn(a).",
        'translation':
            "yang disaksikan oleh (malaikat-malaikat) yang didekatkan (kepada Allah).",
      },
      {
        'no': '22',
        'arabic': "اِنَّ الْاَبْرَارَ لَفِيْ نَعِيْمٍۙ",
        'transliteration': "Innal-abrāra lafī na‘īm(in),",
        'translation':
            "Sesungguhnya orang-orang yang berbakti benar-benar berada dalam (surga yang penuh) kenikmatan.",
      },
      {
        'no': '23',
        'arabic': "عَلَى الْاَرَابِكِ يَنْظُرُوْنَۙ",
        'transliteration': "‘Alal-arā'iki yanẓurūn(a).",
        'translation':
            "Mereka (duduk) di atas dipan-dipan (sambil) melepas pandangan.",
      },
      {
        'no': '24',
        'arabic': "تَعْرِفُ فِيْ وُجُوْهِهِمْ نَضْرَةَ النَّعِيْمِۚ",
        'transliteration': "Ta‘rifu fī wujūhihim naḍratan-na‘īm(i).",
        'translation':
            "Engkau dapat mengetahui pada wajah mereka gemerlapnya kenikmatan.",
      },
      {
        'no': '25',
        'arabic': "يُسْقَوْنَ مِنْ رَّحِيْقٍ مَّخْتُوْمٍۙ",
        'transliteration': "Yusqauna mir raḥīqim-makhtūm(in),",
        'translation':
            "Mereka diberi minum dari khamar murni (tidak memabukkan) yang (tempatnya) masih diberi lak (sebagai jaminan keasliannya).",
      },
      {
        'no': '26',
        'arabic':
            "خِتٰمُهٗ مِسْكٌۗ وَفِيْ ذٰلِكَ فَلْيَتَنَافَسِ الْمُتَنَافِسُوْنَۗ",
        'transliteration':
            "Khitāmuhū misk(un), wa fī żālika falyatanāfasil-mutanāfisūn(a).",
        'translation':
            "Laknya terbuat dari kasturi. Untuk (mendapatkan) yang demikian itu hendaknya orang berlomba-lomba.",
      },
      {
        'no': '27',
        'arabic': "وَمِزَاجُهٗ مِنْ تَسْنِيْمٍۙ",
        'transliteration': "Wa mizājuhū min tasnīm(in),",
        'translation': "Campurannya terbuat dari tasnīm,",
      },
      {
        'no': '28',
        'arabic': "عَيْنًا يَّشْرَبُ بِهَا الْمُقَرَّبُوْنَۗ",
        'transliteration': "‘ainay-yasyrabu bihal-muqarrabūn(a).",
        'translation':
            "(yaitu) mata air yang diminum oleh mereka yang didekatkan (kepada Allah).",
      },
      {
        'no': '29',
        'arabic':
            "اِنَّ الَّذِيْنَ اَجْرَمُوْا كَانُوْا مِنَ الَّذِيْنَ اٰمَنُوْا يَضْحَكُوْنَۖ",
        'transliteration':
            "Innal-lażīna ajramū kānū minal-lażīna āmanū yaḍḥakūn(a).",
        'translation':
            "Sesungguhnya orang-orang yang berdosa adalah mereka yang dahulu selalu mentertawakan orang-orang yang beriman.",
      },
      {
        'no': '30',
        'arabic': "وَاِذَا مَرُّوْا بِهِمْ يَتَغَامَزُوْنَۖ",
        'transliteration': "Wa iżā marrū bihim yatagāmazūn(a).",
        'translation':
            "Apabila mereka (orang-orang yang beriman) melintas di hadapan mereka, mereka saling mengedip-ngedipkan matanya.",
      },
      {
        'no': '31',
        'arabic':
            "وَاِذَا انْقَلَبُوْٓا اِلٰٓى اَهْلِهِمُ انْقَلَبُوْا فَكِهِيْنَۖ",
        'transliteration': "Wa iżanqalabū ilā ahlihimunqalabū fakahīn(a).",
        'translation':
            "Apabila kembali kepada kaumnya, mereka kembali dengan gembira ria (dan sombong).",
      },
      {
        'no': '32',
        'arabic':
            "وَاِذَا رَاَوْهُمْ قَالُوْٓا اِنَّ هٰۤؤۤلَاۤءِ لَضَاۤلُّوْنَۙ",
        'transliteration': "Wa iżā ra'auhum qālū inna hā'ulā'i laḍāllūn(a).",
        'translation':
            "Apabila melihat (orang-orang mukmin), mereka mengatakan, “Sesungguhnya mereka benar-benar orang-orang sesat,”",
      },
      {
        'no': '33',
        'arabic': "وَمَآ اُرْسِلُوْا عَلَيْهِمْ حٰفِظِيْنَۗ",
        'transliteration': "Wa mā ursilū ‘alaihim laḥāfiẓīn(a).",
        'translation':
            "padahal mereka (orang-orang yang berdosa itu) tidak diutus sebagai penjaga (orang-orang mukmin).",
      },
      {
        'no': '34',
        'arabic':
            "فَالْيَوْمَ الَّذِيْنَ اٰمَنُوْا مِنَ الْكُفَّارِ يَضْحَكُوْنَۙ",
        'transliteration': "Fal-yaumal-lażīna āmanū minal-kuffāri yaḍḥakūn(a),",
        'translation':
            "Pada hari ini (hari Kiamat), orang-orang yang berimanlah yang mentertawakan orang-orang kafir.",
      },
      {
        'no': '35',
        'arabic': "عَلَى الْاَرَابِكِ يَنْظُرُوْنَۗ",
        'transliteration': "‘Alal-arā'iki yanẓurūn(a).",
        'translation':
            "Mereka (duduk) di atas dipan-dipan (sambil) melepas pandangan.",
      },
      {
        'no': '36',
        'arabic': "هَلْ ثُوِّبَ الْكُفَّارُ مَا كَانُوْا يَفْعَلُوْنَࣖ",
        'transliteration': "Hal ṡuwwibal-kuffāru mā kānū yaf‘alūn(a).",
        'translation':
            "Apakah orang-orang kafir itu telah diberi balasan (hukuman) terhadap apa yang selalu mereka perbuat?",
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
          widget.surahData['name'] ?? 'Al-Mutaffifin',
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
          // Bagian Tag Info Surah
          Wrap(
            spacing: 8,
            children: [
              _buildChip(
                widget.surahData['type'] ?? "MAKKIYAH",
                chipBgColor,
                chipTextColor,
              ),
              _buildChip(
                "${widget.surahData['verses'] ?? 36} Ayat",
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
