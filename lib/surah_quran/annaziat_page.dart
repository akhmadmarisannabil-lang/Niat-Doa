import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';

import '../services/quran_api_service.dart';

class AnNaziatPage extends StatefulWidget {
  final Map<String, dynamic> surahData;

  const AnNaziatPage({super.key, required this.surahData});

  @override
  State<AnNaziatPage> createState() => _AnNaziatPageState();
}

class _AnNaziatPageState extends State<AnNaziatPage> {
  final AudioPlayer player = AudioPlayer();
  bool isPlayingFullSurah = false;

  final ScrollController _scrollController = ScrollController();
  final List<GlobalKey> ayatKeys = List.generate(46, (_) => GlobalKey());

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
    final data = await QuranApiService.getSurat(79);

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

    // Sistem Pewarnaan Adaptif
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

    // Sampel Data Ayat Resmi An-Nazi'at
    final List<Map<String, dynamic>> ayatList = [
      {
        'no': '1',
        'arabic': "وَالنّٰزِعٰتِ غَرْقًاۙ",
        'transliteration': "Wan-nāzi‘āti garqā(n).",
        'translation':
            "Demi (malaikat) yang mencabut (nyawa orang kafir) dengan keras,",
      },
      {
        'no': '2',
        'arabic': "وَّالنّٰشِطٰتِ نَشْطًاۙ",
        'transliteration': "Wan-nāsyiṭāti nasyṭā(n).",
        'translation':
            "demi (malaikat) yang mencabut (nyawa orang mukmin) dengan lemah lembut,",
      },
      {
        'no': '3',
        'arabic': "وَّالسّٰبِحٰتِ سَبْحًاۙ",
        'transliteration': "Was-sābiḥāti sabḥā(n).",
        'translation':
            "demi (malaikat) yang cepat (menunaikan tugasnya) dengan mudah,",
      },
      {
        'no': '4',
        'arabic': "فَالسّٰبِقٰتِ سَبْقًاۙ",
        'transliteration': "Fas-sābiqāti sabqā(n).",
        'translation':
            "(malaikat) yang bergegas (melaksanakan perintah Allah) dengan cepat,",
      },
      {
        'no': '5',
        'arabic': "فَالْمُدَبِّرٰتِ اَمْرًاۘ",
        'transliteration': "Fal-mudabbirāti amrā(n).",
        'translation': "dan (malaikat) yang mengatur urusan (dunia),",
      },
      {
        'no': '6',
        'arabic': "يَوْمَ تَرْجُفُ الرَّاجِفَةُۙ",
        'transliteration': "Yauma tarjufur-rājifah(tu).",
        'translation':
            "(kamu benar-benar akan dibangkitkan) pada hari ketika tiupan pertama mengguncang (alam semesta).",
      },
      {
        'no': '7',
        'arabic': "تَتْبَعُهَا الرَّادِفَةُ ۗ",
        'transliteration': "Tatba‘uhar-rādifah(tu).",
        'translation': "(Tiupan pertama) itu diiringi oleh tiupan kedua.",
      },
      {
        'no': '8',
        'arabic': "قُلُوْبٌ يَّوْمَىِٕذٍ وَّاجِفَةٌۙ",
        'transliteration': "Qulūbuy yauma'iżiw wājifah(tun).",
        'translation': "Hati manusia pada hari itu merasa sangat takut;",
      },
      {
        'no': '9',
        'arabic': "اَبْصَارُهَا خَاشِعَةٌ ۘ",
        'transliteration': "Abṣāruhā khāsyi‘ah(tun).",
        'translation': "pandangannya tertunduk.",
      },
      {
        'no': '10',
        'arabic': "يَقُوْلُوْنَ ءَاِنَّا لَمَرْدُوْدُوْنَ فِى الْحَافِرَةِۗ",
        'transliteration': "Yaqūlūna a'innā lamardūdūna fil-ḥāfirah(ti).",
        'translation':
            "Mereka (di dunia) berkata, “Apakah kita benar-benar akan dikembalikan pada kehidupan yang semula?",
      },
      {
        'no': '11',
        'arabic': "ءَاِذَا كُنَّا عِظَامًا نَّخِرَةً ۗ",
        'transliteration': "A'iżā kunnā ‘iẓāman nakhirah(tan).",
        'translation':
            "Apabila kita telah menjadi tulang-belulang yang hancur, apakah kita (akan dibangkitkan juga)?”",
      },
      {
        'no': '12',
        'arabic': "قَالُوْا تِلْكَ اِذًا كَرَّةٌ خَاسِرَةٌ ۘ",
        'transliteration': "Qālū tilka iżan karratun khāsirah(tun).",
        'translation':
            "Mereka berkata, “Kalau demikian, itu suatu pengembalian yang merugikan.”",
      },
      {
        'no': '13',
        'arabic': "فَاِنَّمَا هِيَ زَجْرَةٌ وَّاحِدَةٌۙ",
        'transliteration': "Fa innamā hiya zajratuw wāḥidah(tun).",
        'translation':
            "(Jangan dianggap sulit,) pengembalian itu (dilakukan) hanyalah dengan sekali tiupan.",
      },
      {
        'no': '14',
        'arabic': "فَاِذَا هُمْ بِالسَّاهِرَةِۗ",
        'transliteration': "Fa iżā hum bis-sāhirah(ti).",
        'translation':
            "Seketika itu, mereka hidup kembali di bumi (yang baru).",
      },
      {
        'no': '15',
        'arabic': "هَلْ اَتٰىكَ حَدِيْثُ مُوْسٰىۘ",
        'transliteration': "Hal atāka ḥadīṡu mūsā.",
        'translation': "Sudah sampaikah kepadamu (Nabi Muhammad) kisah Musa?",
      },
      {
        'no': '16',
        'arabic': "اِذْ نَادٰىهُ رَبُّهٗ بِالْوَادِ الْمُقَدَّسِ طُوًىۚ",
        'transliteration': "Iż nādāhu rabbuhū bil-wādil-muqaddasi ṭuwā(n).",
        'translation':
            "(Ingatlah) ketika Tuhannya menyeru dia (Musa) di lembah suci, yaitu Lembah Tuwa,",
      },
      {
        'no': '17',
        'arabic': "اِذْهَبْ اِلٰى فِرْعَوْنَ اِنَّهٗ طَغٰىۖ",
        'transliteration': "Iżhab ilā fir‘auna innahū ṭagā.",
        'translation':
            "“Pergilah engkau kepada Fir‘aun! Sesungguhnya dia telah melampaui batas.",
      },
      {
        'no': '18',
        'arabic': "فَقُلْ هَلْ لَّكَ اِلٰٓى اَنْ تَزَكّٰىۙ",
        'transliteration': "Fa qul hal laka ilā an tazakkā.",
        'translation':
            "Lalu, katakanlah (kepada Fir‘aun), ‘Adakah keinginanmu untuk menyucikan diri (dari kesesatan)",
      },
      {
        'no': '19',
        'arabic': "وَاَهْدِيَكَ اِلٰى رَبِّكَ فَتَخْشٰىۚ",
        'transliteration': "Wa ahdiyaka ilā rabbika fa takhsyā.",
        'translation':
            "dan aku akan menunjukimu ke (jalan) Tuhanmu agar engkau takut (kepada-Nya)?’”",
      },
      {
        'no': '20',
        'arabic': "فَاَرٰىهُ الْاٰيَةَ الْكُبْرٰىۖ",
        'transliteration': "Fa arāhul-āyatal-kubrā.",
        'translation':
            "Lalu, dia (Musa) memperlihatkan mukjizat yang besar kepadanya.",
      },
      {
        'no': '21',
        'arabic': "فَكَذَّبَ وَعَصٰىۖ",
        'transliteration': "Fa każżaba wa ‘aṣā.",
        'translation':
            "Akan tetapi, dia (Fir‘aun) mendustakan (kerasulan) dan mendurhakai (Allah).",
      },
      {
        'no': '22',
        'arabic': "ثُمَّ اَدْبَرَ يَسْعٰىۖ",
        'transliteration': "Ṡumma adbara yas‘ā.",
        'translation':
            "Kemudian, dia berpaling seraya berusaha (menantang Musa).",
      },
      {
        'no': '23',
        'arabic': "فَحَشَرَ فَنَادٰىۖ",
        'transliteration': "Fa ḥasyara fanādā.",
        'translation':
            "Maka, dia mengumpulkan (pembesar-pembesarnya), lalu berseru (memanggil kaumnya).",
      },
      {
        'no': '24',
        'arabic': "فَقَالَ اَنَا۠ رَبُّكُمُ الْاَعْلٰىۖ",
        'transliteration': "Fa qāla ana rabbukumul-a‘lā.",
        'translation': "Dia berkata, “Akulah Tuhanmu yang paling tinggi.”",
      },
      {
        'no': '25',
        'arabic': "فَاَخَذَهُ اللّٰهُ نَكَالَ الْاٰخِرَةِ وَالْاُوْلٰىۗ",
        'transliteration': "Fa akhażahullāhu nakālal-ākhirati wal-ūlā.",
        'translation':
            "Maka, Allah menghukumnya dengan azab di akhirat dan (siksaan) di dunia.",
      },
      {
        'no': '26',
        'arabic': "اِنَّ فِيْ ذٰلِكَ لَعِبْرَةً لِّمَنْ يَّخْشٰى ۗ ࣖ",
        'transliteration': "Inna fī żālika la‘ibratal limay yakhsyā.",
        'translation':
            "Sesungguhnya pada yang demikian itu benar-benar terdapat pelajaran bagi orang yang takut (kepada Allah).",
      },
      {
        'no': '27',
        'arabic': "ءَاَنْتُمْ اَشَدُّ خَلْقًا اَمِ السَّمَاۤءُ ۚ بَنٰىهَاۗ",
        'transliteration': "A'antum asyaddu khalqan amis-samā'u banāhā.",
        'translation':
            "Apakah penciptaan kamu yang lebih hebat ataukah langit yang telah dibangun-Nya?",
      },
      {
        'no': '28',
        'arabic': "رَفَعَ سَمْكَهَا فَسَوّٰىهَاۙ",
        'transliteration': "Rafa‘a samkahā fa sawwāhā.",
        'translation':
            "Dia telah meninggikan bangunannya, lalu menyempurnakannya.",
      },
      {
        'no': '29',
        'arabic': "وَاَغْطَشَ لَيْلَهَا وَاَخْرَجَ ضُحٰىهَاۖ",
        'transliteration': "Wa agṭasya lailahā wa akhraja ḍuḥāhā.",
        'translation':
            "Dia menjadikan malamnya (gelap gulita) dan menjadikan siangnya (terang benderang).",
      },
      {
        'no': '30',
        'arabic': "وَالْاَرْضَ بَعْدَ ذٰلِكَ دَحٰىهَاۗ",
        'transliteration': "Wal-arḍa ba‘da żālika daḥāhā.",
        'translation': "Setelah itu, bumi Dia hamparkan (untuk dihuni).",
      },
      {
        'no': '31',
        'arabic': "اَخْرَجَ مِنْهَا مَاۤءَهَا وَمَرْعٰىهَاۖ",
        'transliteration': "Akhraja minhā mā'ahā wa mar‘āhā.",
        'translation':
            "Darinya (bumi) Dia mengeluarkan air dan (menyediakan) tempat penggembalaan.",
      },
      {
        'no': '32',
        'arabic': "وَالْجِبَالَ اَرْسٰىهَاۙ",
        'transliteration': "Wal-jibāla arsāhā.",
        'translation': "Gunung-gunung Dia pancangkan dengan kukuh.",
      },
      {
        'no': '33',
        'arabic': "مَتَاعًا لَّكُمْ وَلِاَنْعَامِكُمْۗ",
        'transliteration': "Matā‘al lakum wa li'an‘āmikum.",
        'translation':
            "(Semua itu disediakan) untuk kesenanganmu dan hewan ternakmu.",
      },
      {
        'no': '34',
        'arabic': "فَاِذَا جَاۤءَتِ الطَّاۤمَّةُ الْكُبْرٰىۖ",
        'transliteration': "Fa iżā jā'atiṭ-ṭāmmatul-kubrā.",
        'translation':
            "Maka, apabila malapetaka terbesar (hari Kiamat) telah datang,",
      },
      {
        'no': '35',
        'arabic': "يَوْمَ يَتَذَكَّرُ الْاِنْسَانُ مَا سَعٰىۙ",
        'transliteration': "Yauma yatażakkarul-insānu mā sa‘ā.",
        'translation':
            "pada hari (itu) manusia teringat apa yang telah dikerjakannya",
      },
      {
        'no': '36',
        'arabic': "وَبُرِّزَتِ الْجَحِيْمُ لِمَنْ يَّرٰى",
        'transliteration': "Wa burrizatil-jaḥīmu limay yarā.",
        'translation':
            "dan (neraka) Jahim diperlihatkan dengan jelas kepada orang yang melihat(-nya).",
      },
      {
        'no': '37',
        'arabic': "فَاَمَّا مَنْ طَغٰىۖ",
        'transliteration': "Fa ammā man ṭagā.",
        'translation': "Adapun orang yang melampaui batas",
      },
      {
        'no': '38',
        'arabic': "وَاٰثَرَ الْحَيٰوةَ الدُّنْيَاۙ",
        'transliteration': "Wa āṡaral-ḥayātad-dun-yā.",
        'translation': "dan lebih mengutamakan kehidupan dunia,",
      },
      {
        'no': '39',
        'arabic': "فَاِنَّ الْجَحِيْمَ هِيَ الْمَأْوٰىۗ",
        'transliteration': "Fa innal-jaḥīma hiyal-ma'wā.",
        'translation': "sesungguhnya (neraka) Jahimlah tempat tinggal(-nya).",
      },
      {
        'no': '40',
        'arabic':
            "وَاَمَّا مَنْ خَافَ مَقَامَ رَبِّهٖ وَنَهَى النَّفْسَ عَنِ الْهَوٰىۙ",
        'transliteration':
            "Wa ammā man khāfa maqāma rabbihī wa nahan-nafsa ‘anil-hawā.",
        'translation':
            "Adapun orang-orang yang takut pada kebesaran Tuhannya dan menahan diri dari (keinginan) hawa nafsunya,",
      },
      {
        'no': '41',
        'arabic': "فَاِنَّ الْجَنَّةَ هِيَ الْمَأْوٰىۗ",
        'transliteration': "Fa innal-jannata hiyal-ma'wā.",
        'translation': "sesungguhnya surgalah tempat tinggal(-nya).",
      },
      {
        'no': '42',
        'arabic': "يَسْـَٔلُوْنَكَ عَنِ السَّاعَةِ اَيَّانَ مُرْسٰىهَاۗ",
        'transliteration': "Yas'alūnaka ‘anis-sā‘ati ayyāna mursāhā.",
        'translation':
            "Mereka (orang-orang kafir) bertanya kepadamu (Nabi Muhammad) tentang hari Kiamat, “Kapankah terjadinya?”",
      },
      {
        'no': '43',
        'arabic': "فِيْمَ اَنْتَ مِنْ ذِكْرٰىهَاۗ",
        'transliteration': "Fīma anta min żikrāhā.",
        'translation': "Untuk apa engkau perlu menyebutkan (waktu)-nya?",
      },
      {
        'no': '44',
        'arabic': "اِلٰى رَبِّكَ مُنْتَهٰىهَاۗ",
        'transliteration': "Ilā rabbika muntahāhā.",
        'translation':
            "Kepada Tuhanmulah (dikembalikan) kesudahan (ketentuan waktu)-nya.",
      },
      {
        'no': '45',
        'arabic': "اِنَّمَآ اَنْتَ مُنْذِرُ مَنْ يَّخْشٰىهَاۗ",
        'transliteration': "Innamā anta munżiru may yakhsyāhā.",
        'translation':
            "Engkau (Nabi Muhammad) hanyalah pemberi peringatan kepada siapa yang takut padanya (hari Kiamat).",
      },
      {
        'no': '46',
        'arabic':
            "كَاَنَّهُمْ يَوْمَ يَرَوْنَهَا لَمْ يَلْبَثُوْٓا اِلَّا عَشِيَّةً اَوْ ضُحٰىهَا ࣖ",
        'transliteration':
            "Ka'annahum yauma yaraunahā lam yalbaṡū illā ‘asyiyyatan au ḍuḥāhā.",
        'translation':
            "Pada hari ketika melihatnya (hari Kiamat itu), mereka merasa seakan-akan hanya (sebentar) tinggal (di dunia) pada waktu petang atau pagi.",
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
          widget.surahData['name'] ?? 'An-Nazi\'at',
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
                "${widget.surahData['verses'] ?? 46} Ayat",
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
