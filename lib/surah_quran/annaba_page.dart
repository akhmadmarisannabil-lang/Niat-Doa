import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';

import '../services/quran_api_service.dart';

class AnNabaPage extends StatefulWidget {
  final Map<String, dynamic> surahData;

  const AnNabaPage({super.key, required this.surahData});

  @override
  State<AnNabaPage> createState() => _AnNabaPageState();
}

class _AnNabaPageState extends State<AnNabaPage> {
  final AudioPlayer player = AudioPlayer();
  bool isPlayingFullSurah = false;

  final ScrollController _scrollController = ScrollController();
  final List<GlobalKey> ayatKeys = List.generate(40, (_) => GlobalKey());

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
    final data = await QuranApiService.getSurat(78);

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

    // Manajemen Warna Global Tema Adaptif
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

    // Pewarnaan Teks Khusus Khat Arab demi kontras maksimal
    final Color arabicTextColor = isLightMode
        ? Colors.black
        : Colors.white.withValues(alpha: 0.9);

    final List<Map<String, dynamic>> ayatList = [
      {
        'no': '1',
        'arabic': "عَمَّ يَتَسَاۤءَلُوْنَۚ",
        'transliteration': "‘Amma yatasā'alūn(a).",
        'translation': "Tentang apakah mereka saling bertanya?",
      },
      {
        'no': '2',
        'arabic': "عَنِ النَّبَاِ الْعَظِيْمِۙ",
        'transliteration': "‘Anin naba'il-‘aẓīm(i).",
        'translation': "Tentang berita yang besar (hari Kebangkitan)",
      },
      {
        'no': '3',
        'arabic': "الَّذِيْ هُمْ فِيْهِ مُخْتَلِفُوْنَۗ",
        'transliteration': "Allażī hum fīhi mukhtalifūn(a).",
        'translation': "yang dalam hal itu mereka berselisih.",
      },
      {
        'no': '4',
        'arabic': "كَلَّا سَيَعْلَمُوْنَۙ",
        'transliteration': "Kallā saya‘lamūn(a).",
        'translation': "Sekali-kali tidak! Kelak mereka akan mengetahui.",
      },
      {
        'no': '5',
        'arabic': "ثُمَّ كَلَّا سَيَعْلَمُوْنَ",
        'transliteration': "Kallā saya‘lamūn(a).",
        'translation': "Sekali-kali tidak! Kelak mereka akan mengetahui.",
      },
      {
        'no': '6',
        'arabic': "اَلَمْ نَجْعَلِ الْاَرْضَ مِهٰدًاۙ",
        'transliteration': "Alam naj‘alil-arḍa mihādā(n).",
        'translation': "Bukankah Kami telah menjadikan bumi sebagai hamparan",
      },
      {
        'no': '7',
        'arabic': "وَّالْجِبَالَ اَوْتَادًاۖ",
        'transliteration': "Wal-jibāla autādā(n).",
        'translation': "dan gunung-gunung sebagai pasak?",
      },
      {
        'no': '8',
        'arabic': "وَّخَلَقْنٰكُمْ اَزْوَاجًاۙ",
        'transliteration': "Wa khalaqnākum azwājā(n).",
        'translation': "Kami menciptakan kamu berpasang-pasangan.",
      },
      {
        'no': '9',
        'arabic': "وَّجَعَلْنَا نَوْمَكُمْ سُبَاتًاۙ",
        'transliteration': "Wa ja‘alnā naumakum subātā(n).",
        'translation': "Kami menjadikan tidurmu untuk beristirahat.",
      },
      {
        'no': '10',
        'arabic': "وَّجَعَلْنَا الَّيْلَ لِبَاسًاۙ",
        'transliteration': "Wa ja‘alnal-laila libāsā(n).",
        'translation': "Kami menjadikan malam sebagai pakaian.",
      },
      {
        'no': '11',
        'arabic': "وَّجَعَلْنَا النَّهَارَ مَعَاشًاۚ",
        'transliteration': "Wa ja‘alnan-nahāra ma‘āsyā(n).",
        'translation': "Kami menjadikan siang untuk mencari penghidupan.",
      },
      {
        'no': '12',
        'arabic': "وَبَنَيْنَا فَوْقَكُمْ سَبْعًا شِدَادًاۙ",
        'transliteration': "Wa banainā fauqakum sab‘an syidādā(n).",
        'translation': "Kami membangun tujuh (langit) yang kukuh di atasmu.",
      },
      {
        'no': '13',
        'arabic': "وَّجَعَلْنَا سِرَاجًا وَّهَّاجًاۖ",
        'transliteration': "Wa ja‘alnā sirājaw wahhājā(n).",
        'translation':
            "Kami menjadikan pelita yang terang-benderang (matahari).",
      },
      {
        'no': '14',
        'arabic': "وَّاَنْزَلْنَا مِنَ الْمُعْصِرٰتِ مَاۤءً ثَجَّاجًاۙ",
        'transliteration': "Wa anzalnā minal-mu‘ṣirāti mā'an ṡajjājā(n).",
        'translation':
            "Kami menurunkan dari awan air hujan yang tercurah dengan deras",
      },
      {
        'no': '15',
        'arabic': "لِّنُخْرِجَ بِهٖ حَبًّا وَّنَبَاتًاۙ",
        'transliteration': "Linukhrija bihī ḥabbaw wa nabātā(n).",
        'translation':
            "agar Kami menumbuhkan dengannya biji-bijian, tanam-tanaman,",
      },
      {
        'no': '16',
        'arabic': "وَّجَنّٰتٍ اَلْفَافًاۗ",
        'transliteration': "Wa jannātin alfāfā(n).",
        'translation': "dan kebun-kebun yang rindang.",
      },
      {
        'no': '17',
        'arabic': "اِنَّ يَوْمَ الْفَصْلِ كَانَ مِيْقَاتًاۙ",
        'transliteration': "Inna yaumal-faṣli kāna mīqātā(n).",
        'translation':
            "Sesungguhnya hari Keputusan itu adalah waktu yang telah ditetapkan,",
      },
      {
        'no': '18',
        'arabic': "يَّوْمَ يُنْفَخُ فِى الصُّوْرِ فَتَأْتُوْنَ اَفْوَاجًاۙ",
        'transliteration': "Yauma yunfakhu fiṣ-ṣūri fa ta'tūna afwājā(n).",
        'translation':
            "(yaitu) hari (ketika) sangkakala ditiup, lalu kamu datang berbondong-bondong.",
      },
      {
        'no': '19',
        'arabic': "وَّفُتِحَتِ السَّمَاۤءُ فَكَانَتْ اَبْوَابًاۙ",
        'transliteration': "Wa futiḥatis-samā'u fa kānat abwābā(n).",
        'translation': "Langit pun dibuka. Maka, terdapatlah beberapa pintu.",
      },
      {
        'no': '20',
        'arabic': "وَّسُيِّرَتِ الْجِبَالُ فَكَانَتْ سَرَابًاۗ",
        'transliteration': "Wa suyyiratil-jibālu fa kānat sarābā(n).",
        'translation':
            "Gunung-gunung pun dijalankan. Maka, ia menjadi (seperti) fatamorgana.",
      },
      {
        'no': '21',
        'arabic': "اِنَّ جَهَنَّمَ كَانَتْ مِرْصَادًاۙ",
        'transliteration': "Inna jahannama kānat mirṣādā(n).",
        'translation':
            "Sesungguhnya (neraka) Jahanam itu (merupakan) tempat mengintai (bagi penjaga neraka)",
      },
      {
        'no': '22',
        'arabic': "لِّلطّٰغِيْنَ مَاٰبًاۙ",
        'transliteration': "Liṭ-ṭāgīna ma'ābā(n).",
        'translation':
            "(dan) menjadi tempat kembali bagi orang-orang yang melampaui batas.",
      },
      {
        'no': '23',
        'arabic': "لّٰبِثِيْنَ فِيْهَآ اَحْقَابًاۚ",
        'transliteration': "Lābiṡīna fīhā aḥqābā(n).",
        'translation': "Mereka tinggal di sana dalam masa yang lama.",
      },
      {
        'no': '24',
        'arabic': "لَا يَذُوْقُوْنَ فِيْهَا بَرْدًا وَّلَا شَرَابًاۙ",
        'transliteration': "Lā yażūqūna fīhā bardaw wa lā syarābā(n).",
        'translation':
            "Mereka tidak merasakan kesejukan di dalamnya dan tidak (pula mendapat) minuman,",
      },
      {
        'no': '25',
        'arabic': "اِلَّا حَمِيْمًا وَّغَسَّاقًاۙ",
        'transliteration': "Illā ḥamīmaw wa gassāqā(n).",
        'translation': "selain air yang mendidih dan nanah,",
      },
      {
        'no': '26',
        'arabic': "جَزَاۤءً وِّفَاقًاۗ",
        'transliteration': "Jazā'aw wifāqā(n).",
        'translation': "sebagai pembalasan yang setimpal.",
      },
      {
        'no': '27',
        'arabic': "اِنَّهُمْ كَانُوْا لَا يَرْجُوْنَ حِسَابًاۙ",
        'transliteration': "Innahum kānū lā yarjūna ḥisābā(n).",
        'translation':
            "Sesungguhnya mereka tidak pernah mengharapkan perhitungan.",
      },
      {
        'no': '28',
        'arabic': "وَّكَذَّبُوْا بِاٰيٰتِنَا كِذَّابًاۗ",
        'transliteration': "Wa każżabū bi'āyātinā kiżżābā(n).",
        'translation': "Mereka benar-benar mendustakan ayat-ayat Kami.",
      },
      {
        'no': '29',
        'arabic': "وَكُلَّ شَيْءٍ اَحْصَيْنٰهُ كِتٰبًاۙ",
        'transliteration': "Wa kulla syai'in aḥṣaināhu kitābā(n).",
        'translation':
            "Segala sesuatu telah Kami catat dalam kitab (catatan amal manusia).",
      },
      {
        'no': '30',
        'arabic': "فَذُوْقُوْا فَلَنْ نَّزِيْدَكُمْ اِلَّا عَذَابًا ࣖ",
        'transliteration': "Fa żūqū falan nazīdakum illā ‘ażābā(n)",
        'translation':
            "Oleh karena itu, rasakanlah! Tidak akan Kami tambahkan kepadamu, kecuali azab.",
      },
      {
        'no': '31',
        'arabic': "اِنَّ لِلْمُتَّقِيْنَ مَفَازًاۙ",
        'transliteration': "Inna lil-muttaqīna mafāzā(n).",
        'translation':
            "Sesungguhnya bagi orang-orang yang bertakwa (ada) kemenangan (surga),",
      },
      {
        'no': '32',
        'arabic': "حَدَاۤىِٕقَ وَاَعْنَابًاۙ",
        'transliteration': "Ḥadā'iqa wa a‘nābā(n).",
        'translation': "(yaitu) kebun-kebun, buah anggur,",
      },
      {
        'no': '33',
        'arabic': "وَّكَوَاعِبَ اَتْرَابًاۙ",
        'transliteration': "Wa kawā‘iba atrābā(n).",
        'translation': "gadis-gadis molek yang sebaya,",
      },
      {
        'no': '34',
        'arabic': "وَّكَأْسًا دِهَاقًاۗ",
        'transliteration': "Wa ka'san dihāqā(n).",
        'translation': "dan gelas-gelas yang penuh (berisi minuman).",
      },
      {
        'no': '35',
        'arabic': "لَا يَسْمَعُوْنَ فِيْهَا لَغْوًا وَّلَا كِذّٰبًا",
        'transliteration': "Lā yasma‘ūna fīhā lagwaw wa lā kiżżābā(n).",
        'translation':
            "Di sana mereka tidak mendengar percakapan yang sia-sia dan tidak pula (perkataan) dusta.",
      },
      {
        'no': '36',
        'arabic': "جَزَاۤءً مِّنْ رَّبِّكَ عَطَاۤءً حِسَابًاۙ",
        'transliteration': "Jazā'am mir rabbika ‘aṭā'an ḥisābā(n).",
        'translation':
            "(Hal itu) sebagai balasan (dan) pemberian yang banyak dari Tuhanmu,",
      },
      {
        'no': '37',
        'arabic':
            "رَّبِّ السَّمٰوٰتِ وَالْاَرْضِ وَمَا بَيْنَهُمَا الرَّحْمٰنِ لَا يَمْلِكُوْنَ مِنْهُ خِطَابًاۚ",
        'transliteration':
            "Rabbis-samāwāti wal-arḍi wa mā bainahumar-raḥmāni lā yamlikūna minhu khiṭābā(n).",
        'translation':
            "(yaitu) Tuhan (pemelihara) langit, bumi, dan apa yang ada di antara keduanya, Yang Maha Pengasih. Mereka tidak memiliki (hak) berbicara dengan-Nya.",
      },
      {
        'no': '38',
        'arabic':
            "يَوْمَ يَقُوْمُ الرُّوْحُ وَالْمَلٰۤىِٕكَةُ صَفًّاۙ لَّا يَتَكَلَّمُوْنَ اِلَّا مَنْ اَذِنَ لَهُ الرَّحْمٰنُ وَقَالَ صَوَابًا",
        'transliteration':
            "Yauma yaqūmur-rūḥu wal-malā'ikatu ṣaffā(n), lā yatakallamūna illā man ażina lahur-raḥmānu wa qāla ṣawābā(n).",
        'translation':
            "Pada hari ketika Rūḥ dan malaikat berdiri bersaf-saf. Mereka tidak berbicara, kecuali yang diizinkan oleh Tuhan Yang Maha Pengasih dan dia mengatakan yang benar.",
      },
      {
        'no': '39',
        'arabic':
            "ذٰلِكَ الْيَوْمُ الْحَقُّۚ فَمَنْ شَاۤءَ اتَّخَذَ اِلٰى رَبِّهٖ مَاٰبًا",
        'transliteration':
            "Żālikal-yaumul-ḥaqq(u), faman syā'attakhaża ilā rabbihī ma'ābā(n).",
        'translation':
            "Itulah hari yang hak (pasti terjadi). Siapa yang menghendaki (keselamatan) niscaya menempuh jalan kembali kepada Tuhannya (dengan beramal saleh).",
      },
      {
        'no': '40',
        'arabic':
            "اِنَّآ اَنْذَرْنٰكُمْ عَذَابًا قَرِيْبًا ەۙ يَّوْمَ يَنْظُرُ الْمَرْءُ مَا قَدَّمَتْ يَدَاهُ وَيَقُوْلُ الْكٰفِرُ يٰلَيْتَنِيْ كُنْتُ تُرٰبًا ࣖ",
        'transliteration':
            "Innā anżarnākum ‘ażāban qarībā(n), yauma yanẓurul-mar'u mā qaddamat yadāhu wa yaqūlul-kāfiru yā laitanī kuntu turābā(n).",
        'translation':
            "Sesungguhnya Kami telah memperingatkan kamu akan azab yang dekat pada hari (ketika) manusia melihat apa yang telah diperbuat oleh kedua tangannya dan orang kafir berkata, “Oh, seandainya saja aku menjadi tanah.”",
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
          widget.surahData['name'] ?? 'An-Naba\'',
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
                "${widget.surahData['verses'] ?? 40} Ayat",
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
