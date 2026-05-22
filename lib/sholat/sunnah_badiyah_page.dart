import 'package:flutter/material.dart';
import '../badiyah/badiyah_dzuhur_page.dart';
import '../badiyah/badiyah_maghrib_page.dart';
import '../badiyah/badiyah_isya_page.dart';

class SunnahBadiyahPage extends StatelessWidget {
  const SunnahBadiyahPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Daftar data untuk Solat Sunat Ba'diyah sesuai gambar image_40678d.png
    final List<Map<String, dynamic>> badiyahList = [
      {
        'name': 'Ba\'diyah Dzuhur',
        'desc': '2 atau 4 Rakaat - Dilakukan setelah shalat Dzuhur.',
      },
      {
        'name': 'Ba\'diyah Maghrib',
        'desc':
            '2 Rakaat - Dilakukan setelah shalat Maghrib (Sangat dianjurkan).',
      },
      {
        'name': 'Ba\'diyah Isya',
        'desc': '2 Rakaat - Dilakukan setelah shalat Isya (Sangat dianjurkan).',
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
          "Sunnah Ba'diyah",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: badiyahList.length,
        itemBuilder: (context, index) {
          final shalat = badiyahList[index];
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
                backgroundColor: Colors.amber.withOpacity(0.2),
                child: const Icon(Icons.access_time, color: Colors.amber),
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
                switch (index) {
                  case 0:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BadiyahDzuhurPage(),
                      ),
                    );
                    break;
                  case 1:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BadiyahMaghribPage(),
                      ),
                    );
                    break;
                  case 2:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BadiyahIsyaPage(),
                      ),
                    );
                    break;
                }
              },
            ),
          );
        },
      ),
    );
  }
}
