import 'package:flutter/material.dart';

class ShalatSunnahLainnyaPage extends StatelessWidget {
  const ShalatSunnahLainnyaPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Daftar Shalat Sunnah Lainnya
    final List<Map<String, dynamic>> sunnahLainnyaList = [
      {
        'name': 'Shalat Dhuha',
        'desc':
            '2 hingga 12 Rakaat - Dilakukan di pagi hari setelah matahari terbit.',
      },
      {
        'name': 'Shalat Tahajjud',
        'desc':
            'Minimal 2 Rakaat - Dilakukan di malam hari setelah bangun tidur.',
      },
      {
        'name': 'Shalat Witir',
        'desc': '1 atau 3 Rakaat (Ganjil) - Penutup shalat malam.',
      },
      {
        'name': 'Shalat Istikhara',
        'desc': '2 Rakaat - Dilakukan saat memohon petunjuk pilihan terbaik.',
      },
      {
        'name': 'Shalat Hajat',
        'desc':
            '2 Rakaat - Dilakukan saat memiliki permohonan atau hajat khusus.',
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xff121212), // Tema gelap konsisten
      appBar: AppBar(
        backgroundColor: const Color(0xff121212),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white70),
          onPressed: () {
            Navigator.pop(context); // Kembali ke HomePage
          },
        ),
        title: const Text(
          "Shalat Sunnah Lainnya",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: sunnahLainnyaList.length,
        itemBuilder: (context, index) {
          final shalat = sunnahLainnyaList[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 12),
            decoration: BoxDecoration(
              color: const Color(0xff1e1e1e), // Warna card abu-abu gelap
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              leading: CircleAvatar(
                // Menyamakan opasitas background dengan halaman lainnya (0.15)
                backgroundColor: Colors.amber.withOpacity(0.15),
                child: const Icon(
                  Icons
                      .access_time, // DISAMAKAN: Memakai ikon jam outline tipis
                  color: Colors.amber,
                ),
              ),
              title: Text(
                shalat['name'],
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  shalat['desc'],
                  style: const TextStyle(color: Colors.white60, fontSize: 13),
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white30,
                size: 16,
              ),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Membuka panduan ${shalat['name']}'),
                    duration: const Duration(seconds: 1),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
