import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlAdiyatPage extends StatelessWidget {
  final Map<String, dynamic> surahData;

  const AlAdiyatPage({super.key, required this.surahData});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> ayatList = [
      {
        'no': '1',
        'arabic': "وَالْعٰدِيٰتِ ضَبْحًاۙ",
        'transliteration': "Wal-‘ādiyāti ḍabḥā(n).",
        'translation':
            "Demi kuda-kuda perang yang berlari kencang terengah-engah,",
      },
      {
        'no': '2',
        'arabic': "فَالْمُوْرِيٰتِ قَدْحًاۙ",
        'transliteration': "Fal-mūriyāti qadḥā(n).",
        'translation': "yang memercikkan bunga api (dengan hentakan kakinya),",
      },
      {
        'no': '3',
        'arabic': "فَالْمُغِيْرٰتِ صُبْحًاۙ",
        'transliteration': "Fal-mugīrāti ṣubḥā(n).",
        'translation': "yang menyerang (dengan tiba-tiba) pada waktu pagi",
      },
      {
        'no': '4',
        'arabic': "فَاَثَرْنَا بِهٖ نَفْعًاۙ",
        'transliteration': "Fa aṡarna bihī naf‘ā(n).",
        'translation': "sehingga menerbangkan debu,",
      },
      {
        'no': '5',
        'arabic': "فَوَسَطْنَا بِهٖ جَمْعًاۙ",
        'transliteration': "Fawasaṭna bihī jam‘ā(n).",
        'translation': "lalu menyerbu ke tengah-tengah kumpulan musuh.",
      },
      {
        'no': '6',
        'arabic': "اِنَّ الْاِنْسَانَ لِرَبِّهٖ لَكَنُوْدٌۚ",
        'transliteration': "Innal-insāna lirabbihī lakanūd(un).",
        'translation':
            "sesungguhnya manusia itu sangatlah ingkar kepada Tuhannya.",
      },
      {
        'no': '7',
        'arabic': "وَاِنَّهٗ عَلٰى ذٰلِكَ لَشَهِيْدٌۚ",
        'transliteration': "Wa innahū ‘alā żālika lasyahīd(un).",
        'translation':
            "Sesungguhnya dia benar-benar menjadi saksi atas hal itu (keingkarannya).",
      },
      {
        'no': '8',
        'arabic': "وَاِنَّهٗ لِحُبِّ الْخَيْرِ لَشَدِيْدٌۗ",
        'transliteration': "Wa innahū liḥubbil-khairi lasyadīd(un).",
        'translation':
            "Sesungguhnya cintanya pada harta benar-benar berlebihan.",
      },
      {
        'no': '9',
        'arabic': "اَفَلَا يَعْلَمُ اِذَا بُعْثِرَ مَا فِي الْقُبُوْرِۙ",
        'transliteration': "Afalā ya‘lamu iżā bu‘ṡira mā fil-qubūr(i).",
        'translation':
            "Maka, tidakkah dia mengetahui (apa yang akan dialaminya) apabila dikeluarkan apa yang ada di dalam kubur",
      },
      {
        'no': '10',
        'arabic': "وَحُصِّلَ مَا فِي الصُّدُوْرِۙ",
        'transliteration': "Wa huṣṣila mā fiṣ-ṣudūr(i).",
        'translation': "dan ditampakkan apa yang tersimpan di dalam dada?",
      },
      {
        'no': '11',
        'arabic': "اِنَّ رَبَّهُمْ بِهِمْ يَوْمَىِٕذٍ لَّخَبِيْرٌ ࣖ",
        'transliteration': "Inna rabbahum bihim yauma'iżil lakhabīr(un).",
        'translation':
            "Sesungguhnya Tuhan mereka pada hari itu benar-benar Maha Teliti terhadap (keadaan) mereka.",
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
          surahData['name'] ?? 'Al-\'Adiyat',
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
