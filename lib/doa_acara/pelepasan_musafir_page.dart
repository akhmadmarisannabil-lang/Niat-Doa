import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PelepasanMusafirPage extends StatelessWidget {
  const PelepasanMusafirPage({super.key});

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
          "Doa Acara Pelepasan Musafir",
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
            children: [_buildTag("Doa Acara", chipBgColor, chipTextColor)],
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
              "بسم الله ، تَوَكَّلْتُ عَلَى الله ، اللهُمَّ أَعُوذُ بكَ أَنْ أَضَلَّ أَوْ أُضَلَّ أَوْ أَزِلَّ أَوْ أَزَلْ أَوْ أَظْلَمَ أَوْ أَظْلَمَ أَوْ أَجْهَلَ أَوْ يُجْهَلَ عَلَيَّ",
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
              "Bismillāh, tawakkaltu 'alallāh. Allāhumma a'ūdzu bika an adhilla aw udhalla, aw azilla aw uzalla, aw azhlima aw uzhlama, aw ajhala aw yujhala 'alayya.",
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
              "Dengan menyebut nama Allah. Aku serahkan (semua urusan) kepada Allah. Ya Allah, aku berlindung kepada-Mu dari tersesat dan menyesatkan, dari tergelincir dan menggelincirkan, dari berbuat aniaya atau teraniaya dari kebodohan atau pembodohan terhadapku.",
              style: TextStyle(color: subTextColor, fontSize: 14, height: 1.4),
            ),
          ),

          // ===================== DOA KEDUA =====================
          const SizedBox(height: 32),

          Divider(color: accentColor),

          const SizedBox(height: 20),

          Center(
            child: Text(
              "Setelah membaca doa di atas, bisa membaca doa yang dibaca Rasulullah SAW ketika keluar rumah untuk bepergian berikut :",
              style: TextStyle(
                color: accentColor,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),

          const SizedBox(height: 20),

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
              "اللَّهُمَّ أَنْتَ الصَّاحِبُ في السَّفَر وَالْخَليفَةُ فى الأهْل اللَّهُمَّ إِنِّي أَعُوْذُ بِكَ مِنَ الضَّيِّئَةِ فِي السفر والكآبة فى الْمُنْقَلَب اللهم اطو لَنَا الْأَرْضَ وَهَوِّنُ عَلَيْنَا السَّفَرَ",
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
              "Allāhumma antaṣ-ṣāḥibu fis-safar, wal-khalīfatu fil-ahli. Allāhumma innī a'ūdzu bika minadh-dhayyiati fis-safar wal-ka'ābati fil-munqalab. Allāhummaṭwi lanal-ardha wa hawwin 'alainas-safar.",
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
              "Ya Allah, Engkaulah yang menemani dalam perjalanan, yang menjadi pengganti dalam keluarga. Ya Allah aku berlindung kepada-Mu dari menjadi kebutuhan yang berlebihan dalam perjalanan dan kesedihan saat kembali. Ya Allah, lipatlah bumi untuk kami dan berilah kemudahan kepada kami dalam perjalanan.",
              style: TextStyle(color: subTextColor, fontSize: 14, height: 1.4),
            ),
          ),

          const SizedBox(height: 24),
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
