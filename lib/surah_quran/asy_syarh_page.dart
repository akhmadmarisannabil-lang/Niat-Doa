import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AsySyarhPage extends StatelessWidget {
  final Map<String, dynamic> surahData;

  const AsySyarhPage({super.key, required this.surahData});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> ayatList = [
      {
        'no': '1',
        'arabic': "اَلَمْ نَشْرَحْ لَكَ صَدْرَكَۙ",
        'transliteration': "Alam nasyraḥ laka ṣadrak(a).",
        'translation':
            "Bukankah Kami telah melapangkan dadamu (Nabi Muhammad),",
      },
      {
        'no': '2',
        'arabic': "وَوَضَعْنَا عَنْكَ وِزْرَكَۙ",
        'transliteration': "Wa waḍa‘nā ‘anka wizrak(a).",
        'translation': "meringankan beban (tugas-tugas kenabian) darimu",
      },
      {
        'no': '3',
        'arabic': "الَّذِيْٓ اَنْقَضَ ظَهْرَكَۙ",
        'transliteration': "Allażī anqaḍa ẓahrak(a).",
        'translation': "yang memberatkan punggungmu,",
      },
      {
        'no': '4',
        'arabic': "وَرَفَعْنَا لَكَ ذِكْرَكَۗ",
        'transliteration': "Wa rafa‘nā laka żikrak(a).",
        'translation':
            "dan meninggikan (derajat)-mu (dengan selalu) menyebut-nyebut (nama)-mu?",
      },
      {
        'no': '5',
        'arabic': "فَاِنَّ مَعَ الْعُسْرِ يُسْرًاۙ",
        'transliteration': "Fa inna ma‘al-‘usri yusrā(n).",
        'translation': "Maka, sesungguhnya beserta kesulitan ada kemudahan.",
      },
      {
        'no': '6',
        'arabic': "اِنَّ مَعَ الْعُسْرِ يُسْرًاۗ",
        'transliteration': "Inna ma‘al-‘usri yusrā(n).",
        'translation': "Sesungguhnya beserta kesulitan ada kemudahan.",
      },
      {
        'no': '7',
        'arabic': "فَاِذَا فَرَغْتَ فَانْصَبْۙ",
        'transliteration': "Fa iżā faragta fanṣab.",
        'translation':
            "apabila engkau telah selesai (dari suatu urusan), tetaplah bekerja keras (untuk kebajikan yang lain)",
      },
      {
        'no': '8',
        'arabic': "وَاِلٰى رَبِّكَ فَارْغَبْࣖ",
        'transliteration': "Wa ilā rabbika fargab.",
        'translation': "dan hanya kepada Tuhanmu berharaplah!",
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
          surahData['name'] ?? 'Asy-Syarh',
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
