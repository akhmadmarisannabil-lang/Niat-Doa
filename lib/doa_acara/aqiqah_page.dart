import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AqiqahPage extends StatelessWidget {
  const AqiqahPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Disamakan dengan background Doa Pembukaan
      backgroundColor: const Color(0xff090f16),
      appBar: AppBar(
        backgroundColor: const Color(0xff090f16),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white70),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Doa Acara Aqiqah",
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
              _buildTag("Acara"),
              _buildTag("Aqiqah"),
              _buildTag("Anak"),
            ],
          ),
          const SizedBox(height: 32),
          const Center(
            child: Text(
              "Teks Arab",
              style: TextStyle(
                color: Colors
                    .tealAccent, // Mengubah warna dari amber ke tealAccent
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
              color: const Color(
                0xff111a24,
              ), // Mengubah background container teks
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              "اللَّهُمَّ احْفَظْهُ مِنْ شَرِّ الْجِنِّ وَالْإِنْسِ وَأُمِّ الصِّبْيَانِ بِبَرَكَةِ اسْمِكَ الْمَكْتُوبِ",
              textAlign: TextAlign.center,
              style: GoogleFonts.amiri(
                color: Colors.white.withOpacity(0.9),
                fontSize: 22,
                height: 2.2,
              ),
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            "Transliterasi",
            style: TextStyle(
              color: Colors.tealAccent, // Mengubah warna ke tealAccent
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
              "Allahummahfadzhu min syarril jinni wal insi wa ummis sibyani bibarakatis mikal maktub.",
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
              color: Colors.tealAccent, // Mengubah warna ke tealAccent
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
              border: Border.all(
                color: Colors.teal.withOpacity(0.2),
              ), // Mengubah border amber ke teal
            ),
            child: const Text(
              "Ya Allah, jagalah dia dari keburukan jin, manusia, dan penyakit anak-anak, dengan berkah nama-Mu yang tertulis.",
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
              Icon(
                Icons.info_outline,
                color: Colors.tealAccent,
                size: 18,
              ), // Mengubah icon ke tealAccent
              SizedBox(width: 6),
              Text(
                "Keterangan",
                style: TextStyle(
                  color: Colors.tealAccent, // Mengubah warna ke tealAccent
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
              border: Border.all(
                color: Colors.teal.withOpacity(0.1),
              ), // Mengubah border amber ke teal
            ),
            child: const Text(
              "Dibaca pada saat walimatul aqiqah memohon perlindungan total bagi bayi yang baru lahir dari segala gangguan kasat mata maupun tidak.",
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
