import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IstisqaPage extends StatefulWidget {
  const IstisqaPage({super.key});

  @override
  State<IstisqaPage> createState() => _IstisqaPageState();
}

class _IstisqaPageState extends State<IstisqaPage> {
  // Kondisi awal / default role terpilih
  String _selectedRole = 'Shalat Istisqa Sebagai Makmum';

  // Kumpulan data niat shalat berdasarkan pilihan peran (Dinamis dengan komponen 'title')
  final Map<String, Map<String, String>> _niatData = {
    'Shalat Istisqa Sendirian': {
      'title': 'Lafadz Niat (Sendirian)',
      'arabic': "أُصَلِّيْ سُنَّةَ الِاسْتِسْقَاءِ رَكْعَتَيْنِ لِلهِ تَعَالَى",
      'transliteration':
          "Ushallii sunnatal-istisqaa-i rak'ataini lillaahi ta'aalaa.",
      'translation':
          "Aku berniat shalat sunnah Istisqa dua rakaat karena Allah Ta'ala.",
    },
    'Shalat Istisqa Sebagai Imam': {
      'title': 'Lafadz Niat (Imam)',
      'arabic':
          "أُصَلِّيْ سُنَّةَ الِاسْتِسْقَاءِ رَكْعَتَيْنِ إِمَامًا لِلهِ تَعَالَى",
      'transliteration':
          "Ushallii sunnatal-istisqaa-i rak'ataini imaaman lillaahi ta'aalaa.",
      'translation':
          "Aku berniat shalat sunnah Istisqa dua rakaat sebagai imam karena Allah Ta'ala.",
    },
    'Shalat Istisqa Sebagai Makmum': {
      'title': 'Lafadz Niat (Makmum)',
      'arabic':
          "أُصَلِّيْ سُنَّةَ الِاسْتِسْقَاءِ رَكْعَتَيْنِ مَأْمُوْمًا لِلهِ تَعَالَى",
      'transliteration':
          "Ushallii sunnatal-istisqaa-i rak'ataini ma'muuman lillaahi ta'aalaa.",
      'translation':
          "Aku berniat shalat sunnah Istisqa dua rakaat sebagai makmum karena Allah Ta'ala.",
    },
  };

  @override
  Widget build(BuildContext context) {
    // Mengambil data aktif sesuai dengan state yang dipilih
    final currentNiat = _niatData[_selectedRole]!;

    return Scaffold(
      backgroundColor: const Color(
        0xff090f16,
      ), // Menyamakan warna background gelap Shalat Subuh
      appBar: AppBar(
        backgroundColor: const Color(0xff090f16),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white70),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Niat Shalat Istisqa",
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
          // Kategori Tag / Label atas sesuai image_606c6e.png
          Wrap(
            spacing: 8,
            children: [
              _buildChip("Shalat Sunnah"),
              _buildChip("istisqa"),
              _buildChip("minta hujan"),
            ],
          ),
          const SizedBox(height: 24),

          // FITUR DROPDOWN (Warna diselaraskan dengan container menu Shalat Subuh)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            decoration: BoxDecoration(
              color: const Color(0xff111a24), // Menyelaraskan warna background
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: Colors.teal.withOpacity(0.3),
                width: 1,
              ), // Garis tepi bernuansa teal
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: _selectedRole,
                dropdownColor: const Color(
                  0xff111a24,
                ), // Background menu pop-up tetap gelap
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.tealAccent,
                ), // Indikator panah warna tealAccent
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
                          newValue; // Memperbarui data secara interaktif
                    });
                  }
                },
              ),
            ),
          ),
          const SizedBox(height: 32),

          // 1. Seksi Teks Arab Dinamis (Menampilkan judul dinamis per peran)
          Center(
            child: Text(
              currentNiat['title']!, // Mengambil value title dinamis dari map
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
              color: const Color(0xff111a24),
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

          // 2. Seksi Transliterasi (Dinamis)
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

          // 3. Seksi Terjemahan (Dinamis)
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

          // 4. Seksi Keterangan & Dalil (Sesuai deskripsi image_606c6e.png)
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
              "Shalat Istisqa adalah shalat sunnah dua rakaat yang dilaksanakan secara berjamaah di lapangan terbuka untuk memohon kepada Allah SWT agar diturunkan hujan pada saat terjadi bencana kekeringan atau kemarau yang berkepanjangan.",
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
