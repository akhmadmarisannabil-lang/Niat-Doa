import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlLailPage extends StatelessWidget {
  final Map<String, dynamic> surahData;

  const AlLailPage({super.key, required this.surahData});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> ayatList = [
      {
        'no': '1',
        'arabic': "وَاللَّيْلِ اِذَا يَغْشٰىۙ",
        'transliteration': "Wal-laili iżā yagsyā.",
        'translation': "Demi malam apabila menutupi (cahaya siang),",
      },
      {
        'no': '2',
        'arabic': "وَالنَّهَارِ اِذَا تَجَلّٰىۙ",
        'transliteration': "Wan-nahāri iżā tajallā.",
        'translation': "demi siang apabila terang benderang,",
      },
      {
        'no': '3',
        'arabic': "وَمَا خَلَقَ الذَّكَرَ وَالْاُنْثٰىۙ",
        'transliteration': "Wa mā khalaqaż-żakara wal-unṡā.",
        'translation': "dan demi penciptaan laki-laki dan perempuan.",
      },
      {
        'no': '4',
        'arabic': "اِنَّ سَعْيَكُمْ لَشَتّٰىۗ",
        'transliteration': "Inna sa‘yakum lasyattā.",
        'translation': "Sesungguhnya usahamu benar-benar beraneka ragam.",
      },
      {
        'no': '5',
        'arabic': "فَاَمَّا مَنْ اَعْطٰى وَاتَّقٰىۙ",
        'transliteration': "Fa ammā man a‘ṭā wattaqā.",
        'translation':
            "Siapa yang memberikan (hartanya di jalan Allah) dan bertakwa",
      },
      {
        'no': '6',
        'arabic': "وَصَدَّقَ بِالْحُسْنٰىۙ",
        'transliteration': "Wa ṣaddaqa bil-ḥusnā.",
        'translation':
            "serta membenarkan adanya (balasan) yang terbaik (surga),",
      },
      {
        'no': '7',
        'arabic': "فَسَنُيَسِّرُهٗ لِلْيُسْرٰىۗ",
        'transliteration': "Fasanuyassiruhū lil-yusrā.",
        'translation':
            "Kami akan melapangkan baginya jalan kemudahan (kebahagiaan).",
      },
      {
        'no': '8',
        'arabic': "وَاَمَّا مَنْۢ بَخِلَ وَاسْتَغْنٰىۙ",
        'transliteration': "Wa ammā mam bakhila wastagnā.",
        'translation':
            "Adapun orang yang kikir dan merasa dirinya cukup (tidak perlu pertolongan Allah),",
      },
      {
        'no': '9',
        'arabic': "وَكَذَّبَ بِالْحُسْنٰىۙ",
        'transliteration': "Wa każżaba bil-ḥusnā.",
        'translation': "serta mendustakan (balasan) yang terbaik,",
      },
      {
        'no': '10',
        'arabic': "فَسَنُيَسِّرُهٗ لِلْعُسْرٰىۗ",
        'transliteration': "Fasanuyassiruhū lil-‘usrā.",
        'translation': "Kami akan memudahkannya menuju jalan kesengsaraan.",
      },
      {
        'no': '11',
        'arabic': "وَمَا يُغْنِيْ عَنْهُ مَالُهٗٓ اِذَا تَرَدّٰىۗ",
        'transliteration': "Wa mā yugnī ‘anhu māluhū iżā taraddā.",
        'translation':
            "Hartanya tidak bermanfaat baginya apabila dia telah binasa.",
      },
      {
        'no': '12',
        'arabic': "اِنَّ عَلَيْنَا لَلْهُدٰىۖ",
        'transliteration': "Inna ‘alainā lal-hudā.",
        'translation': "Sesungguhnya Kamilah yang (berhak) memberi petunjuk,",
      },
      {
        'no': '13',
        'arabic': "وَاِنَّ لَنَا لَلْاٰخِرَةَ وَالْاُوْلٰى",
        'transliteration': "Wa inna lanā lal-ākhirata wal-ūlā.",
        'translation': "sesungguhnya milik Kamilah akhirat dan dunia.",
      },
      {
        'no': '14',
        'arabic': "فَاَنْذَرْتُكُمْ نَارًا تَلَهَّظٰىۚ",
        'transliteration': "Fa anżartukum nāran talahhaẓā.",
        'translation':
            "Maka, Aku memperingatkanmu dengan neraka yang menyala-nyala,",
      },
      {
        'no': '15',
        'arabic': "لَا يَصْلٰىهَآ اِلَّا الْاَشْقَىۙ",
        'transliteration': "Lā yaṣlāhā illal-asyqā.",
        'translation':
            "Tidak masuk ke dalamnya kecuali orang yang paling celaka,",
      },
      {
        'no': '16',
        'arabic': "الَّذِيْ كَذَّبَ وَتَوَلّٰىۗ",
        'transliteration': "Allażī każżaba wa tawallā.",
        'translation':
            "yang mendustakan (kebenaran) dan berpaling (dari keimanan).",
      },
      {
        'no': '17',
        'arabic': "وَسَيُجَنَّبُهَا الْاَتْقَىۙ",
        'transliteration': "Wa sayujannabuhal-atqā.",
        'translation':
            "Akan dijauhkan darinya (neraka) orang yang paling bertakwa,",
      },
      {
        'no': '18',
        'arabic': "الَّذِيْ يُؤْتِيْ مَالَهٗ يَتَزَكّٰىۚ",
        'transliteration': "Allażī yu'tī mālahū yatazakkā.",
        'translation':
            "yang menginfakkan hartanya (di jalan Allah) untuk membersihkan (diri dari sifat kikir dan tamak).",
      },
      {
        'no': '19',
        'arabic': "وَمَا لِاَحَدٍ عِنْدَهٗ مِنْ نِّعْمَةٍ تُجْزٰىٓۙ",
        'transliteration': "Wa mā li'aḥadin ‘indahū min ni‘matin tujzā.",
        'translation':
            "Tidak ada suatu nikmat pun yang diberikan seseorang kepadanya yang harus dibalas,",
      },
      {
        'no': '20',
        'arabic': "اِلَّا ابْتِغَاۤءَ وَجْهِ رَبِّهِ الْاَعْلٰىۚ",
        'transliteration': "Illabtigā'a wajhi rabbihil-a‘lā.",
        'translation':
            "kecuali (dia memberikannya semata-mata) karena mencari keridaan Tuhannya Yang Maha Tinggi.",
      },
      {
        'no': '21',
        'arabic': "وَلَسَوْفَ يَرْضٰىࣖ",
        'transliteration': "Wa lasaufa yarḍā.",
        'translation':
            "Sungguh, kelak dia akan mendapatkan kepuasan (menerima balasan amalnya).",
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
          surahData['name'] ?? 'Al-Lail',
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
                  "${surahData['verses'] ?? 21} Ayat",
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
