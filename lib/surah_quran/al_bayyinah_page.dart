import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlBayyinahPage extends StatefulWidget {
  final Map<String, dynamic> surahData;

  const AlBayyinahPage({super.key, required this.surahData});

  @override
  State<AlBayyinahPage> createState() => _AlBayyinahPageState();
}

class _AlBayyinahPageState extends State<AlBayyinahPage> {
  @override
  Widget build(BuildContext context) {
    final bool isLightMode = Theme.of(context).brightness == Brightness.light;

    final Color bgColor = isLightMode
        ? const Color(0xfff5f7fa)
        : const Color(0xff090f16);
    final Color cardColor = isLightMode
        ? Colors.white
        : const Color(0xff111a24);
    final Color mainTextColor = isLightMode
        ? const Color(0xff1e293b)
        : Colors.white;
    final Color subTextColor = isLightMode
        ? const Color(0xff475569)
        : Colors.white70;
    final Color chipBgColor = isLightMode
        ? const Color(0xffe2e8f0)
        : Colors.white10;
    final Color chipTextColor = isLightMode
        ? const Color(0xff64748b)
        : Colors.white70;
    final Color accentColor = isLightMode
        ? const Color(0xff0f766e)
        : Colors.tealAccent;
    final Color borderColor = isLightMode
        ? const Color(0xffe2e8f0)
        : Colors.teal.withOpacity(0.2);
    final Color arabicTextColor = isLightMode
        ? Colors.black
        : Colors.white.withOpacity(0.9);

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
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: isLightMode ? Colors.black87 : Colors.white70,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          widget.surahData['name'] ?? 'Al-Bayyinah',
          style: TextStyle(
            color: mainTextColor,
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
              _buildChip(
                widget.surahData['type'] ?? "MADANIYAH",
                chipBgColor,
                chipTextColor,
              ),
              _buildChip(
                "${widget.surahData['verses'] ?? 8} Ayat",
                chipBgColor,
                chipTextColor,
              ),
              _buildChip("Juz 30", chipBgColor, chipTextColor),
            ],
          ),
          const SizedBox(height: 24),

          ayatList.isEmpty
              ? Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Text(
                      "Belum ada data ayat.",
                      style: TextStyle(
                        color: subTextColor,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                )
              : ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: ayatList.length,
                  itemBuilder: (context, index) {
                    final ayat = ayatList[index];
                    return _buildAyatItem(
                      ayat,
                      cardColor,
                      borderColor,
                      arabicTextColor,
                      accentColor,
                      subTextColor,
                      isLightMode,
                    );
                  },
                ),
        ],
      ),
    );
  }

  Widget _buildChip(String label, Color bg, Color textCol) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(label, style: TextStyle(color: textCol, fontSize: 11)),
    );
  }

  Widget _buildAyatItem(
    Map<String, dynamic> ayat,
    Color cardColor,
    Color borderColor,
    Color arabicTextColor,
    Color accentColor,
    Color subTextColor,
    bool isLightMode,
  ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.menu_book, color: accentColor, size: 18),
              const SizedBox(width: 6),
              Text(
                "Ayat ${ayat['no'] ?? ''}",
                style: TextStyle(
                  color: accentColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 28),
            decoration: BoxDecoration(
              color: cardColor,
              borderRadius: BorderRadius.circular(12),
              border: isLightMode ? Border.all(color: borderColor) : null,
            ),
            child: Text(
              ayat['arabic'] ?? '',
              textAlign: TextAlign.center,
              style: GoogleFonts.amiri(
                color: arabicTextColor,
                fontSize: 24,
                height: 2.2,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            "Transliterasi",
            style: TextStyle(
              color: accentColor,
              fontWeight: FontWeight.bold,
              fontSize: 13,
            ),
          ),
          const SizedBox(height: 8),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: cardColor,
              borderRadius: BorderRadius.circular(12),
              border: isLightMode ? Border.all(color: borderColor) : null,
            ),
            child: Text(
              ayat['transliteration'] ?? '',
              style: TextStyle(
                color: subTextColor,
                fontSize: 14,
                fontStyle: FontStyle.italic,
                height: 1.4,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            "Terjemahan",
            style: TextStyle(
              color: accentColor,
              fontWeight: FontWeight.bold,
              fontSize: 13,
            ),
          ),
          const SizedBox(height: 8),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: cardColor,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: isLightMode
                    ? borderColor
                    : Colors.teal.withOpacity(0.15),
              ),
            ),
            child: Text(
              ayat['translation'] ?? '',
              style: TextStyle(color: subTextColor, fontSize: 14, height: 1.4),
            ),
          ),
        ],
      ),
    );
  }
}
