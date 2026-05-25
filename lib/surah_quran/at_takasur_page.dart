import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AtTakasurPage extends StatelessWidget {
  final Map<String, dynamic> surahData;

  const AtTakasurPage({super.key, required this.surahData});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> ayatList = [
      {
        'no': '1',
        'arabic': "اَلْهٰىكُمُ التَّكَاثُرُۙ",
        'transliteration': "Alhākumut-takāṡur(u).",
        'translation': "Bermegah-megahan telah melalaikan kamu",
      },
      {
        'no': '2',
        'arabic': "حَتّٰى زُرْتُمُ الْمَقَابِرَۗ",
        'transliteration': "Ḥattā zurtumul-maqābir(a).",
        'translation': "sampai kamu masuk ke dalam kubur.",
      },
      {
        'no': '3',
        'arabic': "كَلَّا سَوْفَ تَعْلَمُوْنَۙ",
        'transliteration': "Kallā saufa ta‘lamūn(a).",
        'translation':
            "Sekali-kali tidak! Kelak kamu akan mengetahui (akibat perbuatanmu itu).",
      },
      {
        'no': '4',
        'arabic': "ثُمَّ كَلَّا سَوْفَ تَعْلَمُوْنَ",
        'transliteration': "Ṡumma kallā saufa ta‘lamūn(a).",
        'translation':
            "Kemudian sekali-kali tidak! Kelak kamu akan mengetahui.",
      },
      {
        'no': '5',
        'arabic': "كَلَّا لَوْ تَعْلَمُوْنَ عِلْمَ الْيَقِيْنِۗ",
        'transliteration': "Kallā lau ta‘lamūna ‘ilmal-yaqīn(i).",
        'translation':
            "Sekali-kali tidak! Sekiranya kamu mengetahui dengan pasti (niscaya kamu tidak akan lengah).",
      },
      {
        'no': '6',
        'arabic': "لَتَرَوُنَّ الْجَحِيْمَۙ",
        'transliteration': "Latarawunnal-jaḥīm(a).",
        'translation': "Pasti kamu benar-benar akan melihat (neraka) Jahim.",
      },
      {
        'no': '7',
        'arabic': "ثُمَّ لَتَرَوُنَّهَا عَيْنَ الْيَقِيْنِۙ",
        'transliteration': "Ṡumma latarawunnahā ‘ainal-yaqīn(i).",
        'translation':
            "Kemudian kamu pasti benar-benar akan melihatnya dengan ‘ainulyakin.",
      },
      {
        'no': '8',
        'arabic': "ثُمَّ لَتُسْـَٔلُنَّ يَوْمَىِٕذٍ عَنِ النَّعِيْمِࣖ",
        'transliteration': "Ṡumma latus'alunna yauma'iżin ‘anin-na‘īm(i).",
        'translation':
            "Kemudian kamu pasti akan ditanya pada hari itu tentang kenikmatan (yang megah di dunia itu).",
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
          surahData['name'] ?? 'At-Takasur',
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
                  "${surahData['verses'] ?? 8} Ayat",
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
