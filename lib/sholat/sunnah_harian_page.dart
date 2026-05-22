import 'package:flutter/material.dart';
import '../harian/tahajjud_page.dart';
import '../harian/dhuha_page.dart';
import '../harian/witir_page.dart';
import '../harian/tahiyyatul_masjid_page.dart';

class SunnahHarianPage extends StatelessWidget {
  const SunnahHarianPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Data list sesuai visual image_416aa9.png
    final List<Map<String, dynamic>> sunnahHarianList = [
      {
        'name': 'Shalat Tahajjud',
        'desc':
            'Minimal 2 Rakaat - Dilakukan pada malam hari setelah bangun tidur.',
        'targetPage': const TahajjudPage(),
      },
      {
        'name': 'Shalat Dhuha',
        'desc':
            '2 hingga 12 Rakaat - Dilakukan pagi hari saat matahari mulai naik.',
        'targetPage': const DhuhaPage(),
      },
      {
        'name': 'Shalat Witir',
        'desc': 'Ganjil (1, 3, dst) - Sebagai penutup shalat malam.',
        'targetPage': const WitirPage(),
      },
      {
        'name': 'Shalat Tahiyyatul Masjid',
        'desc': '2 Rakaat - Dilakukan saat pertama kali memasuki masjid.',
        'targetPage': const TahiyyatulMasjidPage(),
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xff121212), // Tema gelap seragam
      appBar: AppBar(
        backgroundColor: const Color(0xff121212),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white70),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Sunnah Harian",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: sunnahHarianList.length,
        itemBuilder: (context, index) {
          final shalat = sunnahHarianList[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 12),
            decoration: BoxDecoration(
              color: const Color(0xff1e1e1e), // Card abu-abu gelap
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              leading: CircleAvatar(
                backgroundColor: Colors.amber.withOpacity(0.15),
                child: const Icon(
                  Icons.access_time, // Ikon jam outline tipis sesuai gambar
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => shalat['targetPage']),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
