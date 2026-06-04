import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlLahabPage extends StatefulWidget {
  final Map<String, dynamic> surahData;

  const AlLahabPage({super.key, required this.surahData});

  @override
  State<AlLahabPage> createState() => _AlLahabPageState();
}

class _AlLahabPageState extends State<AlLahabPage> {
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
        'arabic': "تَبَّتْ يَدَآ اَبِيْ لَهَبٍ وَّتَبَّۗ",
        'transliteration': "Tabbat yadā abī lahabiw watabb(a).",
        'translation':
            "Binasalah kedua tangan Abu Lahab dan benar-benar binasa dia!",
      },
      {
        'no': '2',
        'arabic': "مَآ اَغْنٰى عَنْهُ مَالُهٗ وَمَا كَسَبَۗ",
        'transliteration': "Mā agnā ‘anhu māluhū wa mā kasab(a).",
        'translation':
            "Tidaklah berguna baginya hartanya dan apa yang dia usahakan.",
      },
      {
        'no': '3',
        'arabic': "سَيَصْلٰى نَارًا ذَاتَ لَهَبٍۙ",
        'transliteration': "Sayaṣlā nāran żāta lahab(in).",
        'translation': "Kelak dia akan memasuki api yang berkobar (neraka),",
      },
      {
        'no': '4',
        'arabic': "وَّامْرَاَتُهٗ ۗ حَمَّالَةَ الْحَطَبِۚ",
        'transliteration': "Wamra'atuhū, ḥammālatal-ḥaṭab(i).",
        'translation':
            "(begitu pula) istrinya, pembawa kayu bakar (penyebar fitnah),",
      },
      {
        'no': '5',
        'arabic': "فِيْ جِيْدِهَا حَبْلٌ مِّنْ مَّسَدٍࣖ",
        'transliteration': "Fī jīdihā ḥablum mim masad(in).",
        'translation': "di lehernya ada tali dari sabut yang dipintal.",
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
          widget.surahData['name'] ?? 'Al-Lahab',
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
                "${widget.surahData['verses'] ?? 5} Ayat",
                chipBgColor,
                chipTextColor,
              ),
              _buildChip("Juz 30", chipBgColor, chipTextColor),
            ],
          ),
          const SizedBox(height: 24),
          ListView.builder(
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
