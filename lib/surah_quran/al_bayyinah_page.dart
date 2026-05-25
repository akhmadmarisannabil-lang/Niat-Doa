import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlBayyinahPage extends StatelessWidget {
  final Map<String, dynamic> surahData;

  const AlBayyinahPage({super.key, required this.surahData});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> ayatList = [
      {
        'no': '1',
        'arabic':
            "لَمْ يَكُنِ الَّذِيْنَ كَفَرُوْا مِنْ اَهْلِ الْكِتٰبِ وَالْمُشْرِكِيْنَ مُنْفَكِّيْنَ حَتّٰى تَأْتِيَهُمُ الْبَيِّنَةُۙ",
        'transliteration':
            "Lam yakunil-lażīna kafarū min ahlil-kitābi wal-musyrikīna munfakkīna ḥattā ta'tiyahumul-bayyinah(tu).",
        'translation':
            "Orang-orang yang kufur dari golongan Ahlulkitab dan orang-orang musyrik tidak akan meninggalkan (kekufuran mereka) sampai datang kepada mereka bukti yang nyata,",
      },
      {
        'no': '2',
        'arabic': "رَسُوْلٌ مِّنَ اللّٰهِ يَتْلُوْا صُحُفًا مُّطَهَّرَةًۙ",
        'transliteration': "Rasūlum minallāhi yatlū ṣuḥufam muṭahharah(tan).",
        'translation':
            "(yaitu) seorang Rasul dari Allah (Nabi Muhammad) yang membacakan lembaran-lembaran suci (Al-Qur’an)",
      },
      {
        'no': '3',
        'arabic': "فِيْهَا كُتُبٌ قَيِّمَةٌۗ",
        'transliteration': "Fīhā kutubun qayyimah(tun).",
        'translation':
            "yang di dalamnya terdapat (isi) kitab-kitab yang lurus (benar).",
      },
      {
        'no': '4',
        'arabic':
            "وَمَا تَفَرَّقَ الَّذِيْنَ اُوْتُوا الْكِتٰبَ اِلَّا مِنْۢ بَعْدِ مَا جَاۤءَتْهُمُ الْبَيِّنَةُۗ",
        'transliteration':
            "Wa mā tafarraqal-lażīna ūtul-kitāba illā mim ba‘di mā jā'at-humul-bayyinah(tu).",
        'translation':
            "Tidaklah terpecah-belah orang-orang Ahlulkitab, melainkan setelah datang kepada mereka bukti yang nyata.",
      },
      {
        'no': '5',
        'arabic':
            "وَمَآ اُمِرُوْٓا اِلَّا لِيَعْبُدُوا اللّٰهَ مُخْلِصِيْنَ لَهُ الدِّيْنَ ەۙ حُنَفَاۤءَ وَيُقِيْمُوا الصَّلٰوةَ وَيُؤْتُوا الزَّكٰوةَ وَذٰلِكَ دِيْنُ الْقَيِّمَةِۗ",
        'transliteration':
            "Wa mā umirū illā liya‘budullāha mukhliṣīna lahud-dīna ḥunafā'a wa yuqīmuṣ-ṣalāta wa yu'tuz-zakāta wa żālika dīnul-qayyimah(ti).",
        'translation':
            "Mereka tidak diperintah, kecuali untuk menyembah Allah dengan mengikhlaskan ketaatan kepada-Nya lagi hanif (istikamah), melaksanakan salat, dan menunaikan zakat. Itulah agama yang lurus (benar).",
      },
      {
        'no': '6',
        'arabic':
            "اِنَّ الَّذِيْنَ كَفَرُوْا مِنْ اَهْلِ الْكِتٰبِ وَالْمُشْرِكِيْنَ فِيْ نَارِ جَهَنَّمَ خٰلِدِيْنَ فِيْهَاۗ اُولٰۤىِٕكَ هُمْ شَرُّ الْبَرِيَّةِۗ",
        'transliteration':
            "Innal-lażīna kafarū min ahlil-kitābi wal-musyrikīna fī nāri jahannama khālidīna fīhā, ulā'ika hum syarrul-bariyyah(ti).",
        'translation':
            "Sesungguhnya orang-orang yang kufur dari golongan Ahlulkitab dan orang-orang musyrik (akan masuk) neraka Jahanam. Mereka kekal di dalamnya. Mereka itulah seburuk-buruk makhluk.",
      },
      {
        'no': '7',
        'arabic':
            "اِنَّ الَّذِيْنَ اٰمَنُوْا وَعَمِلُوا الصّٰلِحٰتِ اُولٰۤىِٕكَ هُمْ خَيْرُ الْبَرِيَّةِۗ",
        'transliteration':
            "Innal-lażīna āmanū wa ‘amiluṣ-ṣāliḥāti ulā'ika hum khairul-bariyyah(ti).",
        'translation':
            "Sesungguhnya orang-orang yang beriman dan mengerjakan kebajikan, mereka itulah sebaik-baik makhluk.",
      },
      {
        'no': '8',
        'arabic':
            "جَزَاۤؤُهُمْ عِنْدَ رَبِّهِمْ جَنّٰتُ عَدْنٍ تَجْرِيْ مِنْ تَحْتِهَا الْاَنْهٰرُ خٰلِدِيْنَ فِيْهَآ اَبَدًاۗ رَضِيَ اللّٰهُ عَنْهُمْ وَرَضُوْا عَنْهُۗ ذٰلِكَ لِمَنْ خَشِيَ رَبَّهٗࣖ",
        'transliteration':
            "Jazā'uhum ‘inda rabbihim jannātu ‘adnin tajrī min taḥtihal-anhāru khālidīna fīhā abadā(n), raḍiyallāhu ‘anhum wa raḍū ‘anh(u), żālika liman khasyiya rabbah(ū).",
        'translation':
            "Balasan mereka di sisi Tuhannya adalah surga ‘Adn yang mengalir di bawahnya sungai-sungai. Mereka kekal di dalamnya selama-lamanya. Allah rida terhadap mereka dan mereka pun rida kepada-Nya. Itu adalah (balasan) bagi orang yang takut kepada Tuhannya.",
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
          surahData['name'] ?? 'Al-Bayyinah',
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
