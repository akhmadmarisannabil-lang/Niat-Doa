import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QobliyahAsharPage extends StatefulWidget {
  const QobliyahAsharPage({super.key});

  @override
  State<QobliyahAsharPage> createState() => _QobliyahAsharPageState();
}

class _QobliyahAsharPageState extends State<QobliyahAsharPage> {
  @override
  Widget build(BuildContext context) {
    // Deteksi Mode Terang atau Mode Gelap
    final bool isLightMode = Theme.of(context).brightness == Brightness.light;

    // Palet warna dinamis
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
    final Color tagBgColor = isLightMode
        ? const Color(0xffe2e8f0)
        : Colors.white10;
    final Color tagTextColor = isLightMode
        ? const Color(0xff64748b)
        : Colors.white70;
    final Color accentColor = isLightMode
        ? const Color(0xff0f766e)
        : Colors.tealAccent;
    final Color borderColor = isLightMode
        ? const Color(0xffe2e8f0)
        : Colors.teal.withOpacity(0.2);

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
          "Niat Qobliyah Ashar",
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
                  color: tagBgColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "Shalat Sunnah",
                  style: TextStyle(color: tagTextColor, fontSize: 11),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: tagBgColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "qobliyah ashar",
                  style: TextStyle(color: tagTextColor, fontSize: 11),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: tagBgColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "rawatib",
                  style: TextStyle(color: tagTextColor, fontSize: 11),
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
              "أُصَلِّىْ سُنَّةَ الْعَصْرِ رَكْعَتَيْنِ قَبْلِيَّةً لِلّٰهِ تَعَالَىٰ",
              textAlign: TextAlign.center,
              style: GoogleFonts.amiri(
                color: isLightMode
                    ? Colors.black87
                    : Colors.white.withOpacity(0.9),
                fontSize: 24,
                fontWeight: FontWeight.normal,
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
              "Ushallii sunnatash-'ashri rak'ataini qabliyyatan lillaahi ta'aalaa.",
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
              border: Border.all(color: borderColor),
            ),
            child: Text(
              "Aku berniat shalat sunnah Ashar dua rakaat sebelum fardhu karena Allah Ta'ala.",
              style: TextStyle(color: subTextColor, fontSize: 14, height: 1.4),
            ),
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Icon(Icons.info_outline, color: accentColor, size: 18),
              const SizedBox(width: 6),
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
                color: isLightMode
                    ? const Color(0xffe2e8f0)
                    : Colors.teal.withOpacity(0.1),
              ),
            ),
            child: Text(
              "Shalat Qobliyah Ashar berstatus ghoiru muakkad (tidak begitu ditekankan), namun memiliki keutamaan doa khusus dari Rasulullah SAW: 'Allah merahmati seseorang yang shalat empat rakaat sebelum Ashar.' Sangat dianjurkan untuk dikerjakan 4 rakaat dengan 2 kali salam (artinya 2 rakaat salam, lalu 2 rakaat salam lagi) atau Jika melakukan 4 rakaat lansung, lafadz niatnya tinggal disesuaikan menjadi 'arba'a raka'aatin' (أَرْبَعَ رَكَعَاتٍ). bisa juga mengerjakan 2 rakaat saja.",
              style: TextStyle(
                color: isLightMode ? const Color(0xff475569) : Colors.white60,
                fontSize: 13,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
