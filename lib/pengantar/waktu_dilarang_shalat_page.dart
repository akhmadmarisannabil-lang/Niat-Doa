import 'package:flutter/material.dart';

class WaktuDilarangShalatPage extends StatelessWidget {
  const WaktuDilarangShalatPage({super.key});

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
          "Waktu-Waktu Dilarang Shalat",
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
              _buildTag("Kata Pengantar", chipBgColor, chipTextColor),
              _buildTag("Larangan Shalat Mutlak", chipBgColor, chipTextColor),
            ],
          ),
          const SizedBox(height: 32),

          Text(
            "5 Waktu yang Dilarang Melakukan Shalat",
            style: TextStyle(
              color: accentColor,
              fontWeight: FontWeight.bold,
              fontSize: 14,
              letterSpacing: 0.5,
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
              "Larangan ini berlaku khusus untuk melakukan shalat sunnah mutlak (shalat sunnah yang tidak memiliki sebab tertentu):\n\n"
              "1. Setelah shalat Subuh hingga matahari terbit.\n"
              "2. Ketika matahari tepat berada di tengah-tengah langit (waktu Istiwa') hingga ia bergeser sedikit ke barat (masuk waktu Dzuhur), kecuali pada hari Jumat.\n"
              "3. Setelah shalat Ashar hingga matahari terbenam.\n"
              "4. Ketika matahari sedang terbit (proses muncul) hingga ia meninggi setinggi tombak.\n"
              "5. Ketika matahari sedang terbenam (proses merona kuning kemerahan) hingga ia benar-benar tenggelam sempurna.\n\n"
              "Pengecualian : Larangan ini berlaku mutlak untuk sholat sunnah yang tidak memiliki sebab khusus (sholat sunnah mutlak). Untuk sholat yang memiliki sebab khusus (seperti sholat gerhana atau sholat jenazah) dan sholat qadha (mengganti sholat yang tertinggal), tetap sah dan diperbolehkan.",
              style: TextStyle(color: subTextColor, fontSize: 14, height: 1.6),
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
