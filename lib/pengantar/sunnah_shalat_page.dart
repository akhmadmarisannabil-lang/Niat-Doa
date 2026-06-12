import 'package:flutter/material.dart';

class SunnahShalatPage extends StatelessWidget {
  const SunnahShalatPage({super.key});

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
          "Sunnah Dalam Melakukan Shalat",
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

          // Bagian 1: Sunnah Ab'ad
          Text(
            "1. Sunnah Ab'ad",
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
              "Sunnah Ab'ad adalah amalan sunnah di dalam shalat yang jika terlupa atau terlewatkan (Dianjurkan Menggunakan Sujud Sahwi)\n\n"
              "1. Duduk Tasyahud Awal: Duduk ketika membaca tasyahud awal.\n"
              "2. Membaca Tasyahud Awal: Membaca bacaan tahiyyat pada duduk pertama.\n"
              "3. Sholawat saat Tasyahud Awal: Bersholawat kepada Nabi Muhammad SAW setelah tasyahud awal.\n"
              "4. Sholawat kepada Keluarga Nabi saat Tasyahud Akhir: Bersholawat kepada keluarga Nabi (آل محمد) setelah tasyahud akhir.\n"
              "5. Membaca Doa Qunut: Membaca doa qunut pada sholat Subuh dan sholat Witir di separuh akhir bulan Ramadan.",
              style: TextStyle(color: subTextColor, fontSize: 14, height: 1.6),
            ),
          ),
          const SizedBox(height: 24),

          // Bagian 2: Sunnah Hai'at
          Text(
            "2. Sunnah Hai'at",
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
              "Sunnah Hai'at adalah amalan sunnah didalam sholat yang jika terlewatkan (Tidak Perlu Sujud Sahwi jika Terlewat).\n\n"
              "1. Mengangkat Kedua Tangan: Dilakukan saat takbiratul ihram, ketika hendak rukuk, bangkit dari rukuk, dan saat berdiri dari tasyahud awal.\n"
              "2. Meletakkan Tangan: Bersedekap dengan tangan kanan di atas punggung tangan kiri di atas dada.\n"
              "3. Membaca Doa Iftitah: Dibaca setelah takbiratul ihram dan sebelum membaca Al-Fatihah.\n"
              "4. Membaca Ta'awudz: Memohon perlindungan dari setan sebelum membaca Al-Fatihah.\n"
              "5. Mengeraskan atau Memelankan Suara: Mengeraskan (jahr) bacaan pada sholat Maghrib, Isya, dan Subuh, serta memelankan (sirr) pada sholat Dzuhur dan Ashar.\n"
              "6. Membaca Surat Pendek: Membaca ayat atau surat Al-Qur'an setelah Al-Fatihah pada dua rakaat pertama.\n"
              "7. Membaca Tasbih saat Rukuk dan Sujud: Membaca tasbih ketika posisi rukuk maupun sujud.\n"
              "8. Duduk Iftirasy & Tawarruk: Duduk iftirasy (duduk di antara dua sujud dan tasyahud awal) dan duduk tawarruk (duduk bersilang saat tasyahud akhir).\n",
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
