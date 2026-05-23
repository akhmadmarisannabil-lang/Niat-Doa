import 'package:flutter/material.dart';
import '../doa_musibah/doa_bencana_page.dart';
import '../doa_musibah/doa_mendengar_musibah_page.dart';
import '../doa_musibah/doa_terhindar_bahaya_page.dart';
import '../doa_musibah/doa_penyakit_berat_page.dart';
import '../doa_musibah/doa_kerugian_page.dart';

class DoaTerhindarMusibahPage extends StatelessWidget {
  const DoaTerhindarMusibahPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Kumpulan data Doa Terhindar dari Musibah menggunakan tipe Map<String, String> agar sama dengan menu doa sebelumnya
    final List<Map<String, String>> doaTerhindarMusibahList = [
      {
        'name': 'Doa Terhindar dari Musibah & Bencana',
        'desc': 'Memohon perlindungan dari cobaan berat dan takdir yang buruk.',
      },
      {
        'name': 'Doa Ketika Mendengar Musibah',
        'desc':
            'Kalimat istirja dan permohonan pahala serta ganti yang lebih baik.',
      },
      {
        'name': 'Doa Terhindar dari Bahaya (Pagi & Petang)',
        'desc':
            'Membaca bismillah yang dengan nama-Nya tidak ada sesuatu pun yang berbahaya.',
      },
      {
        'name': 'Doa Perlindungan dari Penyakit Berat',
        'desc':
            'Memohon agar dijauhkan dari penyakit belang, gila, kusta, dan penyakit buruk lainnya.',
      },
      {
        'name': 'Doa Terhindar dari Kerugian & Keburukan',
        'desc':
            'Memohon perlindungan dari hilangnya nikmat dan datangnya azab seketika.',
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
          "Doa Terhindar dari Musibah",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: doaTerhindarMusibahList.length,
        itemBuilder: (context, index) {
          final doa = doaTerhindarMusibahList[index];
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
                child: const Icon(Icons.menu_book, color: Colors.amber),
              ),
              title: Text(
                doa['name']!,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  doa['desc']!,
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
                        builder: (context) => const DoaBencanaPage(),
                      ),
                    );
                    break;
                  case 1:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DoaMendengarMusibahPage(),
                      ),
                    );
                    break;
                  case 2:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DoaTerhindarBahayaPage(),
                      ),
                    );
                    break;
                  case 3:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DoaPenyakitBeratPage(),
                      ),
                    );
                    break;
                  case 4:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DoaKerugianPage(),
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
