import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AdDuhaPage extends StatelessWidget {
  final Map<String, dynamic> surahData;

  const AdDuhaPage({super.key, required this.surahData});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> ayatList = [
      {
        'no': '1',
        'arabic': "وَالضُّحٰىۙ",
        'transliteration': "Waḍ-ḍuḥā.",
        'translation': "Demi waktu duha",
      },
      {
        'no': '2',
        'arabic': "وَاللَّيْلِ اِذَا سَجٰىۙ",
        'transliteration': "Wal-laili iżā sajā.",
        'translation': "dan demi waktu malam apabila telah sunyi,",
      },
      {
        'no': '3',
        'arabic': "مَا وَدَّعَكَ رَبُّكَ وَمَا قَلٰىۗ",
        'transliteration': "Mā wadda‘aka rabbuka wa mā qalā.",
        'translation':
            "Tuhanmu (Nabi Muhammad) tidak meninggalkan dan tidak (pula) membencimu.",
      },
      {
        'no': '4',
        'arabic': "وَلَلْاٰخِرَةُ خَيْرٌ لَّكَ مِنَ الْاُوْلٰىۗ",
        'transliteration': "Wa lal-ākhiratu khairul laka minal-ūlā.",
        'translation':
            "Sungguh, akhirat itu lebih baik bagimu daripada yang permulaan (dunia).",
      },
      {
        'no': '5',
        'arabic': "وَلَسَوْفَ يُعْطِيْكَ رَبُّكَ فَتَرْضٰىۗ",
        'transliteration': "Wa lasaufa yu‘ṭīka rabbuka fatarḍā.",
        'translation':
            "Sungguh, kelak (di akhirat nanti) Tuhanmu pasti memberikan karunia-Nya kepadamu sehingga engkau rida.",
      },
      {
        'no': '6',
        'arabic': "اَلَمْ يَجِدْكَ يَتِيْمًا فَاٰوٰىۖ",
        'transliteration': "Alam yajidka yatīman fa āwā.",
        'translation':
            "Bukankah Dia mendapatimu sebagai seorang yatim, lalu Dia melindungi(-mu);",
      },
      {
        'no': '7',
        'arabic': "وَوَجَدَكَ ضَاۤلًّا فَهَدٰىۖ",
        'transliteration': "Wa wajadaka ḍāllan fahadā.",
        'translation':
            "mendapatimu sebagai seorang yang tidak tahu (tentang syariat), lalu Dia memberimu petunjuk (wahyu);",
      },
      {
        'no': '8',
        'arabic': "وَوَجَدَكَ عَۤإِلًا فَاَغْنٰىۗ",
        'transliteration': "Wa wajadaka ‘ā'ilan fa agnā.",
        'translation':
            "dan mendapatimu sebagai seorang yang fakir, lalu Dia memberimu kecukupan?",
      },
      {
        'no': '9',
        'arabic': "فَاَمَّا الْيَتِيْمَ فَلَا تَقْهَرْۗ",
        'transliteration': "Fa ammal-yatīma falā taqhar.",
        'translation':
            "Terhadap anak yatim, janganlah engkau berlaku sewenang-wenang.",
      },
      {
        'no': '10',
        'arabic': "وَاَمَّا السَّاۤىِٕلَ فَلَا تَنْهَرْ",
        'transliteration': "Wa ammas-sā'ila falā tanhar.",
        'translation':
            "Terhadap orang yang meminta-minta, janganlah engkau menghardik.",
      },
      {
        'no': '11',
        'arabic': "وَاَمَّا بِنِعْمَةِ رَبِّكَ فَحَدِّثْࣖ",
        'transliteration': "Wa ammā bini‘mati rabbika fa ḥaddiṡ.",
        'translation':
            "Terhadap nikmat Tuhanmu, nyatakanlah (dengan bersyukur).",
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
          surahData['name'] ?? 'Ad-Duha',
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
                  "${surahData['verses'] ?? 11} Ayat",
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
