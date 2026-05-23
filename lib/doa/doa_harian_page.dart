import 'package:flutter/material.dart';
import '../doa_harian/sebelum_makan_page.dart';
import '../doa_harian/sesudah_makan_page.dart';
import '../doa_harian/sebelum_tidur_page.dart';
import '../doa_harian/bangun_tidur_page.dart';
import '../doa_harian/masuk_rumah_page.dart';
import '../doa_harian/keluar_rumah_page.dart';

class DoaHarianPage extends StatelessWidget {
  const DoaHarianPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> doaHarianList = [
      {
        'name': 'Doa Sebelum Makan',
        'desc': 'Memohon berkah atas rezeki makanan yang diberikan.',
      },
      {
        'name': 'Doa Sesudah Makan',
        'desc': 'Ungkapan syukur setelah menyantap makanan.',
      },
      {
        'name': 'Doa Sebelum Tidur',
        'desc': 'Memohon perlindungan sebelum beristirahat.',
      },
      {
        'name': 'Doa Bangun Tidur',
        'desc': 'Pujian kepada Allah yang telah menghidupkan kembali.',
      },
      {
        'name': 'Doa Masuk Rumah',
        'desc': 'Memohon keselamatan dan kebaikan di dalam rumah.',
      },
      {
        'name': 'Doa Keluar Rumah',
        'desc': 'Memohon perlindungan dan tawakal selama di perjalanan.',
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
          "Doa Harian",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: doaHarianList.length,
        itemBuilder: (context, index) {
          final doa = doaHarianList[index];
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
                        builder: (context) => const SebelumMakanPage(),
                      ),
                    );
                    break;
                  case 1:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SesudahMakanPage(),
                      ),
                    );
                    break;
                  case 2:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SebelumTidurPage(),
                      ),
                    );
                    break;
                  case 3:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BangunTidurPage(),
                      ),
                    );
                    break;
                  case 4:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MasukRumahPage(),
                      ),
                    );
                    break;
                  case 5:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const KeluarRumahPage(),
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
