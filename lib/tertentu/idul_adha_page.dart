import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IdulAdhaPage extends StatefulWidget {
  const IdulAdhaPage({super.key});

  @override
  State<IdulAdhaPage> createState() => _IdulAdhaPageState();
}

class _IdulAdhaPageState extends State<IdulAdhaPage> {
  // Kondisi awal / default role terpilih (Meniru pola SubuhPage & IdulFitriPage)
  String _selectedRole = 'Shalat Idul Adha Sendirian';

  // Kumpulan data niat dinamis berdasarkan pilihan peran (Referensi teks dari image_5f6d46.png)
  final Map<String, Map<String, String>> _niatData = {
    'Shalat Idul Adha Sendirian': {
      'title': 'Niat (Sendirian)',
      'arabic':
          "أُصَلِّى سُنَّةً لِعِيْدِ الْأَضْحَىٰ رَكْعَتَيْنِ لِلّٰهِ تَعَالَىٰ",
      'transliteration':
          "Ushallii sunnatal-li'iidil-adha rak'ataini lillaahi ta'aalaa.",
      'translation':
          "Aku berniat shalat sunnah Idul Adha dua rakaat karena Allah Ta'ala.",
    },
    'Shalat Idul Adha Sebagai Imam': {
      'title': 'Niat (Imam)',
      'arabic':
          "أُصَلِّى سُنَّةً لِعِيْدِ الْأَضْحَىٰ رَكْعَتَيْنِ إِمَامًا لِلّٰهِ تَعَالَىٰ",
      'transliteration':
          "Ushallii sunnatal-li'iidil-adha rak'ataini imaaman lillaahi ta'aalaa.",
      'translation':
          "Aku berniat shalat sunnah Idul Adha dua rakaat sebagai imam karena Allah Ta'ala.",
    },
    'Shalat Idul Adha Sebagai Makmum': {
      'title': 'Niat (Makmum)',
      'arabic':
          "أُصَلِّيْ سُنَّةً لِعِيْدِ الْأَضْحَىٰ رَكْعَتَيْنِ مَأْمُوْمًا لِلهِ تَعَالَىٰ",
      'transliteration':
          "Ushallii sunnatal-li'iidil-adha rak'ataini ma'muuman lillaahi ta'aalaa.",
      'translation':
          "Aku berniat shalat sunnah Idul Adha dua rakaat sebagai makmum karena Allah Ta'ala.",
    },
  };

  @override
  Widget build(BuildContext context) {
    // Mengambil data aktif sesuai dengan state yang dipilih
    final currentNiat = _niatData[_selectedRole]!;

    return Scaffold(
      backgroundColor: const Color(0xff121212), // Sesuai tema gelap Idul Adha
      appBar: AppBar(
        backgroundColor: const Color(0xff121212),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white70),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Niat Shalat Idul Adha",
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
          // Bagian Tag / Kategori atas (Sesuai chip pada image_5f6d46.png)
          Wrap(
            spacing: 8,
            children: [
              _buildChip("Shalat Sunnah"),
              _buildChip("idul adha"),
              _buildChip("hari raya"),
            ],
          ),
          const SizedBox(height: 24),

          // FITUR DROPDOWN SELECTION (Meniru persis kontrol interaktif dari SubuhPage)
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
                  fontSize: 15,
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
                          newValue; // Memperbarui tampilan data niat secara dinamis[cite: 23]
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

          // 4. Seksi Keterangan & Aturan (Sesuai teks statis pada image_5f6d46.png)
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
              "Shalat Idul Adha adalah shalat sunnah dua rakaat yang dikerjakan pada pagi hari tanggal 10 Dzulhijjah, bertepatan dengan Hari Raya Qurban. Disunnahkan untuk dilaksanakan lebih awal/pagi agar ibadah penyembbelihan hewan qurban bisa segera dimulai.",
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
