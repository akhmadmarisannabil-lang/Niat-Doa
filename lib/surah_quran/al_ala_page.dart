import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlAlaPage extends StatelessWidget {
  final Map<String, dynamic> surahData;

  const AlAlaPage({super.key, required this.surahData});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> ayatList = [
      {
        'no': '1',
        'arabic': "سَبِّحِ اسْمَ رَبِّكَ الْاَعْلَىۙ",
        'transliteration': "Sabbiḥisma rabbikal-a‘lā.",
        'translation': "Sucihan nama Tuhanmu Yang Maha tinggi,",
      },
      {
        'no': '2',
        'arabic': "الَّذِيْ خَلَقَ فَسوّٰىۖ",
        'transliteration': "Al-lażī khalaqa fasawwā.",
        'translation': "Yang menciptakan, lalu menyempurnakan (ciptaan-Nya),",
      },
      {
        'no': '3',
        'arabic': "وَالَّذِيْ قَدَّرَ فَهَدٰىۖ",
        'transliteration': "Wal-lażī qaddara fahadā.",
        'translation':
            "Yang menentukan kadar (masing-masing) dan memberi petunjuk,",
      },
      {
        'no': '4',
        'arabic': "وَالَّذِيْٓ اَخْرَجَ الْمَرْعٰىۖ",
        'transliteration': "Wal-lażī akhrajal-mar‘ā.",
        'translation': "dan yang menumbuhkan (rerumputan) padang gembala,,",
      },
      {
        'no': '5',
        'arabic': "فَجَعَلَهٗ غُثَاۤءً اَحْوٰىۗ",
        'transliteration': "Faja‘alahū guṡā'an aḥwā.",
        'translation': "lalu menjadikannya kering kehitam-hitaman.",
      },
      {
        'no': '6',
        'arabic': "سَنُقْرِئُكَ فَلَا تَنْسٰىٓۙ",
        'transliteration': "Sanuqri'uka falā tansā.",
        'translation':
            "Kami akan membacakan (Al-Qur'an) kepadamu (Nabi Muhammad) sehingga engkau tidak akan lupa,",
      },
      {
        'no': '7',
        'arabic':
            "اِلَّا مَا شَاۤءَ اللّٰهُ ۗاِنَّهٗ يَعْلَمُ الْجَهْرَ وَمَا يَخْفٰىۗ",
        'transliteration':
            "Illā mā syā'allāh(u), innahū ya‘lamul-jahra wa mā yakhfā.",
        'translation':
            "kecuali jika Allah menghendaki. Sesungguhnya Dia mengetahui yang terang dan yang tersembunyi.",
      },
      {
        'no': '8',
        'arabic': "وَنُيَسِّرُكَ لِلْيُسْرٰىۖ",
        'transliteration': "Wa nuyassiruka lilyusrā.",
        'translation':
            "Kami akan melapangkan bagimu jalan kemudahan (dalam segala urusan).",
      },
      {
        'no': '9',
        'arabic': "فَذَكِّرْ اِنْ نَّفَعَتِ الذِّكْرٰىۗ",
        'transliteration': "Fażakkir in nafa‘atiz-żikrā.",
        'translation':
            "Maka, sampaikanlah peringatan jika peringatan itu bermanfaat.",
      },
      {
        'no': '10',
        'arabic': "سَيَذَّكَّرُ مَنْ يَّخْشٰىۙ",
        'transliteration': "Sayażżakkaru may yakhsyā.",
        'translation':
            "Orang yang takut (kepada Allah) akan mengambil pelajaran,",
      },
      {
        'no': '11',
        'arabic': "وَيَتَجَنَّبُهَا الْاَشْقَىۙ",
        'transliteration': "Wa yatajannabuhal-asqyā.",
        'translation': "sedangkan orang yang celaka (kafir) akan menjauhinya,",
      },
      {
        'no': '12',
        'arabic': "الَّذِيْ يَصْلَى النَّارَ الْكُبْرٰىۚ",
        'transliteration': "Al-lażī yaṣlan-nāral-kubrā.",
        'translation':
            "(yaitu) orang yang akan memasuki api (neraka) yang besar.",
      },
      {
        'no': '13',
        'arabic': "ثُمَّ لَا يَمُوْتُ فِيْهَا وَلَا يَحْيٰىۗ",
        'transliteration': "Ṡumma lā yamūtu fīhā wa lā yaḥyā.",
        'translation':
            "Selanjutnya, dia tidak mati dan tidak (pula) hidup di sana.",
      },
      {
        'no': '14',
        'arabic': "قَدْ اَفْلَحَ مَنْ تَزَكّٰىۙ",
        'transliteration': "Qad aflaḥa man tazakkā.",
        'translation':
            "Sungguh, beruntung orang yang menyucikan diri (dari kekafiran)",
      },
      {
        'no': '15',
        'arabic': "وَذَكَرَ اسْمَ رَبِّهٖ فَصَلّٰىۗ",
        'transliteration': "Wa żakarasma rabbihī faṣallā.",
        'translation': "dan mengingat nama Tuhannya, lalu dia salat.",
      },
      {
        'no': '16',
        'arabic': "بَلْ تُؤْثِرُوْنَ الْحَيٰوةَ الدُّنْيَاۖ",
        'transliteration': "Bal tu'ṡirūnal-ḥayātad-dunyā.",
        'translation':
            "Adapun kamu (orang-orang kafir) mengutamakan kehidupan dunia,",
      },
      {
        'no': '17',
        'arabic': "وَالْاٰخِرَةُ خَيْرٌ وَّاَبْقٰىۗ",
        'transliteration': "Wal-ākhiratu khairuw wa abqā.",
        'translation':
            "padahal kehidupan akhirat itu lebih baik dan lebih kekal.",
      },
      {
        'no': '18',
        'arabic': "اِنَّ هٰذَا لَفِي الصُّحُفِ الْاُوْلٰىۙ",
        'transliteration': "Inna hāżā lafiṣ-ṣuḥufil-ūlā.",
        'translation':
            "Sesungguhnya (penjelasan) ini terdapat dalam suhuf (lembaran-lembaran) yang terdahulu,",
      },
      {
        'no': '19',
        'arabic': "صُحُفِ اِبْرٰهِيْمَ وَمُوْسٰىࣖ",
        'transliteration': "Ṣuḥufi ibrāhīma wa mūsā.",
        'translation':
            "(yaitu) suhuf (yang diturunkan kepada) Ibrahim dan Musa.",
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
          surahData['name'] ?? 'Al-A\'la',
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
