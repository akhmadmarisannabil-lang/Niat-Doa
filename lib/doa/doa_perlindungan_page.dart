import 'package:flutter/material.dart';

class DoaPerlindunganPage extends StatelessWidget {
  const DoaPerlindunganPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Kumpulan data Doa Memohon Perlindungan
    final List<Map<String, dynamic>> doaPerlindunganList = [
      {
        'name': 'Doa Perlindungan dari Syetan',
        'desc': 'Memohon perlindungan dari godaan syetan yang terkutuk.',
      },
      {
        'name': 'Doa Perlindungan dari Fitnah Dajjal',
        'desc':
            'Dibaca di akhir tasyahud sebelum salam agar terhindar dari fitnah akhir zaman.',
      },
      {
        'name': 'Doa Perlindungan dari Penyakit Buruk',
        'desc':
            'Memohon kesembuhan dan perlindungan dari penyakit berat dan menular.',
      },
      {
        'name': 'Doa Perlindungan dari Sifat Buruk',
        'desc':
            'Memohon perlindungan dari sifat lemah, malas, penakut, dan pikun.',
      },
      {
        'name': 'Doa Perlindungan Dunia Akhirat',
        'desc':
            'Memohon keselamatan menyeluruh serta perlindungan dari azab kubur dan neraka.',
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
          "Doa Memohon Perlindungan",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: doaPerlindunganList.length,
        itemBuilder: (context, index) {
          final doa = doaPerlindunganList[index];
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
                  Icons.menu_book, // Ikon buku doa seragam
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
