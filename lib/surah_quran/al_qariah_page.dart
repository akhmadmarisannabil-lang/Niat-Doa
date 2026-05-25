import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlQariahPage extends StatelessWidget {
  final Map<String, dynamic> surahData;

  const AlQariahPage({super.key, required this.surahData});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> ayatList = [
      {
        'no': '1',
        'arabic': "اَلْقَارِعَةُۙ",
        'transliteration': "Al-qāri‘ah(tu).",
        'translation': "Al-Qāri‘ah (hari Kiamat yang menggetarkan).",
      },
      {
        'no': '2',
        'arabic': "مَا الْقَارِعَةُۚ",
        'transliteration': "Mal-qāri‘ah(tu).",
        'translation': "Apakah al-Qāri‘ah itu?",
      },
      {
        'no': '3',
        'arabic': "وَمَآ اَدْرٰىكَ مَا الْقَارِعَةُۗ",
        'transliteration': "Wa mā adrāka mal-qāri‘ah(tu).",
        'translation': "Tahukah kamu apakah al-Qāri‘ah itu?",
      },
      {
        'no': '4',
        'arabic': "يَوْمَ يَكُوْنُ النَّاسُ كَالْفَرَاشِ الْمَبْثُوْثِۙ",
        'transliteration': "Yauma yakūnun-nāsu kal-farāsyil-mabsūṡ(i).",
        'translation': "Pada hari itu manusia seperti laron yang beterbangan",
      },
      {
        'no': '5',
        'arabic': "وَتَكُوْنُ الْجِبَالُ كَالْعِهْنِ الْمَنْفُوْشِۗ",
        'transliteration': "Wa takūnul-jibālu kal-‘ihnil-manfūsy(i).",
        'translation': "dan gunung-gunung seperti bulu yang berhamburan.",
      },
      {
        'no': '6',
        'arabic': "فَاَمَّا مَنْ ثَقُلَتْ مَوَازِيْنُهٗۙ",
        'transliteration': "Fa ammā man ṡaqulat mawāzīnuh(ū).",
        'translation': "Siapa yang berat timbangan (kebaikan)-nya,",
      },
      {
        'no': '7',
        'arabic': "فَهُوَ فِيْ عِيْشَةٍ رَّاضِيَةٍۗ",
        'transliteration': "Fahuwa fī ‘īsyatir rāḍiyah(tin).",
        'translation': "dia berada dalam kehidupan yang menyenangkan.",
      },
      {
        'no': '8',
        'arabic': "وَاَمَّا مَنْ خَفَّتْ مَوَازِيْنُهٗۙ",
        'transliteration': "Wa ammā man khaffat mawāzīnuh(ū).",
        'translation': "Adapun orang yang ringan timbangan (kebaikan)-nya,",
      },
      {
        'no': '9',
        'arabic': "فَاُمُّهٗ هَاوِيَةٌۗ",
        'transliteration': "Fa ummuhū hāwiyah(tun).",
        'translation': "tempat kembalinya adalah (neraka) Hawiyah..",
      },
      {
        'no': '10',
        'arabic': "وَمَآ اَدْرٰىكَ مَا هِيَهْۗ",
        'transliteration': "Wa mā adrāka mā hiyah.",
        'translation': "Tahukah kamu apakah (neraka Hawiyah) itu?",
      },
      {
        'no': '11',
        'arabic': "نَارٌ حَامِيَةٌࣖ",
        'transliteration': "Nārun ḥāmiyah(tun).",
        'translation': "(Ia adalah) api yang sangat panas.",
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
          surahData['name'] ?? 'Al-Qari\'ah',
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
