import 'package:flutter/material.dart';
import '../qobliyah/qobliyah_subuh_page.dart';
import '../qobliyah/qobliyah_dzuhur_page.dart'; // Import Dzuhur
import '../qobliyah/qobliyah_ashar_page.dart'; // Import Ashar
import '../qobliyah/qobliyah_maghrib_page.dart'; // Import Maghrib
import '../qobliyah/qobliyah_isya_page.dart'; // Import Isya

class SunnahQobliyahPage extends StatelessWidget {
  const SunnahQobliyahPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Daftar data untuk Solat Sunat Qobliyah
    final List<Map<String, dynamic>> qobliyahList = [
      {
        'name': 'Qobliyah Subuh',
        'desc':
            '2 Rakaat - Dilakukan sebelum shalat Subuh (Sangat dianjurkan).',
      },
      {
        'name': 'Qobliyah Dzuhur',
        'desc': '2 atau 4 Rakaat - Dilakukan sebelum shalat Dzuhur.',
      },
      {
        'name': 'Qobliyah Ashar',
        'desc': '2 atau 4 Rakaat - Dilakukan sebelum shalat Ashar.',
      },
      {
        'name': 'Qobliyah Maghrib',
        'desc': '2 Rakaat - Dilakukan sebelum shalat Maghrib.',
      },
      {
        'name': 'Qobliyah Isya',
        'desc': '2 Rakaat - Dilakukan sebelum shalat Isya.',
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
          "Sunnah Qobliyah",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: qobliyahList.length,
        itemBuilder: (context, index) {
          final shalat = qobliyahList[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 12),
            decoration: BoxDecoration(
              color: const Color(0xff1e1e1e), // Warna kad abu-abu gelap
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
                        builder: (context) => const QobliyahSubuhPage(),
                      ),
                    );
                    break;
                  case 1:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QobliyahDzuhurPage(),
                      ),
                    );
                    break;
                  case 2:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QobliyahAsharPage(),
                      ),
                    );
                    break;
                  case 3:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QobliyahMaghribPage(),
                      ),
                    );
                    break;
                  case 4:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QobliyahIsyaPage(),
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
