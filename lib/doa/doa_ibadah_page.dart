import 'package:flutter/material.dart';

class DoaIbadahPage extends StatelessWidget {
  const DoaIbadahPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Kumpulan data Doa Ibadah
    final List<Map<String, dynamic>> doaIbadahList = [
      {
        'name': 'Doa Qunut',
        'desc':
            'Dibaca saat iktidal pada rakaat kedua Shalat Subuh atau Shalat Witir.',
      },
      {
        'name': 'Doa Iftitah',
        'desc':
            'Doa pembuka yang dibaca setelah takbiratul ihram sebelum Al-Fatihah.',
      },
      {
        'name': "Doa Ruku'",
        'desc': "Doa kepasrahan dan agung yang dibaca saat posisi ruku'.",
      },
      {
        'name': 'Doa Sujud',
        'desc':
            'Doa ketundukan paling dekat dengan Allah yang dibaca saat sujud.',
      },
      {
        'name': 'Doa I\'tidal',
        'desc':
            'Doa pujian kepada Allah yang dibaca saat bangkit tegak dari ruku\'.',
      },
      {
        'name': 'Doa Duduk di Antara Dua Sujud',
        'desc': 'Doa permohonan ampun, rahmat, dan rezeki saat duduk iftirasg.',
      },
      {
        'name': 'Doa Tasyahud Awal (Tahiyat awal)',
        'desc':
            'Bacaan tasyahud awal dibaca pada rakaat kedua dalam posisi duduk.',
      },
      {
        'name': 'Doa Tasyahud Akhir (Tahiyat Akhir)',
        'desc':
            'Bacaan tasyahud akhir sebelum salam termasuk shalawat dan doa perlindungan.',
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
          "Doa Ibadah",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: doaIbadahList.length,
        itemBuilder: (context, index) {
          final doa = doaIbadahList[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 12),
            decoration: BoxDecoration(
              color: const Color(0xff1e1e1e),
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
                  Icons.menu_book, // Menggunakan ikon jam outline agar seragam
                  color: Colors.amber,
                ),
              ),
              title: Text(
                doa['name'],
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  doa['desc'],
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
                    content: Text('Membuka bacaan ${doa['name']}'),
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
