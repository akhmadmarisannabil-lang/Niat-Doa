import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SetelahSholatDhuhaPage extends StatelessWidget {
  const SetelahSholatDhuhaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff090f16),
      appBar: AppBar(
        backgroundColor: const Color(0xff090f16),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white70),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Doa Setelah Sholat Dhuha",
          style: TextStyle(
            color: Colors.white,
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
              _buildTag("Doa Setelah Sholat"),
              _buildTag("dhuha"),
              _buildTag("rezeki"),
            ],
          ),
          const SizedBox(height: 32),
          const Center(
            child: Text(
              "Teks Arab",
              style: TextStyle(
                color: Colors.tealAccent,
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
              color: const Color(0xff111a24),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              "اَللّٰهُمَّ إِنَّ الضَّحَآءَ ضَحَاءُكَ، وَالْبَهَاءَ بَهَاءُكَ، وَالْجَمَالَ جَمَالُكَ، وَالْقُوَّةَ قُوَّتُكَ، وَالْقُدْرَةَ قُدْرَتُكَ، وَالْعِصْمَةَ عِصْمَتُكَ. اَللّٰهُمَّ إِنْ كَانَ رِزْقِيْ فِي السَّمَآءِ فَأَنْزِلْهُ وَإِنْ كَانَ فِي اْلأَرْضِ فَأَخْرِجْهُ وَإِنْ كَانَ مُعْسِرًا (مُعَسَّرًا) فَيَسِّرْهُ وَإِنْ كَانَ حَرَامًا فَطَهِّرْهُ وَإِنْ كَانَ بَعِيْدًا فَقَرِّبْهُ بِحَقِّ ضَحَاءِكَ وَبَهَاءِكَ وَجَمَالِكَ وَقُوَّتِكَ وَقُدْرَتِكَ آتِنِيْ مَآ اَتَيْتَ عِبَادَكَ الصَّالِحِيْنَ",
              textAlign: TextAlign.center,
              style: GoogleFonts.amiri(
                color: Colors.white.withOpacity(0.9),
                fontSize: 20,
                height: 2.2,
              ),
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            "Transliterasi",
            style: TextStyle(
              color: Colors.tealAccent,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 12),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xff111a24),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Text(
              "Allâhumma innad dlaḫâ’a dlaḫâ’uka, wal bahâ’a bahâ’uka, wal jamâla jamâluka, wal quwwata quwwatuka, wal qudrata qudratuka, wal ishmata ishmatuka. Allâhuma in kâna rizqî fis samâ’i fa anzilhu, wa inkâna fil ardhi fa akhrijhu, wa inkâna mu’siran (mu‘assaran) fa yassirhu, wa in kâna ḫarâman fa thahhirhu, wa inkâna ba‘îdan fa qarribhu, bi ḫaqqi dlaḫâ’ika wa bahâ’ika wa jamâlika wa quwwatika wa qudratika âtinî mâ ataita ‘ibâdakas shâliḫîn.",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 14,
                fontStyle: FontStyle.italic,
                height: 1.4,
              ),
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            "Terjemahan",
            style: TextStyle(
              color: Colors.tealAccent,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 12),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xff111a24),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.teal.withOpacity(0.2)),
            ),
            child: const Text(
              "Wahai Tuhanku, sungguh dhuha ini adalah dhuha-Mu, keagungan ini adalah keagungan-Mu, keindahan ini adalah keindahan-Mu, kekuatan ini adalah kekuatan-Mu, kuasa ini adalah kuasa-Mu, dan penjagaan ini adalah penjagaan-Mu.Wahai Tuhanku, jika rezekiku berada di atas langit maka turunkanlah. Jika berada di dalam bumi maka keluarkanlah. Jika sukar atau dipersulit (kudapat), mudahkanlah. Jika (tercampur tanpa sengaja dengan yang) haram, sucikanlah. Jika jauh, dekatkanlah. Dengan hak dhuha, keelokan, keindahan, kekuatan, dan kekuasaan-Mu, datangkanlah padaku apa yang Engkau datangkan kepada para hamba-Mu yang saleh.",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 14,
                height: 1.4,
              ),
            ),
          ),
          const SizedBox(height: 24),
          Row(
            children: const [
              Icon(Icons.info_outline, color: Colors.tealAccent, size: 18),
              SizedBox(width: 6),
              Text(
                "Keterangan",
                style: TextStyle(
                  color: Colors.tealAccent,
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
              color: const Color(0xff111a24),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.teal.withOpacity(0.1)),
            ),
            child: const Text(
              "Dianjurkan dibaca setelah sholat Dhuha untuk memohon kelancaran, kemudahan dari urusan yang sukar, kesucian rezeki, serta limpahan anugerah sebagaimana yang diberikan kepada hamba-hamba Allah yang saleh.",
              style: TextStyle(
                color: Colors.white60,
                fontSize: 13,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTag(String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: const TextStyle(color: Colors.white70, fontSize: 11),
      ),
    );
  }
}
