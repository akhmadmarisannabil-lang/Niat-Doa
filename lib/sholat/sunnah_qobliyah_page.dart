import 'package:flutter/material.dart';

class SunnahQobliyahPage extends StatelessWidget {
  const SunnahQobliyahPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Senarai data untuk Solat Sunat Qobliyah
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
