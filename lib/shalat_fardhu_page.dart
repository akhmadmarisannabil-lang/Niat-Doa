import 'package:flutter/material.dart';

class ShalatFardhuPage extends StatelessWidget {
  const ShalatFardhuPage({super.key});

  @override
  Widget build(BuildContext context) {
    // List data untuk Shalat Fardhu + Shalat Jum'at
    final List<Map<String, dynamic>> fardhuList = [
      {
        'name': 'Shalat Subuh',
        'desc': '2 Rakaat - Dilakukan sebelum terbit fajar.',
      },
      {
        'name': 'Shalat Dzuhur',
        'desc': '4 Rakaat - Dilakukan saat matahari tergelincir.',
      },
      {
        'name': 'Shalat Ashar',
        'desc': '4 Rakaat - Dilakukan pada waktu sore hari.',
      },
      {
        'name': 'Shalat Maghrib',
        'desc': '3 Rakaat - Dilakukan setelah matahari terbenam.',
      },
      {
        'name': 'Shalat Isya',
        'desc': '4 Rakaat - Dilakukan pada waktu malam hari.',
      },
      {
        'name': "Shalat Jum'at",
        'desc':
            '2 Rakaat - Dilakukan secara berjamaah di waktu Dzuhur pada hari Jum\'at.',
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xff121212), // Background gelap
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
          "Shalat Fardhu",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: fardhuList.length,
        itemBuilder: (context, index) {
          final shalat = fardhuList[index];
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
                // SEMENTARA CEK KLIK: Nanti di sini untuk hubungkan ke isi bacaan masing-masing shalat
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
