import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlAlaqPage extends StatelessWidget {
  final Map<String, dynamic> surahData;

  const AlAlaqPage({super.key, required this.surahData});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> ayatList = [
      {
        'no': '1',
        'arabic': "اِقْرَأْ بِاسْمِ رَبِّكَ الَّذِيْ خَلَقَۚ",
        'transliteration': "Iqra' bismi rabbikal-lażī khalaq(a).",
        'translation':
            "Bacalah dengan (menyebut) nama Tuhanmu yang menciptakan!",
      },
      {
        'no': '2',
        'arabic': "خَلَقَ الْاِنْسَانَ مِنْ عَلَقٍۚ",
        'transliteration': "Khalaqal-insāna min ‘alaq(in).",
        'translation': "Dia menciptakan manusia dari segumpal darah.",
      },
      {
        'no': '3',
        'arabic': "اِقْرَأْ وَرَبُّكَ الْاَكْرَمُۙ",
        'transliteration': "Iqra' wa rabbukal-akram(u).",
        'translation': "Bacalah! dan Tuhanmulah Yang Maha Mulia,",
      },
      {
        'no': '4',
        'arabic': "الَّذِيْ عَلَّمَ بِالْقَلَمِۙ",
        'transliteration': "Allażī ‘allama bil-qalam(i).",
        'translation': "yang mengajar (manusia) dengan pena.",
      },
      {
        'no': '5',
        'arabic': "عَلَّمَ الْاِنْسَانَ مَا لَمْ يَعْلَمْۗ",
        'transliteration': "‘Allamal-insāna mā lam ya‘lam.",
        'translation': "Dia mengajarkan manusia apa yang tidak diketahuinya.",
      },
      {
        'no': '6',
        'arabic': "كَلَّآ اِنَّ الْاِنْسَانَ لَيَطْغٰىٓۙ",
        'transliteration': "Kallā innal-insāna layaṭgā.",
        'translation':
            "Sekali-kali tidak! Sesungguhnya manusia benar-benar melampaui batas",
      },
      {
        'no': '7',
        'arabic': "اَنْ رَّاٰهُ اسْتَغْنٰىۗ",
        'transliteration': "Ar ra'āhustagnā.",
        'translation': "karena melihat dirinya serba berkecukupan.",
      },
      {
        'no': '8',
        'arabic': "اِنَّ اِلٰى رَبِّكَ الرُّجْعٰىۗ",
        'transliteration': "Inna ilā rabbikar-ruj‘ā.",
        'translation':
            "Sesungguhnya hanya kepada Tuhanmulah tempat kembali(mu).",
      },
      {
        'no': '9',
        'arabic': "اَرَاَيْتَ الَّذِيْ يَنْهٰىۙ",
        'transliteration': "Ara'aital-lażī yanhā.",
        'translation': "Tahukah kamu tentang orang yang melarang",
      },
      {
        'no': '10',
        'arabic': "عَبْدًا اِذَا صَلّٰىۗ",
        'transliteration': "‘Abdan iżā ṣallā.",
        'translation': "seorang hamba ketika dia melaksanakan salat?",
      },
      {
        'no': '11',
        'arabic': "اَرَاَيْتَ اِنْ كَانَ عَلَى الْهُدٰىٓۙ",
        'transliteration': "Ara'aita in kāna ‘alal-hudā.",
        'translation':
            "Bagaimana pendapatmu kalau terbukti dia berada di dalam kebenaran",
      },
      {
        'no': '12',
        'arabic': "اَوْ اَمَرَ بِالتَّقْوٰىۗ",
        'transliteration': "Au amara bit-taqwā.",
        'translation': "atau dia menyuruh bertakwa (kepada Allah)?",
      },
      {
        'no': '13',
        'arabic': "اَرَاَيْتَ اِنْ كَذَّبَ وَتَوَلّٰىۗ",
        'transliteration': "Ara'aita in każżaba wa tawallā.",
        'translation':
            "Bagaimana pendapatmu kalau dia mendustakan (kebenaran) dan berpaling (dari keimanan)?",
      },
      {
        'no': '14',
        'arabic': "اَلَمْ يَعْلَمْ بِاَنَّ اللّٰهَ يَرٰىۗ",
        'transliteration': "Alam ya‘lam bi'annallāha yarā.",
        'translation':
            "Tidakkah dia mengetahui bahwa sesungguhnya Allah melihat (segala perbuatannya)?",
      },
      {
        'no': '15',
        'arabic':
            "كَلَّا لَىِٕنْ لَّمْ يَنْتَهِ ەۙ لَنَسْفَعًاۢ بِالنَّاصِيَةِۙ",
        'transliteration':
            "Kallā la'il lam yantahi lanasfa‘am bin-nāṣiyah(ti).",
        'translation':
            "Sekali-kali tidak! Sungguh, jika dia tidak berhenti (berbuat demikian), niscaya Kami tarik ubun-ubunnya (ke dalam neraka),",
      },
      {
        'no': '16',
        'arabic': "نَاصِيَةٍ كَاذِبَةٍ خَاطِئَةٍۚ",
        'transliteration': "Nāṣiyatin kāżibatin khāṭi'ah(tin).",
        'translation':
            "(yaitu) ubun-ubun orang yang mendustakan (kebenaran) dan durhaka.",
      },
      {
        'no': '17',
        'arabic': "فَلْيَدْعُ نَادِيَهٗۙ",
        'transliteration': "Falyad‘u nādiyahū.",
        'translation': "Biarlah dia memanggil golongannya (untuk menolongnya).",
      },
      {
        'no': '18',
        'arabic': "سَنَدْعُ الزَّبَانِيَةَۙ",
        'transliteration': "Sanad‘uz-zabāniyah(ta).",
        'translation':
            "Kelak Kami akan memanggil (Malaikat) Zabaniah (penyiksa orang-orang yang berdosa).",
      },
      {
        'no': '19',
        'arabic': "كَلَّاۗ لَا تُطِعْهُ وَاسْجُدْ وَاقْتَرِبْࣖ",
        'transliteration': "Kallā, lā tuṭi‘hu wasjud waqtarib.",
        'translation':
            "Sekali-kali tidak! Janganlah patuh kepadanya, (tetapi) sujud dan mendekatlah (kepada Allah).",
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
          surahData['name'] ?? 'Al-\'Alaq',
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
                  "${surahData['verses'] ?? 19} Ayat",
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
