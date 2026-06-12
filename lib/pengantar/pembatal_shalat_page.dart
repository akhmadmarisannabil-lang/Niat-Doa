import 'package:flutter/material.dart';

class PembatalShalatPage extends StatelessWidget {
  const PembatalShalatPage({super.key});

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
          "Yang Membatalkan Shalat",
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
              _buildTag("Hal Membatalkan", chipBgColor, chipTextColor),
            ],
          ),
          const SizedBox(height: 32),

          Text(
            "Perkara yang Membatalkan Shalat",
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
              "Shalat seseorang akan batal dan tidak sah secara hukum syariat apabila terjadi salah satu perkara berikut di tengah-tengah shalat:\n\n"
              "a. Berhadats besar maupun kecil (misalnya buang angin atau buang air).\n"
              "b. Terkena najis pada badan, pakaian, atau tempat shalat jika tidak langsung dibuang.\n"
              "c. Terbukanya aurat dengan sengaja, atau tidak langsung ditutup ketika terbuka tanpa sengaja.\n"
              "d. Berbicara dengan sengaja mengucapkan kata-kata di luar bacaan shalat.\n"
              "e. Melakukan gerakan besar sebanyak tiga kali berturut-turut di luar gerakan shalat.\n"
              "f. Makan atau minum, meskipun hanya sedikit.\n"
              "g. Berubah niat (misalnya berniat ingin memutus shalat).\n"
              "h. Membelakangi kiblat.\n"
              "i. Tertawa terbahak-bahak hingga mengeluarkan suara.\n"
              "j. Murtad (keluar dari agama Islam).",
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
