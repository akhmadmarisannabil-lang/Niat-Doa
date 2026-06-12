import 'package:flutter/material.dart';

class SyaratShalatPage extends StatelessWidget {
  const SyaratShalatPage({super.key});

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
          "Syarat-Syarat Shalat",
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

          // Bagian 1: Syarat Wajib
          Text(
            "1. Syarat Wajib Shalat",
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
              "Syarat wajib menyebabkan seseorang diharuskan mendirikan shalat. Jika tidak terpenuhi, maka ia belum dibebani kewajiban ini:\n\n"
              "1. Islam (bukan non-muslim).\n"
              "2. Baligh (mencapai usia dewasa secara biologis/syariat).\n"
              "3. Berakal sehat (tidak gila atau hilang kesadaran).",
              style: TextStyle(color: subTextColor, fontSize: 14, height: 1.6),
            ),
          ),
          const SizedBox(height: 24),

          // Bagian 2: Syarat Sah
          Text(
            "2. Syarat Sah Shalat",
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
              "Syarat sah adalah hal-hal yang harus dipenuhi sebelum dan selama shalat berlangsung agar ibadahnya diterima:\n\n"
              "1. Suci dari hadas besar dan hadas kecil.\n"
              "2. Suci badan, pakaian, dan tempat shalat dari najis.\n"
              "3. Menutup aurat dengan pakaian yang sesuai syariat.\n"
              "4. Telah masuk waktu shalat yang ditentukan.\n"
              "5. Menghadap ke arah Kiblat (Ka'bah).",
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
