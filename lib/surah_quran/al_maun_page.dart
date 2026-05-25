import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlMaunPage extends StatelessWidget {
  final Map<String, dynamic> surahData;

  const AlMaunPage({super.key, required this.surahData});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> ayatList = [
      {
        'no': '1',
        'arabic': "اَرَاَيْتَ الَّذِيْ يُكَذِّبُ بِالدِّيْنِۗ",
        'transliteration': "Ara'aital-lażī yukażżibu bid-dīn(i).",
        'translation': "Tahukah kamu (orang) yang mendustakan agama?",
      },
      {
        'no': '2',
        'arabic': "فَذٰلِكَ الَّذِيْ يَدُعُّ الْيَتِيْمَۙ",
        'transliteration': "Fa żālikal-lażī yadu‘‘ul-yatīm(a).",
        'translation': "Itulah orang yang menghardik anak yatim",
      },
      {
        'no': '3',
        'arabic': "وَلَا يَحُضُّ عَلٰى طَعَامِ الْمِسْكِيْنِۗ",
        'transliteration': "Wa lā yaḥuḍḍu ‘alā ṭa‘āmil-miskīn(i).",
        'translation':
            "dan tidak menganjurkan untuk memberi makan orang miskin.",
      },
      {
        'no': '4',
        'arabic': "فَوَيْلٌ لِّلْمُصَلِّيْنَۙ",
        'transliteration': "Fawailul lil-muṣallīn(a).",
        'translation': "Celakalah orang-orang yang melaksanakan salat,",
      },
      {
        'no': '5',
        'arabic': "الَّذِيْنَ هُمْ عَنْ صَلَاتِهِمْ سَاهُوْنَۙ",
        'transliteration': "Al-lażīna hum ‘an ṣalātihim sāhūn(a).",
        'translation': "(yaitu) orang-orang yang lalai terhadap salatnya,",
      },
      {
        'no': '6',
        'arabic': "الَّذِيْنَ هُمْ يُرَاۤءُوْنَۙ",
        'transliteration': "Al-lażīna hum yurā'ūn(a).",
        'translation': "yang berbuat ria,",
      },
      {
        'no': '7',
        'arabic': "وَيَمْنَعُوْنَ الْمَاعُوْنَࣖ",
        'transliteration': "Wa yamna‘ūnal-mā‘ūn(a).",
        'translation': "dan enggan (memberikan) bantuan.",
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
          surahData['name'] ?? "Al-Ma'un",
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
                  "${surahData['verses'] ?? 7} Ayat",
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
