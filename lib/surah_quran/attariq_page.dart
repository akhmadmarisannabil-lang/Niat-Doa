import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AtTariqPage extends StatelessWidget {
  final Map<String, dynamic> surahData;

  const AtTariqPage({super.key, required this.surahData});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> ayatList = [
      {
        'no': '1',
        'arabic': "وَالسَّمَاۤءِ وَالطَّارِقِۙ",
        'transliteration': "Was-samā'i waṭ-ṭāriq(i).",
        'translation': "Demi langit dan yang datang pada malam hari.",
      },
      {
        'no': '2',
        'arabic': "وَمَآ اَدْرٰىكَ مَا الطَّارِقُۙ",
        'transliteration': "Wa mā adrāka maṭ-ṭāriq(u).",
        'translation': "Tahukah kamu apakah yang datang pada malam hari itu?",
      },
      {
        'no': '3',
        'arabic': "النَّجْمُ الثَّاقِبُۙ",
        'transliteration': "An-najmus-ṡāqib(u).",
        'translation': "(Itulah) bintang yang bersinar tajam.",
      },
      {
        'no': '4',
        'arabic': "اِنْ كُلُّ نَفْسٍ لَّمَّا عَلَيْهَا حَافِظٌۗ",
        'transliteration': "In kullu nafsil lammā ‘alihā ḥāfiẓ(un).",
        'translation': "Setiap orang pasti ada penjaganya.",
      },
      {
        'no': '5',
        'arabic': "فَلْيَنْظُرِ الْاِنْسَانُ مِمَّ خُلِقَۗ",
        'transliteration': "Falyanẓuril-insānu mimma khuliq(a).",
        'translation':
            "Hendaklah manusia memperhatikan dari apa dia diciptakan.",
      },
      {
        'no': '6',
        'arabic': "خُلِقَ مِنْ مَّۤاءٍ دَافِقٍۙ",
        'transliteration': "Khuliqa mim mā'in dāfiq(in),",
        'translation': "Dia diciptakan dari air (mani) yang memancar,",
      },
      {
        'no': '7',
        'arabic': "يَّخْرُجُ مِنْۢ بَيْنِ الصُّلْبِ وَالتَّرَاۤىِٕبِۗ",
        'transliteration': "yakhruju mim bainiṣ-ṣulbi wat-tarā'ib(i).",
        'translation':
            "yang keluar dari antara tulang sulbi (punggung) dan tulang dada.",
      },
      {
        'no': '8',
        'arabic': "اِنَّهٗ عَلٰى رَجْعِهٖ لَقَادِرٌۗ",
        'transliteration': "Innahū ‘alā raj‘ihī laqādir(un).",
        'translation':
            "Sesungguhnya Dia (Allah) benar-benar kuasa untuk mengembalikannya (hidup setelah mati)",
      },
      {
        'no': '9',
        'arabic': "يَوْمَ تُبْلَى السَّرَاۤىِٕرُۙ",
        'transliteration': "Yauma tublas-sarā'ir(u),",
        'translation': "pada hari ditampakkan segala rahasia.",
      },
      {
        'no': '10',
        'arabic': "فَمَا لَهٗ مِنْ قُوَّةٍ وَّلَا نَاصِرٍۗ",
        'transliteration': "Famā lahū min quwwatiw wa la nāṣir(in).",
        'translation':
            "Maka, baginya (manusia) tidak ada lagi kekuatan dan tidak (pula) ada penolong.",
      },
      {
        'no': '11',
        'arabic': "وَالسَّمَاۤءِ ذَاتِ الرَّجْعِۙ",
        'transliteration': "Was-samā'i żātir-raj‘(i),",
        'translation': "Demi langit yang mengandung hujan",
      },
      {
        'no': '12',
        'arabic': "وَالْاَرْضِ ذَاتِ الصَّدْعِۙ",
        'transliteration': "wal-arḍi żātiṣ-ṣad‘(i),",
        'translation':
            "dan bumi yang memiliki rekahan (tempat tumbuhnya pepohonan),",
      },
      {
        'no': '13',
        'arabic': "اِنَّهٗ لَقَوْلٌ فَصْلٌۙ",
        'transliteration': "Innahū laqaulun faṣl(un),",
        'translation':
            "sesungguhnya (Al-Qur’an) itu benar-benar firman pemisah (antara yang hak dan yang batil)",
      },
      {
        'no': '14',
        'arabic': "وَمَا هُوَ بِالْهَزْلِۗ",
        'transliteration': "wa mā huwa bil-hazl(i).",
        'translation':
            "dan ia (Al-Qur’an) sama sekali bukan perkataan senda gurau.",
      },
      {
        'no': '15',
        'arabic': "اِنَّهُمْ يَكِيْدُوْنَ كَيْدًاۙ",
        'transliteration': "Innahum yakīdūna kaidā(n),",
        'translation': "Sesungguhnya mereka (orang kafir) melakukan tipu daya.",
      },
      {
        'no': '16',
        'arabic': "وَاَكِيْدُ كَيْدًاۚ",
        'transliteration': "Wa akīdu kaidā(n).",
        'translation': "Aku pun membalasnya dengan tipu daya.",
      },
      {
        'no': '17',
        'arabic': "فَمَهِّلِ الْكٰفِرِيْنَ اَمْهِلْهُمْ رُوَيْدًاࣖ",
        'transliteration': "Famahhilil-kāfirīna amhilhum ruwaidā(n).",
        'translation':
            "Maka, tangguhkanlah orang-orang kafir itu. Biarkanlah mereka sejenak (bersenang-senang).",
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
          surahData['name'] ?? 'At-Tariq',
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
                  "${surahData['verses'] ?? 17} Ayat",
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
