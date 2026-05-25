import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlInfitarPage extends StatelessWidget {
  final Map<String, dynamic> surahData;

  const AlInfitarPage({super.key, required this.surahData});

  @override
  Widget build(BuildContext context) {
    // Data resmi Surah Al-Infitar Ayat 1 - 19 (NU Online / Kemenag RI)
    final List<Map<String, dynamic>> ayatList = [
      {
        'no': '1',
        'arabic': "اِذَا السَّمَاۤءُ انْفَطَرَتْۙ",
        'transliteration': "Iżas-samā'unfaṭarat.",
        'translation': "Apabila langit terbelah,",
      },
      {
        'no': '2',
        'arabic': "وَاِذَا الْكَوَاكِبُ انْتَثَرَتْۙ",
        'transliteration': "Wa iżal-kawākibuntasaarat.",
        'translation': "apabila bintang-bintang jatuh berserakan,",
      },
      {
        'no': '3',
        'arabic': "وَاِذَا الْبِحَارُ فُجِّرَتْۙ",
        'transliteration': "Wa iżal-biḥāru fujjirat,",
        'translation': "apabila lautan diluapkan,",
      },
      {
        'no': '4',
        'arabic': "وَاِذَا الْقُبُوْرُ بُعْثِرَتْۙ",
        'transliteration': "Wa iżal-qubūru bu‘sirat,",
        'translation': "dan apabila kuburan-kuburan dibongkar,",
      },
      {
        'no': '5',
        'arabic': "عَلِمَتْ نَفْسٌ مَّا قَدَّمَتْ وَاَخَّرَتْۗ",
        'transliteration': "‘alimat nafsum-mā qaddamat wa akhkharat.",
        'translation':
            "setiap jiwa akan mengetahui apa yang telah dikerjakan dan yang dilalaikan(nya).",
      },
      {
        'no': '6',
        'arabic': "يٰٓاَيُّهَا الْاِنْسَانُ مَا غَرَّكَ بِرَبِّكَ الْكَرِيْمِۙ",
        'transliteration': "Yā ayyuhal-insānu mā garraka birabbikal-karīm(i),",
        'translation':
            "Wahai manusia, apakah yang telah memperdayakanmu (berbuat durhaka) kepada Tuhanmu Yang Maha Mulia,",
      },
      {
        'no': '7',
        'arabic': "الَّذِيْ خَلَقَكَ فَسَوّٰىكَ فَعَدَلَكَۙ",
        'transliteration': "allażī khalaqaka fasawwāka fa‘adalak(a),",
        'translation':
            "yang telah menciptakanmu lalu menyempurnakan kejadianmu dan menjadikan (susunan tubuh)-mu seimbang?",
      },
      {
        'no': '8',
        'arabic': "فِيْٓ اَيِّ صُوْرَةٍ مَّا شَاۤءَ رَكَّبَكَۗ",
        'transliteration': "fī ayyi ṣūratim-mā syā'a rakkabak(a).",
        'translation':
            "Dalam bentuk apa saja yang dikehendaki, Dia menyusun (tubuh)-mu.",
      },
      {
        'no': '9',
        'arabic': "كَلَّا بَلْ تُكَذِّبُوْنَ بِالدِّيْنِۙ",
        'transliteration': "Kallā bal tukażżibūna bid-dīn(i).",
        'translation':
            "Jangan sekali-kali begitu! Bahkan, kamu mendustakan hari Pembalasan.",
      },
      {
        'no': '10',
        'arabic': "وَاِنَّ عَلَيْكُمْ لَحٰفِظِيْنَۙ",
        'transliteration': "Wa inna ‘alaikum laḥāfiẓīn(a),",
        'translation':
            "Sesungguhnya bagi kamu ada (malaikat-malaikat) pengawas",
      },
      {
        'no': '11',
        'arabic': "كِرَامًا كَاتِبِيْنَۙ",
        'transliteration': "kirāman kātibīn(a),",
        'translation':
            "yang mulia (di sisi Allah) dan mencatat (amal perbuatanmu).",
      },
      {
        'no': '12',
        'arabic': "يَعْلَمُوْنَ مَا تَفْعَلُوْنَ",
        'transliteration': "ya‘lamūna mā taf‘alūn(a).",
        'translation': "Mereka mengetahui apa yang kamu kerjakan.",
      },
      {
        'no': '13',
        'arabic': "اِنَّ الْاَبْرَارَ لَفِيْ نَعِيْمٍۙ",
        'transliteration': "Innal-abrāra lafī na‘īm(in).",
        'translation':
            "Sesungguhnya orang-orang yang berbakti benar-benar berada dalam (surga yang penuh) kenikmatan.",
      },
      {
        'no': '14',
        'arabic': "وَاِنَّ الْفُجَّارَ لَفِيْ جَحِيْمٍۚ",
        'transliteration': "Wa innal-fujjāra lafī jaḥīm(in),",
        'translation':
            "Sesungguhnya orang-orang yang durhaka benar-benar berada dalam (neraka) Jahim.",
      },
      {
        'no': '15',
        'arabic': "يَصْلَوْنَهَا يَوْمَ الدِّيْنِ",
        'transliteration': "yaṣlaunahā yaumad-dīn(i).",
        'translation': "Mereka memasukinya pada hari Pembalasan.",
      },
      {
        'no': '16',
        'arabic': "وَمَا هُمْ عَنْهَا بِغَاۤئِبِيْنَۗ",
        'transliteration': "Wa mā hum ‘anhā bigā'ibīn(a).",
        'translation': "Mereka tidak mungkin keluar dari (neraka) itu.",
      },
      {
        'no': '17',
        'arabic': "وَمَآ اَدْرٰىكَ مَا يَوْمُ الدِّيْنِۙ",
        'transliteration': "Wa mā adrāka mā yaumud-dīn(i).",
        'translation': "Tahukah engkau apakah hari Pembalasan itu?",
      },
      {
        'no': '18',
        'arabic': "ثُمَّ مَآ اَدْرٰىكَ مَا يَوْمُ الدِّيْنِۗ",
        'transliteration': "Ṡumma mā adrāka mā yaumud-dīn(i).",
        'translation': "Kemudian, tahukah engkau apakah hari Pembalasan itu?",
      },
      {
        'no': '19',
        'arabic':
            "يَوْمَ لَا تَمْلِكُ نَفْسٌ لِّنَفْسٍ شَيْـًٔاۗ وَالْاَمْرُ يَوْمَئِذٍ لِّلّٰهِࣖ",
        'transliteration':
            "Yauma lā tamliku nafsul-linafsin syai'ā(n), wal-amru yauma'iżil-lillāh(i).",
        'translation':
            "(Itulah) hari (ketika) seseorang tidak berdaya (menolong) orang lain sedikit pun. Segala urusan pada hari itu adalah milik Allah.",
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
          surahData['name'] ?? 'Al-Infitar',
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
          // Bagian Tag info Surah (Sama persis dengan Al-Fatihah)
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
                  "${surahData['verses'] ?? 19} Ayat",
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

          // Loop susunan ayat secara vertikal
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
                    // Sub-header nomor ayat
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

                    // 1. Kotak Teks Arab (Rata Tengah)
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
                          fontWeight: FontWeight.normal,
                          height: 2.2,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // 2. Kotak Transliterasi
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

                    // 3. Kotak Terjemahan
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
