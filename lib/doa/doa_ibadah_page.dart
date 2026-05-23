import 'package:flutter/material.dart';
import '../doa_sholat/qunut_page.dart';
import '../doa_sholat/iftitah_page.dart';
import '../doa_sholat/ruku_page.dart';
import '../doa_sholat/sujud_page.dart';
import '../doa_sholat/itidal_page.dart';
import '../doa_sholat/duduk_antara_dua_sujud_page.dart';
import '../doa_sholat/tasyahud_awal_page.dart';
import '../doa_sholat/tasyahud_akhir_page.dart';

class DoaIbadahPage extends StatelessWidget {
  const DoaIbadahPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Kumpulan data Doa Ibadah sesuai blueprint Anda
    final List<Map<String, String>> doaIbadahList = [
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
      backgroundColor: const Color(0xff121212),
      appBar: AppBar(
        backgroundColor: const Color(0xff121212),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white70),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Doa Saat Sholat",
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
                        builder: (context) => const QunutPage(),
                      ),
                    );
                    break;
                  case 1:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const IftitahPage(),
                      ),
                    );
                    break;
                  case 2:
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const RukuPage()),
                    );
                    break;
                  case 3:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SujudPage(),
                      ),
                    );
                    break;
                  case 4:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ItidalPage(),
                      ),
                    );
                    break;
                  case 5:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        // DIPERBAIKI: Menggunakan nama class DudukEntreDuaSujudPage
                        builder: (context) => const DudukEntreDuaSujudPage(),
                      ),
                    );
                    break;
                  case 6:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TasyahudAwalPage(),
                      ),
                    );
                    break;
                  case 7:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TasyahudAkhirPage(),
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
