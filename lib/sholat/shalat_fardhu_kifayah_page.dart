import 'package:flutter/material.dart';

class ShalatFardhuKifayahPage extends StatelessWidget {
  const ShalatFardhuKifayahPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Daftar data untuk Solat fardhu kifayah
    final List<Map<String, dynamic>> kifayahList = [
      {
        'name': 'Shalat Jenazah (Laki-laki)',
        'desc':
            'Shalat dengan 4 takbir tanpa ruku dan sujud untuk jenazah laki-laki.',
      },
      {
        'name': 'Shalat Jenazah (Perempuan)',
        'desc':
            'Shalat dengan 4 takbir tanpa ruku dan sujud untuk jenazah perempuan.',
      },
      {
        'name': 'Shalat Ghaib',
        'desc':
            'Shalat jenazah yang dilakukan ketika jenazah berada di tempat yang jauh.',
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xff121212),
      appBar: AppBar(
        backgroundColor: const Color(0xff121212),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white70),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Shalat Fardhu Kifayah",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: kifayahList.length,
        itemBuilder: (context, index) {
          final shalat = kifayahList[index];
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
                  Icons
                      .access_time, // DISAMAKAN: Menggunakan Icons.access_time agar bergaris tipis
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
