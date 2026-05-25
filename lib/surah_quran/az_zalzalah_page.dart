import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AzZalzalahPage extends StatelessWidget {
  final Map<String, dynamic> surahData;

  const AzZalzalahPage({super.key, required this.surahData});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> ayatList = [
      {
        'no': '1',
        'arabic': "اِذَا زُلْزِلَتِ الْاَرْضُ زِلْزَالَهَاۙ",
        'transliteration': "Iżā zulzilatil-arḍu zilzālahā.",
        'translation':
            "Apabila bumi diguncangkan dengan guncangan yang dahsyat,",
      },
      {
        'no': '2',
        'arabic': "وَاَخْرَجَتِ الْاَرْضُ اَثْقَالَهَاۙ",
        'transliteration': "Wa akhrajatil-arḍu aṡqālahā.",
        'translation': "bumi mengeluarkan isi perutnya,",
      },
      {
        'no': '3',
        'arabic': "وَقَالَ الْاِنْسَانُ مَا لَهَاۚ",
        'transliteration': "Wa qālal-insānu mā lahā.",
        'translation':
            "dan manusia bertanya, “Apa yang terjadi dengannya (bumi)?”",
      },
      {
        'no': '4',
        'arabic': "يَوْمَىِٕذٍ تُحَدِّثُ اَخْبَارَهَاۙ",
        'transliteration': "Yauma'iżin tuḥaddiṡu akhbārahā.",
        'translation':
            "Pada hari itu (bumi) menyampaikan berita (tentang apa yang diperbuat manusia di atasnya)",
      },
      {
        'no': '5',
        'arabic': "بِاَنَّ رَبَّكَ اَوْحٰى لَهَاۗ",
        'transliteration': "Bi'anna rabbaka auḥā lahā.",
        'translation':
            "karena sesungguhnya Tuhanmu telah memerintahkan (yang demikian itu) kepadanya.",
      },
      {
        'no': '6',
        'arabic':
            "يَوْمَىِٕذٍ يَّصْدُرُ النَّASُ اَشْتَاتًاۙ لِّيُرَوْا اَعْمَالَهُمْۗ",
        'transliteration':
            "Yauma'iżiy yaṣdurun-nāsu asytātal liyurau a‘mālahum.",
        'translation':
            "Pada hari itu manusia keluar (dari kuburnya) dalam keadaan terpencar untuk diperlihatkan kepada mereka (balasan) semua perbuatan mereka.",
      },
      {
        'no': '7',
        'arabic': "فَمَنْ يَّعْمَلْ مِثْقَالَ ذَرَّةٍ خَيْرًا يَّرَهٗۚ",
        'transliteration': "Famay ya‘mal miṡqāla żarratin khairay yarah(ū).",
        'translation':
            "Siapa yang mengerjakan kebaikan seberat zarah, dia akan melihat (balasan)-nya.",
      },
      {
        'no': '8',
        'arabic': "وَمَنْ يَّعْمَلْ مِثْقَالَ ذَرَّةٍ شَرًّا يَّرَهٗࣖ",
        'transliteration': "Wamay ya‘mal miṡqāla żarratin syarray yarah(ū).",
        'translation':
            "Siapa yang mengerjakan kejahatan seberat zarah, dia akan melihat (balasan)-nya.",
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
          surahData['name'] ?? 'Az-Zalzalah',
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
                  surahData['type'] ?? "MADANIYAH",
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
