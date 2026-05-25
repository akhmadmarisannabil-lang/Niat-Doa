import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlHumazahPage extends StatelessWidget {
  final Map<String, dynamic> surahData;

  const AlHumazahPage({super.key, required this.surahData});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> ayatList = [
      {
        'no': '1',
        'arabic': "وَيْلٌ لِّكُلِّ هُمَزَةٍ لُّمَزَةٍۙ",
        'transliteration': "Wailul likulli humazatil lumazah(tin).",
        'translation': "Celakalah bagi setiap pengumpat lagi pencela,",
      },
      {
        'no': '2',
        'arabic': "الَّذِيْ جَمَعَ مَالًا وَّعَدَّدَهٗۙ",
        'transliteration': "Al-lażī jama‘a mālaw wa ‘addadah(ū).",
        'translation': "yang mengumpulkan harta dan menghitung-hitungnya.",
      },
      {
        'no': '3',
        'arabic': "يَحْسَبُ اَنَّ مَالَهٗٓ اَخْلَدَهٗۚ",
        'transliteration': "Yaḥsabu anna mālahū akhladah(ū).",
        'translation':
            "Dia (manusia) mengira bahwa hartanya itu dapat mengekalkannya.",
      },
      {
        'no': '4',
        'arabic': "كَلَّا لَيُنْۢبَذَنَّ فِى الْحُطَمَةِۖ",
        'transliteration': "Kallā layumbażanna fil-ḥuṭamah(ti).",
        'translation':
            "Sekali-kali tidak! Pasti dia akan dilemparkan ke dalam (neraka) Hutamah.",
      },
      {
        'no': '5',
        'arabic': "وَمَآ اَدْرٰىكَ مَا الْحُطَمَةُۗ",
        'transliteration': "Wa mā adrāka mal-ḥuṭamah(tu).",
        'translation': "Tahukah kamu apakah (neraka) Hutamah itu?",
      },
      {
        'no': '6',
        'arabic': "نَارُ اللّٰهِ الْمُوْقَدَةُۙ",
        'transliteration': "Nārullāhil-mūqadah(tu).",
        'translation': "(Ia adalah) api (azab) Allah yang dinyalakan,",
      },
      {
        'no': '7',
        'arabic': "الَّتِيْ تَطَّلِعُ عَلَى الْاَفْـِٕدَةِۗ",
        'transliteration': "Allatī taṭṭali‘u ‘alal-af'idah(ti).",
        'translation': "yang (membakar) sampai ke hati.",
      },
      {
        'no': '8',
        'arabic': "اِنَّهَا عَلَيْهِمْ مُّؤْصَدَةٌۙ",
        'transliteration': "Innahā ‘alaihim mu'ṣadah(tun).",
        'translation':
            "Sesungguhnya dia (api itu) tertutup rapat (sebagai hukuman) atas mereka,",
      },
      {
        'no': '9',
        'arabic': "فِيْ عَمَدٍ مُّمَدَّدَةٍࣖ",
        'transliteration': "Fī ‘amadim mumaddadah(tin).",
        'translation':
            "(sedangkan mereka) diikat pada tiang-tiang yang panjang.",
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
          surahData['name'] ?? 'Al-Humazah',
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
                  "${surahData['verses'] ?? 9} Ayat",
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
