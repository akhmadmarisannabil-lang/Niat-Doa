import 'package:flutter/material.dart';

class RukunShalatPage extends StatelessWidget {
  const RukunShalatPage({super.key});

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
          "Rukun Shalat",
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
            children: [_buildTag("Kata Pengantar", chipBgColor, chipTextColor)],
          ),
          const SizedBox(height: 32),

          Text(
            "13 Rukun Shalat",
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
              "Rukun shalat adalah pilar penyusun ibadah shalat yang wajib dilakukan di dalam shalat. Jika salah satunya ditinggalkan secara sengaja maupun lupa, maka shalatnya batal:\n\n"
              "1. Niat mendirikan shalat.\n"
              "2. Berdiri bagi yang mampu.\n"
              "3. Takbiratul Ihram.\n"
              "4. Membaca surah Al-Fatihah pada tiap rakaat.\n"
              "5. Ruku' dengan Thuma'ninah (tenang sejenak).\n"
              "6. I'tidal dengan Thuma'ninah.\n"
              "7. Sujud dua kali dengan Thuma'ninah.\n"
              "8. Duduk di antara dua sujud dengan Thuma'ninah.\n"
              "9. Duduk Tasyahud Akhir.\n"
              "10. Membaca bacaan Tasyahud Akhir.\n"
              "11. Membaca Shalawat kepada Nabi Muhammad SAW.\n"
              "12. Mengucapkan Salam yang pertama.\n"
              "13. Tertib (melakukannya secara berurutan).",
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
