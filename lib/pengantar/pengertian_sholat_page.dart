import 'package:flutter/material.dart';

class PengertianShalatPage extends StatelessWidget {
  const PengertianShalatPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isLightMode = Theme.of(context).brightness == Brightness.light;

    // Menyelaraskan warna dinamis sistem tema aplikasi
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
          "Pengertian Shalat",
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
          // Navigasi Tag Penunjuk Kategori di Bagian Atas
          Wrap(
            spacing: 8,
            children: [_buildTag("Kata Pengantar", chipBgColor, chipTextColor)],
          ),
          const SizedBox(height: 32),

          // Bagian 1: Pengertian Secara Bahasa (Etimologi)
          Text(
            "Secara Bahasa (Etimologi)",
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
              "Secalar bahasa, kata shalat (صلاة) memiliki arti Doa, memohon kebajikan, atau pujian. Hal ini merujuk pada hakikat bahwa di dalam shalat seluruh isi dan gerakannya mengandung unsur permohonan hamba kepada Penciptanya.",
              style: TextStyle(color: subTextColor, fontSize: 14, height: 1.5),
            ),
          ),
          const SizedBox(height: 24),

          // Bagian 2: Pengertian Secara Istilah (Terminologi)
          Text(
            "Secara Istilah (Syariat)",
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
              "Menurut istilah syariat Islam, shalat adalah ibadah yang terdiri dari beberapa ucapan dan perbuatan tertentu, yang diawali dengan Takbiratul Ihram dan diakhiri dengan ucapan Salam, dengan syarat-syarat yang telah ditentukan.",
              style: TextStyle(color: subTextColor, fontSize: 14, height: 1.5),
            ),
          ),
          const SizedBox(height: 24),

          // Bagian 3: Landasan Hukum Ringkas
          Text(
            "Kedudukan Shalat",
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
              "Shalat merupakan rukun Islam yang kedua setelah syahadat. Ibadah ini merupakan tiang agama (Amadud Din) dan amalan yang pertama kali akan dihisab di akhirat kelak bagi setiap muslim.",
              style: TextStyle(color: subTextColor, fontSize: 14, height: 1.5),
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
