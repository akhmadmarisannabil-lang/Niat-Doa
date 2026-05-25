import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // Menggunakan Google Fonts untuk keindahan khat Arab

class AlFatihahPage extends StatelessWidget {
  final Map<String, dynamic> surahData;

  const AlFatihahPage({super.key, required this.surahData});

  @override
  Widget build(BuildContext context) {
    // Data ayat lengkap Al-Fatihah (Ayat 1-7) beserta transliterasi pelafalannya
    final List<Map<String, dynamic>> ayatList = [
      {
        'no': '1',
        'arabic': "بِسْمِ اللّٰهِ الرَّحْمٰنِ الرَّحِيْمِ",
        'transliteration': "Bismillāhir-raḥmānir-raḥīm(i).",
        'translation':
            "Dengan nama Allah Yang Maha Pengasih lagi Maha Penyayang.",
      },
      {
        'no': '2',
        'arabic': "اَلْحَمْدُ لِلّٰهِ رَبِّ الْعٰلَمِيْنَۙ",
        'transliteration': "Al-ḥamdu lillāhi rabbil-‘ālamīn(a).",
        'translation': "Segala puji bagi Allah, Tuhan semesta alam",
      },
      {
        'no': '3',
        'arabic': "الرَّحْمٰنِ الرَّحِيْمِۙ",
        'transliteration': "Ar-raḥmānir-raḥīm(i).",
        'translation': "Yang Maha Pengasih lagi Maha Penyayang,",
      },
      {
        'no': '4',
        'arabic': "مٰلِكِ يَوْمِ الدِّيْنِۗ",
        'transliteration': "Māliki yaumid-dīn(i).",
        'translation': "Pemilik hari Pembalasan.",
      },
      {
        'no': '5',
        'arabic': "اِيَّاكَ نَعْبُدُ وَاِيَّاكَ نَسْتَعِيْنُۗ",
        'transliteration': "Iyyāka na‘budu wa iyyāka nasta‘īn(u),",
        'translation':
            "Hanya kepada Engkaulah kami menyembah dan hanya kepada Engkaulah kami memohon pertolongan.",
      },
      {
        'no': '6',
        'arabic': "اِهْدِنَا الصِّرَاطَ الْمُسْتَقِيْمَۙ",
        'transliteration': "Ihdinaṣ-ṣirāṭal-mustaqīm(a).",
        'translation': "Bimbinglah kami ke jalan yang lurus,",
      },
      {
        'no': '7',
        'arabic':
            "صِرَاطَ الَّذِيْنَ اَنْعَمْتَ عَلَيْهِمْ ەۙ غَيْرِ الْمَغْضُوْبِ عَلَيْهِمْ وَلَا الضَّاۤلِّيْنَ ࣖ",
        'transliteration':
            "Ṣirāṭal-lażīna an‘amta ‘alaihim, gairil-magḍūbi ‘alaihim wa laḍ-ḍāllīn(a).",
        'translation':
            "(yaitu) jalan orang-orang yang telah Engkau beri nikmat, bukan (jalan) mereka yang dimurkai dan bukan (pula jalan) orang-orang yang sesat.",
      },
    ];

    return Scaffold(
      backgroundColor: const Color(
        0xff090f16,
      ), // Menyamakan background dark theme utama
      appBar: AppBar(
        backgroundColor: const Color(0xff090f16),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white70),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          surahData['name'] ?? 'Al-Fatihah',
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
          // Bagian Tag / Kategori informasi Surah
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
                  "Pembukaan",
                  style: TextStyle(color: Colors.white70, fontSize: 11),
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),

          // loop builder untuk menyusun struktur per-ayat secara vertikal
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
                    // Sub-header penanda nomor ayat
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

                    // 1. Kotak Teks Arab (Posisi Rata Tengah sesuai image_71600c.png)
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
                        textAlign: TextAlign.center, // Rata tengah
                        style: GoogleFonts.amiri(
                          color: Colors.white.withOpacity(0.9),
                          fontSize: 24,
                          fontWeight: FontWeight.normal,
                          height: 2.2,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // 2. Judul Kecil & Kotak Transliterasi Latin
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

                    // 3. Judul Kecil & Kotak Arti Terjemahan
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
