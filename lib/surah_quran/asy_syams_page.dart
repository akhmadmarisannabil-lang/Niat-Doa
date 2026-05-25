import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AsySyamsPage extends StatelessWidget {
  final Map<String, dynamic> surahData;

  const AsySyamsPage({super.key, required this.surahData});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> ayatList = [
      {
        'no': '1',
        'arabic': "وَالشَّمْسِ وَضُحٰىهَاۖ",
        'transliteration': "Wasy-syamsi wa ḍuḥāhā.",
        'translation':
            "Demi matahari dan sinarnya pada waktu duha (ketika matahari naik sepenggalah),",
      },
      {
        'no': '2',
        'arabic': "وَالْقَمَرِ اِذَا تَلٰىهَاۖ",
        'transliteration': "Wal-qamari iżā talāhā.",
        'translation': "demi bulan saat mengiringinya,",
      },
      {
        'no': '3',
        'arabic': "وَالنَّهَارِ اِذَا جَلّٰىهَاۖ",
        'transliteration': "Wan-nahāri iżā jallāhā.",
        'translation': "demi siang saat menampakkannya,",
      },
      {
        'no': '4',
        'arabic': "وَاللَّيْلِ اِذَا يَغْشٰىهَاۖ",
        'transliteration': "Wal-laili iżā yagsyāhā.",
        'translation': "demi malam saat menutupinya (gelap gulita),",
      },
      {
        'no': '5',
        'arabic': "وَالسَّمَاۤءِ وَمَا بَنٰىهَاۖ",
        'transliteration': "Was-samā'i wa mā banāhā.",
        'translation': "demi langit serta pembuatannya,",
      },
      {
        'no': '6',
        'arabic': "وَالْاَرْضِ وَمَا طَحٰىهَاۖ",
        'transliteration': "Wal-arḍi wa mā ṭaḥāhā.",
        'translation': "demi bumi serta penghamparannya,",
      },
      {
        'no': '7',
        'arabic': "وَنَفْسٍ وَّمَا سَوّٰىهَاۖ",
        'transliteration': "Wa nafsiw wa mā sawwāhā.",
        'translation': "dan demi jiwa serta penyempurnaan (ciptaan)-nya,",
      },
      {
        'no': '8',
        'arabic': "فَاَلْهَمَهَا فُجُوْرَهَا وَتَقْوٰىهَاۖ",
        'transliteration': "Fa alhamahā fujūrahā wa taqwāhā.",
        'translation':
            "lalu Dia mengilhamkan kepadanya (jalan) kejahatan dan ketakwaannya,",
      },
      {
        'no': '9',
        'arabic': "قَدْ اَفْلَحَ مَنْ زَكّٰىهَاۖ",
        'transliteration': "Qad aflaḥa man zakkāhā.",
        'translation': "sungguh beruntung orang yang menyucikannya (jiwa itu)",
      },
      {
        'no': '10',
        'arabic': "وَقَدْ خَابَ مَنْ دَسّٰىهَاۗ",
        'transliteration': "Wa qad khāba man dassāhā.",
        'translation': "dan sungguh rugi orang yang mengotorinya.",
      },
      {
        'no': '11',
        'arabic': "كَذَّبَتْ ثَمُوْدُ بِطَغْوٰىهَآۖ",
        'transliteration': "Każżabat ṡamūdu biṭagwāhā.",
        'translation':
            "(Kaum) Samud telah mendustakan (rasulnya) karena mereka melampaui batas",
      },
      {
        'no': '12',
        'arabic': "اِذِ انْۢبَعَثَ اَشْقٰىهَاۖ",
        'transliteration': "Iżinba‘aṡa asyqāhā.",
        'translation':
            "ketika orang yang paling celaka di antara mereka bangkit (untuk menyembelih unta betina Allah).",
      },
      {
        'no': '13',
        'arabic':
            "فَقَالَ لَهُمْ رَسُوْلُ اللّٰهِ نَاقَةَ اللّٰهِ وَسُقْيٰهَاۗ",
        'transliteration': "Faqāla lahum rasūlullāhi nāqatallāhi wa suqyāhā.",
        'translation':
            "Rasul Allah (Saleh) lalu berkata kepada mereka, “(Biarkanlah) unta betina Allah ini beserta minumannya.”",
      },
      {
        'no': '14',
        'arabic':
            "فَكَذَّبُوْهُ فَعَقَرُوْهَاۖ فَدَمْدَمَ عَلَيْهِمْ رَبُّهُمْ بِذَنْۢبِهِمْ فَسَوّٰىهَاۖ",
        'transliteration':
            "Fa każżabūhu fa ‘aqarūhā fadamdama ‘alaihim rabbuhum biżambihim fasawwāhā.",
        'translation':
            "Namun, mereka kemudian mendustakannya (Saleh) dan menyembelih (unta betina) itu. Maka, Tuhan membinasakan mereka karena dosa-dosanya, lalu meratakan mereka (dengan tanah).",
      },
      {
        'no': '15',
        'arabic': "وَلَا يَخَافُ عُقْبٰهَاࣖ",
        'transliteration': "Wa lā yakhāfu ‘uqbāhā.",
        'translation': "Dia tidak takut terhadap akibatnya.",
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
          surahData['name'] ?? 'Asy-Syams',
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
                  "${surahData['verses'] ?? 15} Ayat",
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
