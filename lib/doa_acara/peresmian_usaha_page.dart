import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PeresmianUsahaPage extends StatelessWidget {
  const PeresmianUsahaPage({super.key});

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
          "Doa Peresmian Tempat Usaha",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
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
              _buildTag("Bisnis"),
              _buildTag("Toko Baru"),
              _buildTag("Rezeki Halal"),
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
              "اللَّهُمَّ إِنِّي أَسْأَلُكَ خَيْرَ هَذَا الْمَوْلِجِ وَخَيْرَ الْمَخْرَجِ بِسْمِ اللَّهِ وَلَجْنَا",
              textAlign: TextAlign.center,
              style: GoogleFonts.amiri(
                color: Colors.white.withOpacity(0.9),
                fontSize: 24,
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
              "Allahumma inni as'aluka khaira hadzal mauliji wa khairal makhraji bismillahi walajna.",
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
              "Ya Allah, sesungguhnya aku memohon kepada-Mu kebaikan tempat masuk ini dan kebaikan tempat keluar ini, dengan nama Allah kami masuk.",
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
              "Dilafadzkan saat grand opening kantor, ruko, toko, maupun platform niaga baru agar dijauhkan dari kerugian dan dipenuhi muamalah penuh berkah.",
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
