import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AtTakwirPage extends StatefulWidget {
  final Map<String, dynamic> surahData;

  const AtTakwirPage({super.key, required this.surahData});

  @override
  State<AtTakwirPage> createState() => _AtTakwirPageState();
}

class _AtTakwirPageState extends State<AtTakwirPage> {
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

    // Sampel Data Ayat Resmi At-Takwir
    final List<Map<String, dynamic>> ayatList = [
      {
        'no': '1',
        'arabic': "اِذَا الشَّمْسُ كُوِّرَتْۖ",
        'transliteration': "Iżaš-syamsu kuwwirat.",
        'translation': "Apabila matahari digulung,",
      },
      {
        'no': '2',
        'arabic': "وَاِذَا النُّجُوْمُ انْكَدَرَتْۖ",
        'transliteration': "Wa iżan-nujūmunkadarat.",
        'translation': "apabila bintang-bintang berjatuhan,",
      },
      {
        'no': '3',
        'arabic': "وَاِذَا الْجِبَالُ سُيِّرَتْۖ",
        'transliteration': "Wa iżal-jibālu suyyirat.",
        'translation': "apabila gunung-gunung dihancurkan,",
      },
      {
        'no': '4',
        'arabic': "وَاِذَا الْعِشَارُ عُطِّلَتْۖ",
        'transliteration': "Wa iżal-‘isyāru ‘uṭṭilat.",
        'translation':
            "apabila unta-unta yang bunting ditinggalkan (tidak terurus),",
      },
      {
        'no': '5',
        'arabic': "وَاِذَا الْوُحُوْشُ حُشِرَتْۖ",
        'transliteration': "Wa iżal-wuḥūsyu ḥusyirat.",
        'translation': "apabila binatang-binatang liar dikumpulkan,",
      },
      {
        'no': '6',
        'arabic': "وَاِذَا الْبِحَارُ سُجِّرَتْۖ",
        'transliteration': "Wa iżal-biḥāru sujjirat.",
        'translation': "apabila lautan dipanaskan,",
      },
      {
        'no': '7',
        'arabic': "وَاِذَا النُّفُوْسُ زُوِّجَتْۖ",
        'transliteration': "Wa iżan-nufūsu zuwwijat.",
        'translation': "apabila roh-roh dipertemukan (dengan tubuh),",
      },
      {
        'no': '8',
        'arabic': "وَاِذَا الْمَوْؤٗدَةُ سُىِٕلَتْۖ",
        'transliteration': "Wa iżal-ma'ūdatu su'ilat,",
        'translation':
            "apabila bayi-bayi perempuan yang dikubur hidup-hidup ditanya,",
      },
      {
        'no': '9',
        'arabic': "بِاَيِّ ذَنْۢبٍ قُتِلَتْۚ",
        'transliteration': "bi'ayyi żambin qutilat.",
        'translation': "karena dosa apa dia dibunuh,",
      },
      {
        'no': '10',
        'arabic': "وَاِذَا الصُّحُفُ نُشِرَتْۖ",
        'transliteration': "Wa iżaṣ-ṣuḥufu nusyirat.",
        'translation':
            "apabila lembaran-lembaran (catatan amal) telah dibuka lebar-lebar,",
      },
      {
        'no': '11',
        'arabic': "وَاِذَا السَّمَاۤءُ كُشِطَتْۖ",
        'transliteration': "Wa iżas-samā'u kusyiṭat.",
        'translation': "apabila langit dilenyapkan,",
      },
      {
        'no': '12',
        'arabic': "وَاِذَا الْجَحِيْمُ سُعِّرَتْۖ",
        'transliteration': "Wa iżal-jaḥīmu su‘‘irat.",
        'translation': "apabila (neraka) Jahim dinyalakan,",
      },
      {
        'no': '13',
        'arabic': "وَاِذَا الْجَنَّةُ اُزْلِفَتْۖ",
        'transliteration': "Wa iżal-jannatu uzlifat,",
        'translation': "dan apabila surga didekatkan,",
      },
      {
        'no': '14',
        'arabic': "عَلِمَتْ نَفْسٌ مَّآ اَحْضَرَتْۗ",
        'transliteration': "‘alimat nafsum-mā aḥḍarat.",
        'translation':
            "setiap jiwa akan mengetahui apa yang telah dikerjakannya.",
      },
      {
        'no': '15',
        'arabic': "فَلَآ اُقْسِمُ بِالْخُنَّسِۙ",
        'transliteration': "Falā uqsimu bil-khunnas(i),",
        'translation': "Aku bersumpah demi bintang-bintang",
      },
      {
        'no': '16',
        'arabic': "الْجَوَارِ الْكُنَّسِۙ",
        'transliteration': "al-jawāril-kunnas(i),",
        'translation': "yang beredar lagi terbenam,",
      },
      {
        'no': '17',
        'arabic': "وَاللَّيْلِ اِذَا عَسْعَسَۙ",
        'transliteration': "wal-laili iżā ‘as‘as(a),",
        'translation': "demi malam apabila telah larut,",
      },
      {
        'no': '18',
        'arabic': "وَالصُّبْحِ اِذَا تَنَفَّسَۙ",
        'transliteration': "waṣ-ṣubḥi iżā tanaffas(a),",
        'translation': "demi subuh apabila (fajar) telah menyingsing,",
      },
      {
        'no': '19',
        'arabic': "اِنَّهٗ لَقَوْلُ رَسُوْلٍ كَرِيْمٍۙ",
        'transliteration': "Innahū laqaulu rasūlin karīm(in),",
        'translation':
            "sesungguhnya (Al-Qur’an) itu benar-benar firman (Allah yang dibawa oleh) utusan yang mulia (Jibril)",
      },
      {
        'no': '20',
        'arabic': "ذِيْ قُوَّةٍ عِنْدَ ذِي الْعَرْشِ مَكِيْنٍۙ",
        'transliteration': "żī quwwatin ‘inda żil-‘arsyi makīn(in),",
        'translation':
            "yang memiliki kekuatan dan kedudukan tinggi di sisi (Allah) yang memiliki ʻArasy,",
      },
      {
        'no': '21',
        'arabic': "مُّطَاعٍ ثَمَّ اَمِيْنٍۗ",
        'transliteration': "muṭā‘in ṡamma amīn(in).",
        'translation': "yang di sana (Jibril) ditaati lagi dipercaya.",
      },
      {
        'no': '22',
        'arabic': "وَمَا صَاحِبُكُمْ بِمَجْنُوْنٍۚ",
        'transliteration': "Wa mā ṣāḥibukum bimajnūn(in).",
        'translation': "Temanmu (Nabi Muhammad) itu bukanlah orang gila.",
      },
      {
        'no': '23',
        'arabic': "وَلَقَدْ رَاٰهُ بِالْاُفُقِ الْمُبِيْنِۚ",
        'transliteration': "Wa laqad ra'āhu bil-ufuqil-mubīn(i).",
        'translation':
            "Sungguh, dia (Nabi Muhammad) benar-benar telah melihatnya (Jibril) di ufuk yang terang.",
      },
      {
        'no': '24',
        'arabic': "وَمَا هُوَ عَلَى الْغَيْبِ بِضَنِيْنٍۚ",
        'transliteration': "Wa huw ‘alal-gaibi biḍanīn(in).",
        'translation':
            "Dia (Nabi Muhammad) bukanlah seorang yang kikir (enggan) untuk menerangkan yang gaib.",
      },
      {
        'no': '25',
        'arabic': "وَمَا هُوَ بِقَوْلِ شَيْطٰانٍ رَّجِيْمٍۚ",
        'transliteration': "Wa mā huwa bikauli syaiṭānir-rajīm(in).",
        'translation':
            "(Al-Qur’an) itu bukanlah perkataan setan yang terkutuk.",
      },
      {
        'no': '26',
        'arabic': "فَاَيْنَ تَذْهَبُوْنَۗ",
        'transliteration': "Fa ayna tażhabūn(a).",
        'translation': "Maka, ke manakah kamu akan pergi?",
      },
      {
        'no': '27',
        'arabic': "اِنْ هُوَ اِلَّا ذِكْرٌ لِّلْعٰلَمِيْنَۙ",
        'transliteration': "In huwa illā żikrul-lil-‘ālamīn(a),",
        'translation':
            "(Al-Qur’an) itu tidak lain, kecuali peringatan bagi semesta alam,",
      },
      {
        'no': '28',
        'arabic': "لِمَنْ شَاۤءَ مِنْكُمْ اَنْ يَّسْتَقِيْمَۗ",
        'transliteration': "liman syā'a minkum ay yastaqīm(a).",
        'translation':
            "(yaitu) bagi siapa di antaramu yang hendak menempuh jalan yang lurus.",
      },
      {
        'no': '29',
        'arabic':
            "وَمَا تَشَاۤءُوْنَ اِلَّآ اَنْ يَّشَاۤءَ اللّٰهُ رَبُّ الْعٰلَمِيْنَࣖ",
        'transliteration':
            "Wa mā tasayā'ūna illā ay yasya'allāhu rabbul-‘ālamīn(a).",
        'translation':
            "Kamu tidak dapat berkehendak, kecuali apabila dikehendaki Allah, Tuhan semesta alam.",
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
          widget.surahData['name'] ?? 'At-Takwir',
          style: TextStyle(
            color: mainTextColor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
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
                "${widget.surahData['verses'] ?? 29} Ayat",
                chipBgColor,
                chipTextColor,
              ),
              _buildChip("Juz 30", chipBgColor, chipTextColor),
            ],
          ),
          const SizedBox(height: 24),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: ayatList.length,
            itemBuilder: (context, index) {
              final ayat = ayatList[index];
              return _buildAyatItem(
                ayat,
                cardColor,
                borderColor,
                arabicTextColor,
                accentColor,
                subTextColor,
                isLightMode,
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

  Widget _buildAyatItem(
    Map<String, dynamic> ayat,
    Color cardColor,
    Color borderColor,
    Color arabicTextColor,
    Color accentColor,
    Color subTextColor,
    bool isLightMode,
  ) {
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
            ],
          ),
          const SizedBox(height: 12),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 28),
            decoration: BoxDecoration(
              color: cardColor,
              borderRadius: BorderRadius.circular(12),
              border: isLightMode ? Border.all(color: borderColor) : null,
            ),
            child: Text(
              ayat['arabic'],
              textAlign: TextAlign.center,
              style: GoogleFonts.amiri(
                color: arabicTextColor,
                fontSize: 24,
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
              border: isLightMode ? Border.all(color: borderColor) : null,
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
              style: TextStyle(color: subTextColor, fontSize: 14, height: 1.4),
            ),
          ),
        ],
      ),
    );
  }
}
