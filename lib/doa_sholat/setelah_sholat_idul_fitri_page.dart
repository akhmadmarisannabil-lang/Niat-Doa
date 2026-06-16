import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SetelahSholatIdulFitriPage extends StatelessWidget {
  const SetelahSholatIdulFitriPage({super.key});

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
          "Doa Setelah Shalat Idul Fitri",
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
            children: [_buildTag("Doa Ibadah", chipBgColor, chipTextColor)],
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
              "اَللّهُمَّ أَعْطِنِي خَيْرَ هَذَا الْيَوْمِ وَخَيْرَ مَا فِيْهِ، وَاْصرِفْ عَنِّي شَرَّهُ وَشَرَّ مَا فِيْهِ، اَللَّهُمَّ اكْتُبْ لِي فِيْهِ كُلَّ خَيْرٍ وَاجْعَلْنِي بَارًّا فِيْهِ بِوَالِدَيَّ، وَاجْعَلْنِي يَا الله مِنْ عِبَادِكَ الْمغْفٌوْرِ لَهُمْ فِي هَذَا الْيَومِ الْمُبَارَكَ، اللهُمَّ ارْحَم ْمَوْتَنا وَمَوْتَى الْمُسْلِمِيْنَ، .اللهم تَقَبَّلْ ِمنَّا الطَّاعَاتِ وَاغْفِر ْلَنَا الْخَطَايَا وَالسَّيِّئَاتَ",
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
              "Allahumma'thini khaira hadzal yaum wa khaira ma fihi. Washrif anni syarra ma fihi. Allahummaktubli fihi kulla khairin waj'alni barran fihi bi walidayya, waj'alni ya Allah min ibadikal maghfur lahum fi hadzal yaum al-mubarak. Allahumarham mautana wa mautal muslimin. Allahumma taqabbal minna tha'ati waghfir lanal khathaya was sayyi'at.",
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
              "Ya Allah, berikanlah aku kebaikan dari hari ini dan kebaikan dari setiap hal yang ada pada hari ini. Dan jauhkanlah aku dari kejelekan di hari ini dan kejelekan setiap sesuatu yang ada pada hari ini. Ya Allah, catatlah pada hari ini setiap kebaikan dan jadikanlah kebaikan bagi kedua orang tuaku dan jadikanlah aku sebagai hamba-Mu yang Engkau ampuni pada hari yang berkah ini. Ya Allah, ampunilah dosa para keluarga kami yang sudah meninggal dan seluruh kaum muslimin yang sudah meninggal. Ya Allah, terimalah ketaatan kami dan ampunilah segala kesahalan dan keburukan yang telah kami perbuat.",
              style: TextStyle(color: subTextColor, fontSize: 14, height: 1.4),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTag(String label, Color bg, Color textCol) {
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
