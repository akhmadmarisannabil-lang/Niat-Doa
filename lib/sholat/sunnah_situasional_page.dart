import 'package:flutter/material.dart';
import '../kebutuhan/istikharah_page.dart';
import '../kebutuhan/hajat_page.dart';
import '../kebutuhan/taubat_page.dart';
import '../kebutuhan/istisqa_page.dart';
import '../kebutuhan/safar_page.dart';

class SunnahSituasionalPage extends StatelessWidget {
  const SunnahSituasionalPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> sunnahSituasionalList = [
      {
        'name': 'Shalat Istikharah',
        'desc':
            '2 Rakaat - Dilakukan untuk meminta petunjuk pilihan atau jodoh.',
        'targetPage': const IstikharahPage(),
      },
      {
        'name': 'Shalat Hajat',
        'desc':
            '2 hingga 12 Rakaat - Dilakukan ketika memiliki keinginan atau hajat tertentu.',
        'targetPage': const HajatPage(),
      },
      {
        'name': 'Shalat Taubat',
        'desc':
            '2 Rakaat - Dilakukan memohon ampunan atas dosa yang telah diperbuat.',
        'targetPage': const TaubatPage(),
      },
      {
        'name': 'Shalat Istisqa',
        'desc':
            '2 Rakaat - Dilakukan berjamaah untuk memohon diturunkannya hujan.',
        'targetPage': const IstisqaPage(),
      },
      {
        'name': 'Shalat Safar',
        'desc':
            '2 Rakaat - Dilakukan saat hendak bepergian atau baru pulang safar.',
        'targetPage': const SafarPage(),
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
          "Sunnah Kebutuhan & Situasional",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: sunnahSituasionalList.length,
        itemBuilder: (context, index) {
          final shalat = sunnahSituasionalList[index];
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
