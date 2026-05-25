import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlBaladPage extends StatelessWidget {
  final Map<String, dynamic> surahData;

  const AlBaladPage({super.key, required this.surahData});

  @override
  Widget build(BuildContext context) {
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
      backgroundColor: const Color(0xff090f16),
      appBar: AppBar(
        backgroundColor: const Color(0xff090f16),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white70),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          surahData['name'] ?? 'Al-Balad',
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
                  "${surahData['verses'] ?? 20} Ayat",
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
