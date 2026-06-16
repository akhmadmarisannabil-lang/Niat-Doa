import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoaTakutKezalimanPenguasaPage extends StatelessWidget {
  const DoaTakutKezalimanPenguasaPage({super.key});

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
        : Colors.teal.withValues(alpha: 0.2);
    final Color arabicTextColor = isLightMode
        ? Colors.black
        : Colors.white.withValues(alpha: 0.9);

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
          "Doa Menghadapi Penguasa Zalim",
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
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: chipBgColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "Doa Musibah",
                  style: TextStyle(color: chipTextColor, fontSize: 11),
                ),
              ),
            ],
          ),
          const SizedBox(height: 32),
          Center(
            child: Text(
              "Teks Arab",
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
              "اَللَّهُمَّ رَبَّ السَّمَاوَاتِ السَّبْعِ، وَرَبَّ الْعَرْشِ الْعَظِيْمِ، كُنْ لِيْ جَارًا مِنْ فُلاَنٍ بْنِ فُلاَنٍ، وَأَحْزَابِهِ مِنْ خَلاَئِقِكَ، أَنْ يَفْرُطَ عَلَيَّ أَحَدٌ مِنْهُمْ أَوْ يَطْغَى، عَزَّ جَارُكَ، وَجَلَّ ثَنَاؤُكَ، وَلاَ إِلَـٰهَ إِلاَّ أَنْتَ",
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
              "Allaahumma robbas-samaawaatis-sab'i, wa robbal 'arsyil 'azhiim, kun lii jaaron min fulaanibni fulaan, wa ahzaabihi min kholaa-iqika, an yafrutho 'alayya ahadun minhum au yath-ghoo, 'azza jaaruka, wa jalla tsanaa-uka, wa laa ilaaha illa anta.",
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
              "Ya Allah, Tuhan Penguasa tujuh langit, Tuhan Penguasa 'Arsy yang agung. Jadilah Engkau pelindung bagiku dari Fulan bin Fulan, dan para kelompoknya dari makhlukMu. Jangan ada seorang pun dari mereka menyakitiku atau melampaui batas terhadapku. Sungguh kuat perlindunganMu, dan agunglah pujiMu. Tidak ada sesembahan yang berhak disembah kecuali Engkau.",
              style: TextStyle(color: subTextColor, fontSize: 14, height: 1.4),
            ),
          ),
        ],
      ),
    );
  }
}
