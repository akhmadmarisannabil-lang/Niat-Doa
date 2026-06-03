import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GerhanaPage extends StatefulWidget {
  const GerhanaPage({super.key});

  @override
  State<GerhanaPage> createState() => _GerhanaPageState();
}

class _GerhanaPageState extends State<GerhanaPage> {
  // Kondisi awal / default role terpilih (Meniru pola halaman sebelumnya)
  String _selectedRole = 'Gerhana Matahari (Kusuf) - Sendirian';

  // Kumpulan 6 data niat dinamis (Gerhana Bulan & Matahari) sesuai referensi image_5fd9c6.png
  final Map<String, Map<String, String>> _niatData = {
    // --- SHALAT GERHANA MATAHARI (KUSUF) ---
    'Gerhana Matahari (Kusuf) - Sendirian': {
      'title': 'Niat (Sendirian)',
      'arabic':
          "أُصَلِّى سُنَّةً لِكُسُوْفِ الشَّمْسِ رَكْعَتَيْنِ لِلّٰهِ تَعَالَىٰ",
      'transliteration':
          "Ushallii sunnatal-likusuufish-syamsi rak'ataini lillaahi ta'aalaa.",
      'translation':
          "Aku berniat shalat sunnah gerhana matahari dua rakaat karena Allah Ta'ala.",
    },
    'Gerhana Matahari (Kusuf) - Sebagai Imam': {
      'title': 'Niat (Imam)',
      'arabic':
          "أُصَلِّى سُنَّةً لِكُسُوْفِ الشَّمْسِ رَكْعَتَيْنِ إِمَامًا لِلّٰهِ تَعَالَىٰ",
      'transliteration':
          "Ushallii sunnatal-likusuufish-syamsi rak'ataini imaaman lillaahi ta'aalaa.",
      'translation':
          "Aku berniat shalat sunnah gerhana matahari dua rakaat sebagai imam karena Allah Ta'ala.",
    },
    'Gerhana Matahari (Kusuf) - Sebagai Makmum': {
      'title': 'Niat (Makmum)',
      'arabic':
          "أُصَلِّيْ سُنَّةً لِكُسُوْفِ الشَّمْسِ رَكْعَتَيْنِ مَأْمُوْمًا لِلهِ تَعَالَى",
      'transliteration':
          "Ushallii sunnatal-likusuufish-syamsi rak'ataini ma'muuman lillaahi ta'aalaa.",
      'translation':
          "Aku berniat shalat sunnah gerhana matahari dua rakaat sebagai makmum karena Allah Ta'ala.",
    },
    // --- SHALAT GERHANA BULAN (KHUSUF) ---
    'Gerhana Bulan (Khusuf) - Sendirian': {
      'title': 'Niat (Sendirian)',
      'arabic':
          "أُصَلِّى سُنَّةً لِخُسُوْفِ الْقَمَرِ رَكْعَتَيْنِ لِلّٰهِ تَعَالَىٰ",
      'transliteration':
          "Ushallii sunnatal-likhusuufil-qamari rak'ataini lillaahi ta'aalaa.",
      'translation':
          "Aku berniat shalat sunnah gerhana bulan dua rakaat karena Allah Ta'ala.",
    },
    'Gerhana Bulan (Khusuf) - Sebagai Imam': {
      'title': 'Niat (Imam)',
      'arabic':
          "أُصَلِّى سُنَّةً لِخُسُوْفِ الْقَمَرِ رَكْعَتَيْنِ إِمَامًا لِلّٰهِ تَعَالَىٰ",
      'transliteration':
          "Ushallii sunnatal-likhusuufil-qamari rak'ataini imaaman lillaahi ta'aalaa.",
      'translation':
          "Aku berniat shalat sunnah gerhana bulan dua rakaat sebagai imam karena Allah Ta'ala.",
    },
    'Gerhana Bulan (Khusuf) - Sebagai Makmum': {
      'title': 'Niat (Makmum)',
      'arabic':
          "أُصَلِّى سُنَّةً لِخُسُوْفِ الْقَمَرِ رَكْعَتَيْنِ مَأْمُوْمًا لِلّٰهِ تَعَالَىٰ",
      'transliteration':
          "Ushallii sunnatal-likhusuufil-qamari rak'ataini ma'muuman lillaahi ta'aalaa.",
      'translation':
          "Aku berniat shalat sunnah gerhana bulan dua rakaat sebagai makmum karena Allah Ta'ala.",
    },
  };

  @override
  Widget build(BuildContext context) {
    // Mengambil data aktif sesuai dengan state yang dipilih
    final currentNiat = _niatData[_selectedRole]!;

    return Scaffold(
      backgroundColor: const Color(
        0xff121212,
      ), // Sesuai tema gelap image_5fd9c6.png
      appBar: AppBar(
        backgroundColor: const Color(0xff121212),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white70),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Niat Shalat Gerhana",
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
          // Bagian Tag / Kategori atas (Sesuai chip pada image_5fd9c6.png)
          Wrap(
            spacing: 8,
            children: [
              _buildChip("Shalat Sunnah"),
              _buildChip("gerhana"),
              _buildChip("kusuf-khusuf"),
            ],
          ),
          const SizedBox(height: 24),

          // FITUR DROPDOWN SELECTION (Mengakomodasi 6 opsi pilihan menu)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            decoration: BoxDecoration(
              color: const Color(0xff1e1e1e),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.teal.withOpacity(0.3), width: 1),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: _selectedRole,
                dropdownColor: const Color(0xff1e1e1e),
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.tealAccent,
                ),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                items: _niatData.keys.map((String role) {
                  return DropdownMenuItem<String>(
                    value: role,
                    child: Text(role),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  if (newValue != null) {
                    setState(() {
                      _selectedRole =
                          newValue; // Memperbarui state secara interaktif[cite: 19]
                    });
                  }
                },
              ),
            ),
          ),
          const SizedBox(height: 32),

          // 1. Seksi Teks Arab Dinamis
          Center(
            child: Text(
              currentNiat['title']!,
              style: const TextStyle(
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
              color: const Color(0xff1e1e1e),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              currentNiat['arabic']!,
              textAlign: TextAlign.center,
              style: GoogleFonts.amiri(
                color: Colors.white.withOpacity(0.9),
                fontSize: 24,
                height: 2.2,
              ),
            ),
          ),
          const SizedBox(height: 24),

          // 2. Seksi Transliterasi Dinamis
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
              color: const Color(0xff1e1e1e),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              currentNiat['transliteration']!,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 14,
                fontStyle: FontStyle.italic,
                height: 1.4,
              ),
            ),
          ),
          const SizedBox(height: 24),

          // 3. Seksi Terjemahan Dinamis
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
              color: const Color(0xff1e1e1e),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              currentNiat['translation']!,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 14,
                height: 1.4,
              ),
            ),
          ),
          const SizedBox(height: 24),

          // 4. Seksi Keterangan & Aturan Berdasarkan image_5fd9c6.png
          Row(
            children: const [
              Icon(Icons.info_outline, color: Colors.tealAccent, size: 18),
              SizedBox(width: 8),
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
              color: const Color(0xff1e1e1e),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Text(
              "Shalat Gerhana adalah shalat sunnah dua rakaat yang dilaksanakan ketika terjadi fenomena gerhana, baik gerhana matahari (Kusuf) maupun gerhana bulan (Khusuf). Tata cara pelaksanaannya memiliki keunikan tersendiri, yaitu terdapat dua kali ruku' dan dua kali membaca Al-Fatihah pada setiap rakaatnya.",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 13,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Helper Widget untuk membangun Tag/Chip atas
  Widget _buildChip(String label) {
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
