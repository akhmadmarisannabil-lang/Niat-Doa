import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GerhanaPage extends StatefulWidget {
  const GerhanaPage({super.key});

  @override
  State<GerhanaPage> createState() => _GerhanaPageState();
}

class _GerhanaPageState extends State<GerhanaPage> {
  String _selectedRole = 'Gerhana Matahari (Kusuf) - Sendirian';

  final Map<String, Map<String, String>> _niatData = {
    'Gerhana Matahari (Kusuf) - Sendirian': {
      'title': 'Niat (Sendirian)',
      'arabic':
          "أُصَلِّى سُنَّةً لِكُسُوْفِ الشَّمْسِ رَكْعَتَيْنِ لِلّٰهِ تَعَالَىٰ",
      'transliteration':
          "Ushallii sunnatal-likusuufish-syamsi rak'ataini lillaahi ta'aalaa.",
      'translation':
          "Aku berniat shalat sunnah gerhana matahari dua rakaat karena Allah Ta'ala.",
    },
    'Gerhana Matahari (Kusuf) - Sebagai Imam': {
      'title': 'Niat (Imam)',
      'arabic':
          "أُصَلِّى سُنَّةً لِكُسُوْفِ الشَّمْسِ رَكْعَتَيْنِ إِمَامًا لِلّٰهِ تَعَالَىٰ",
      'transliteration':
          "Ushallii sunnatal-likusuufish-syamsi rak'ataini imaaman lillaahi ta'aalaa.",
      'translation':
          "Aku berniat shalat sunnah gerhana matahari dua rakaat sebagai imam karena Allah Ta'ala.",
    },
    'Gerhana Matahari (Kusuf) - Sebagai Makmum': {
      'title': 'Niat (Makmum)',
      'arabic':
          "أُصَلِّيْ سُنَّةً لِكُسُوْفِ الشَّمْسِ رَكْعَتَيْنِ مَأْمُوْمًا لِلهِ تَعَالَى",
      'transliteration':
          "Ushallii sunnatal-likusuufish-syamsi rak'ataini ma'muuman lillaahi ta'aalaa.",
      'translation':
          "Aku berniat shalat sunnah gerhana matahari dua rakaat sebagai makmum karena Allah Ta'ala.",
    },
    'Gerhana Bulan (Khusuf) - Sendirian': {
      'title': 'Niat (Sendirian)',
      'arabic':
          "أُصَلِّى سُنَّةً لِخُسُوْفِ الْقَمَرِ رَكْعَتَيْنِ لِلّٰهِ تَعَالَىٰ",
      'transliteration':
          "Ushallii sunnatal-likhusuufil-qamari rak'ataini lillaahi ta'aalaa.",
      'translation':
          "Aku berniat shalat sunnah gerhana bulan dua rakaat karena Allah Ta'ala.",
    },
    'Gerhana Bulan (Khusuf) - Sebagai Imam': {
      'title': 'Niat (Imam)',
      'arabic':
          "أُصَلِّى سُنَّةً لِخُسُوْفِ الْقَمَرِ رَكْعَتَيْنِ إِمَامًا لِلّٰهِ تَعَالَىٰ",
      'transliteration':
          "Ushallii sunnatal-likhusuufil-qamari rak'ataini imaaman lillaahi ta'aalaa.",
      'translation':
          "Aku berniat shalat sunnah gerhana bulan dua rakaat sebagai imam karena Allah Ta'ala.",
    },
    'Gerhana Bulan (Khusuf) - Sebagai Makmum': {
      'title': 'Niat (Makmum)',
      'arabic':
          "أُصَلِّى سُنَّةً لِخُسُوْفِ الْقَمَرِ رَكْعَتَيْنِ مَأْمُوْمًا لِلّٰهِ تَعَالَىٰ",
      'transliteration':
          "Ushallii sunnatal-likhusuufil-qamari rak'ataini ma'muuman lillaahi ta'aalaa.",
      'translation':
          "Aku berniat shalat sunnah gerhana bulan dua rakaat sebagai makmum karena Allah Ta'ala.",
    },
  };

  @override
  Widget build(BuildContext context) {
    final bool isLightMode = Theme.of(context).brightness == Brightness.light;
    final currentNiat = _niatData[_selectedRole]!;

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
          "Niat Shalat Gerhana",
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
              _buildChip("Shalat Sunnah", chipBgColor, chipTextColor),
              _buildChip("gerhana", chipBgColor, chipTextColor),
              _buildChip("kusuf-khusuf", chipBgColor, chipTextColor),
            ],
          ),
          const SizedBox(height: 24),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            decoration: BoxDecoration(
              color: cardColor,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: isLightMode ? borderColor : Colors.teal.withOpacity(0.3),
                width: 1,
              ),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: _selectedRole,
                dropdownColor: cardColor,
                icon: Icon(Icons.arrow_drop_down, color: accentColor),
                style: TextStyle(
                  color: mainTextColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                items: _niatData.keys.map((String role) {
                  return DropdownMenuItem<String>(
                    value: role,
                    child: Text(role),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  if (newValue != null) {
                    setState(() {
                      _selectedRole = newValue;
                    });
                  }
                },
              ),
            ),
          ),
          const SizedBox(height: 32),
          Center(
            child: Text(
              currentNiat['title']!,
              style: TextStyle(
                color: accentColor,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
          const SizedBox(height: 12),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
            decoration: BoxDecoration(
              color: cardColor,
              borderRadius: BorderRadius.circular(12),
              border: isLightMode ? Border.all(color: borderColor) : null,
            ),
            child: Text(
              currentNiat['arabic']!,
              textAlign: TextAlign.center,
              style: GoogleFonts.amiri(
                color: arabicTextColor,
                fontSize: 24,
                height: 2.2,
              ),
            ),
          ),
          const SizedBox(height: 24),
          Text(
            "Transliterasi",
            style: TextStyle(
              color: accentColor,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 12),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: cardColor,
              borderRadius: BorderRadius.circular(12),
              border: isLightMode ? Border.all(color: borderColor) : null,
            ),
            child: Text(
              currentNiat['transliteration']!,
              style: TextStyle(
                color: subTextColor,
                fontSize: 14,
                fontStyle: FontStyle.italic,
                height: 1.4,
              ),
            ),
          ),
          const SizedBox(height: 24),
          Text(
            "Terjemahan",
            style: TextStyle(
              color: accentColor,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 12),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: cardColor,
              borderRadius: BorderRadius.circular(12),
              border: isLightMode ? Border.all(color: borderColor) : null,
            ),
            child: Text(
              currentNiat['translation']!,
              style: TextStyle(color: subTextColor, fontSize: 14, height: 1.4),
            ),
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Icon(Icons.info_outline, color: accentColor, size: 18),
              const SizedBox(width: 8),
              Text(
                "Keterangan",
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
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: cardColor,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: isLightMode ? borderColor : Colors.teal.withOpacity(0.1),
              ),
            ),
            child: Text(
              "Shalat Gerhana adalah shalat sunnah dua rakaat yang dilaksanakan ketika terjadi fenomena gerhana, baik gerhana matahari (Kusuf) maupun gerhana bulan (Khusuf). Tata cara pelaksanaannya memiliki keunikan tersendiri, yaitu terdapat dua kali ruku' dan dua kali membaca Al-Fatihah pada setiap rakaatnya.",
              style: TextStyle(color: subTextColor, fontSize: 13, height: 1.5),
            ),
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
}
