import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlBurujPage extends StatefulWidget {
  final Map<String, dynamic> surahData;

  const AlBurujPage({super.key, required this.surahData});

  @override
  State<AlBurujPage> createState() => _AlBurujPageState();
}

class _AlBurujPageState extends State<AlBurujPage> {
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
        'arabic': "وَالسَّمَاۤءِ ذَاتِ الْبُرُوْجِۙ",
        'transliteration': "Was-samā'i żātil-burūj(i).",
        'translation': "Demi langit yang mempunyai gugusan bintang,",
      },
      {
        'no': '2',
        'arabic': "وَالْيَوْمِ الْمَوْعُوْدِۙ",
        'transliteration': "Wal-yaumil-mau‘ūd(i).",
        'translation': "demi hari yang dijanjikan,",
      },
      {
        'no': '3',
        'arabic': "وَشَاهِدٍ وَّمَشْهُوْدٍۗ",
        'transliteration': "Wa syāhidiw wa masyhūd(in).",
        'translation': "demi yang menyaksikan dan yang disaksikan.",
      },
      {
        'no': '4',
        'arabic': "قُتِلَ اَصْحٰبُ الْاُخْدُوْدِۙ",
        'transliteration': "Qutila aṣḥābul-ukhdūd(i),",
        'translation':
            "binasalah orang-orang yang membuat parit (tempat menyiksa orang mukmin)",
      },
      {
        'no': '5',
        'arabic': "النَّارِ ذَاتِ الْوَقُوْدِۙ",
        'transliteration': "an-nāri żātil-waqūd(i),",
        'translation': "(yang dikobarkan) api penuh kayu bakar.",
      },
      {
        'no': '6',
        'arabic': "اِذْ هُمْ عَلَيْهَا قُعُوْدٌۙ",
        'transliteration': "iż hum ‘alaihā qu‘ūd(un),",
        'translation': "ketika mereka duduk di sekitarnya,",
      },
      {
        'no': '7',
        'arabic': "وَّهُمْ عَلٰى مَا يَفْعَلُوْنَ بِالْمُؤْمِنِيْنَ شُهُوْدٌۗ",
        'transliteration': "wa hum ‘alā mā yaf‘alūna bil-mu'minīna syuhūd(un).",
        'translation':
            "Mereka menyaksikan apa yang mereka perbuat terhadap orang-orang mukmin.",
      },
      {
        'no': '8',
        'arabic':
            "وَمَا نَقَمُوْا مِنْهُمْ اِلَّآ اَنْ يُّؤْمِنُوْا بِاللّٰهِ الْعَزِيْزِ الْحَمِيْدِۙ",
        'transliteration':
            "Wa mā naqamū minhum illā ay yu'minū billāhil-‘azīzil-ḥamīd(i).",
        'translation':
            "Tidaklah mereka menyiksa (membakar) orang-orang mukmin itu, kecuali karena mereka beriman kepada Allah Yang Maha Perkasa lagi Maha Terpuji,",
      },
      {
        'no': '9',
        'arabic':
            "الَّذِيْ لَهٗ مُلْكُ السَّمٰوٰتِ وَالْاَرْضِۗ وَاللّٰهُ عَلٰى كُلِّ شَيْءٍ شَهِيْدٌۗ",
        'transliteration':
            "allażī lahū mulkus-samāwāti wal-arḍ(i), wallāhu ‘alā kulli syai'in syahīd(un).",
        'translation':
            "yang memiliki kerajaan langit dan bumi. Allah Maha Menyaksikan segala sesuatu.",
      },
      {
        'no': '10',
        'arabic':
            "اِنَّ الَّذِيْنَ فَتَنُوا الْمُؤْمِنِيْنَ وَالْمُؤْمِنٰتِ ثُمَّ لَمْ يَتُوْبُوْا فَلَهُمْ عَذَابُ جَحَنَّمَ وَلَهُمْ عَذَابُ الْحَرِيْقِۗ",
        'transliteration':
            "Innal-lażīna fatanul-mu'minīna wal-mu'mināti ṡumma lam yatūbū falahum ‘ażābu jahannama wa lahum ‘ażābul-ḥarīq(i).",
        'translation':
            "Sesungguhnya, orang-orang yang menimpakan cobaan (siksa) terhadap mukmin laki-laki dan perempuan, lalu mereka tidak bertobat, mereka akan mendapat azab Jahanam dan mereka akan mendapat azab (neraka) yang membakar.",
      },
      {
        'no': '11',
        'arabic':
            "اِنَّ الَّذِيْنَ اٰمَنُوْa وَعَمِلُوا الصّٰلِحٰتِ لَهُمْ جَنّٰتٌ تَجْرِيْ مِنْ تَحْتِهَا الْاَنْهٰرُۗ ذٰلِكَ الْفَوْزُ الْكَبِيْرُۗ",
        'transliteration':
            "Innal-lażīna āmanū wa ‘amiluṣ-ṣāliḥāti lahum jannātun tajrī min taḥtihals-anhār(u), żālikal-fauzul-kabīr(u).",
        'translation':
            "Sesungguhnya, orang-orang yang beriman dan mengerjakan kebajikan, mereka akan mendapat surga yang mengalir di bawahnya sungai-sungai. Itulah kemenangan yang besar.",
      },
      {
        'no': '12',
        'arabic': "اِنَّ بَطْشَ رَبِّكَ لَشَدِيْدٌۗ",
        'transliteration': "Inna baṭsya rabbika lasyadīd(un).",
        'translation': "Sesungguhnya azab Tuhanmu sangat keras.",
      },
      {
        'no': '13',
        'arabic': "اِنَّهٗ هُوَ يُبْدِئُ وَيُعِيْدُۚ",
        'transliteration': "Innahū huwa yubdi'u wa yu‘īd(u).",
        'translation':
            "Sesungguhnya Dialah yang memulai (penciptaan makhluk) dan yang mengembalikan (hidup setelah mati).",
      },
      {
        'no': '14',
        'arabic': "وَهُوَ الْغَفُوْرُ الْوَدُوْدُۙ",
        'transliteration': "Wa huwal-gafūrul-wadūd(u),",
        'translation': "Dialah Yang Maha Pengampun lagi Maha Pengasih,",
      },
      {
        'no': '15',
        'arabic': "ذُو الْعَرْشِ الْمَجِيْدُۙ",
        'transliteration': "żul-‘arsyil-majīd(u),",
        'translation': "Pemilik ʻArasy lagi Maha Mulia,",
      },
      {
        'no': '16',
        'arabic': "فَعَّالٌ لِّمَا يُرِيْدُۗ",
        'transliteration': "fa‘‘ālul-limā yurīd(u).",
        'translation': "Maha Kuasa berbuat apa saja yang Dia kehendaki.",
      },
      {
        'no': '17',
        'arabic': "هَلْ اَتٰىكَ حَدِيْثُ الْجُنُوْدِۙ",
        'transliteration': "Hal atāka ḥadīṡul-junūd(i),",
        'translation': "Sudahkah sampai kepadamu berita tentang bala tentara,",
      },
      {
        'no': '18',
        'arabic': "فِرْعَوْنَ وَثَمُوْدَۗ",
        'transliteration': "fir‘auna wa ṡamūd(a).",
        'translation': "(yaitu bala tentara) Fir‘aun dan Samud?",
      },
      {
        'no': '19',
        'arabic': "بَلِ الَّذِيْنَ كَفَرُوْا فِيْ تَكْذِيْبٍۙ",
        'transliteration': "Balil-lażīna kafarū fī takżīb(in),",
        'translation': "Memang orang-orang kafir (selalu) mendustakan,",
      },
      {
        'no': '20',
        'arabic': "وَاللّٰهُ مِنْ وَّرَاۤىِٕهِمْ مُّحِيْطٌۚ",
        'transliteration': "wallāhu miw warā'ihim muḥīṭ(un).",
        'translation': "padahal Allah mengepung dari belakang mereka.",
      },
      {
        'no': '21',
        'arabic': "بَلْ هُوَ قُرْٰاُنٌ مَّجِيْدٌۙ",
        'transliteration': "Bal huwa qur'ānum majīd(un),",
        'translation': "Bahkan, (yang didustakan itu) Al-Qur’an yang mulia",
      },
      {
        'no': '22',
        'arabic': "فِيْ لَوْحٍ مَّحْفُوْظٍࣖ",
        'transliteration': "fī lauḥim maḥfūẓ(in).",
        'translation':
            "yang (tersimpan) dalam (tempat) yang terjaga (Lauhulmahfuz).",
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
          widget.surahData['name'] ?? 'Al-Buruj',
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
                widget.surahData['type'] ?? "MAKKIYAH",
                chipBgColor,
                chipTextColor,
              ),
              _buildChip(
                "${widget.surahData['verses'] ?? 22} Ayat",
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
