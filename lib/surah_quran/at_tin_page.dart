import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AtTinPage extends StatelessWidget {
  final Map<String, dynamic> surahData;

  const AtTinPage({super.key, required this.surahData});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> ayatList = [
      {
        'no': '1',
        'arabic': "وَالتِّيْنِ وَالزَّيْتُوْنِۙ",
        'transliteration': "Wat-tīni waz-zaitūn(i).",
        'translation': "Demi (buah) tin dan (buah) zaitun,",
      },
      {
        'no': '2',
        'arabic': "وَطُوْرِ سِيْنِيْنَۙ",
        'transliteration': "Wa ṭūri sīnīn(e).",
        'translation': "demi Gunung Sinai,",
      },
      {
        'no': '3',
        'arabic': "وَهٰذَا الْبَلَدِ الْاَمِيْنِۙ",
        'transliteration': "Wa hāżal-baladil-amīn(i).",
        'translation': "dan demi negeri (Makkah) yang aman ini,.",
      },
      {
        'no': '4',
        'arabic': "لَقَدْ خَلَقْنَا الْاِنْسَانَ فِيْٓ اَحْسَنِ تَقْوِيْمٍۖ",
        'transliteration': "Laqad khalaqnal-insāna fī aḥsani taqwīm(in).",
        'translation':
            "sungguh, Kami benar-benar telah menciptakan manusia dalam bentuk yang sebaik-baiknya.",
      },
      {
        'no': '5',
        'arabic': "ثُمَّ رَدَدْنٰهُ اَسْفَلَ سَافِلِيْنَۙ",
        'transliteration': "Ṡumma radadnāhu asfala sāfilīn(a).",
        'translation':
            "Kemudian, kami kembalikan dia ke tempat yang serendah-rendahnya,",
      },
      {
        'no': '6',
        'arabic':
            "اِلَّا الَّذِيْنَ اٰمَنُوْا وَعَمِلُوا الصّٰلِحٰتِ فَلَهُمْ اَجْرٌ غَيْرُ مَمْنُوْنٍۗ",
        'transliteration':
            "Illal-lażīna āmanū wa ‘amiluṣ-ṣāliḥāti falahum ajrun gairu mamnūn(in).",
        'translation':
            "kecuali orang-orang yang beriman dan mengerjakan kebajikan. Maka, mereka akan mendapat pahala yang tidak putus-putusnya.",
      },
      {
        'no': '7',
        'arabic': "فَمَا يُكَذِّبُكَ بَعْدُ بِالدِّيْنِۗ",
        'transliteration': "Famā yukażżibuka ba‘du bid-dīn(i).",
        'translation':
            "Maka, apa alasanmu (wahai orang kafir) mendustakan hari Pembalasan setelah (adanya bukti-bukti) itu?",
      },
      {
        'no': '8',
        'arabic': "اَلَيْسَ اللّٰهُ بِاَحْكَمِ الْحٰكِمِيْنَࣖ",
        'transliteration': "Alaisallāhu bi'aḥkamil-ḥākimīn(e).",
        'translation': "Bukankah Allah hakim yang paling adil?",
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
          surahData['name'] ?? 'At-Tin',
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
