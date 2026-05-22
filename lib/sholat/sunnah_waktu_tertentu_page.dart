import 'package:flutter/material.dart';
import '../tertentu/idul_fitri_page.dart';
import '../tertentu/idul_adha_page.dart';
import '../tertentu/tarawih_page.dart';
import '../tertentu/gerhana_page.dart';

class SunnahWaktuTertentuPage extends StatelessWidget {
  const SunnahWaktuTertentuPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> sunnahTertentuList = [
      {
        'name': 'Shalat Idul Fitri',
        'desc': '2 Rakaat - Dilakukan pada tanggal 1 Syawal pagi hari.',
        'targetPage': const IdulFitriPage(),
      },
      {
        'name': 'Shalat Idul Adha',
        'desc': '2 Rakaat - Dilakukan pada tanggal 10 Dzulhijjah pagi hari.',
        'targetPage': const IdulAdhaPage(),
      },
      {
        'name': 'Shalat Tarawih',
        'desc':
            '8 atau 20 Rakaat - Dilakukan hanya pada malam hari di bulan Ramadhan.',
        'targetPage': const TarawihPage(),
      },
      {
        'name': 'Shalat Gerhana (Khusuf/Kusuf)',
        'desc':
            '2 Rakaat - Dilakukan saat terjadi gerhana bulan atau matahari.',
        'targetPage': const GerhanaPage(),
      },
    ];

    return Scaffold(
      backgroundColor: const Color(
        0xff121212,
      ), // Disamakan dengan Sunnah Harian
      appBar: AppBar(
        backgroundColor: const Color(0xff121212),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white70),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Sunnah (Waktu Tertentu)",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: sunnahTertentuList.length,
        itemBuilder: (context, index) {
          final shalat = sunnahTertentuList[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 12),
            decoration: BoxDecoration(
              color: const Color(
                0xff1e1e1e,
              ), // Menggunakan Card abu-abu gelap (#1e1e1e)
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
                  Icons.access_time, // Menggunakan ikon outline jam seragam
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
