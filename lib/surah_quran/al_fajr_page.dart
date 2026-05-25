import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlFajrPage extends StatelessWidget {
  final Map<String, dynamic> surahData;

  const AlFajrPage({super.key, required this.surahData});

  @override
  Widget build(BuildContext context) {
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
      backgroundColor: const Color(0xff090f16),
      appBar: AppBar(
        backgroundColor: const Color(0xff090f16),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white70),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          surahData['name'] ?? 'Al-Fajr',
          style: const TextStyle(
            color: Colors.white,
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
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  surahData['type'] ?? "MAKKIYAH",
                  style: const TextStyle(color: Colors.white70, fontSize: 11),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "${surahData['verses'] ?? 30} Ayat",
                  style: const TextStyle(color: Colors.white70, fontSize: 11),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  "Juz 30",
                  style: TextStyle(color: Colors.white70, fontSize: 11),
                ),
              ),
            ],
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
                        const Icon(
                          Icons.menu_book,
                          color: Colors.tealAccent,
                          size: 18,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          "Ayat ${ayat['no']}",
                          style: const TextStyle(
                            color: Colors.tealAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 28,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xff111a24),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        ayat['arabic'],
                        textAlign: TextAlign.center,
                        style: GoogleFonts.amiri(
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 24,
                          height: 2.2,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      "Transliterasi",
                      style: TextStyle(
                        color: Colors.tealAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: const Color(0xff111a24),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        ayat['transliteration'],
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                          fontStyle: FontStyle.italic,
                          height: 1.4,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      "Terjemahan",
                      style: TextStyle(
                        color: Colors.tealAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: const Color(0xff111a24),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          color: Colors.teal.withOpacity(0.15),
                        ),
                      ),
                      child: Text(
                        ayat['translation'],
                        style: const TextStyle(
                          color: Colors.white70,
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
}
