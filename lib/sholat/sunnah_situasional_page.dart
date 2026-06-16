import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';

import '../kebutuhan/istikharah_page.dart';
import '../kebutuhan/hajat_page.dart';
import '../kebutuhan/taubat_page.dart';
import '../kebutuhan/istisqa_page.dart';
import '../kebutuhan/safar_page.dart';
import '../kebutuhan/tasbih_page.dart'; // Impor halaman Shalat Tasbih baru Anda

class SunnahSituasionalPage extends StatelessWidget {
  const SunnahSituasionalPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isLightTheme = Provider.of<ThemeProvider>(context).isLightTheme;

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
      {
        'name': 'Shalat Tasbih',
        'desc':
            '4 Rakaat - Dilakukan dengan membaca kalimat tasbih sebanyak 300 kali untuk mendekatkan diri kepada Allah.',
        'targetPage':
            const TasbihPage(), // Mengarah ke halaman panduan Shalat Tasbih
      },
    ];

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: isLightTheme ? Colors.black87 : Colors.white70,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "Sunnah Kebutuhan & Situasional",
          style: TextStyle(
            fontSize: 18,
            color: isLightTheme ? Colors.black87 : Colors.white,
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
              color: isLightTheme ? Colors.white : const Color(0xff1e1e1e),
              borderRadius: BorderRadius.circular(12),
              boxShadow: isLightTheme
                  ? [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.05),
                        blurRadius: 4,
                        offset: const Offset(0, 2),
                      ),
                    ]
                  : null,
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              leading: CircleAvatar(
                backgroundColor: isLightTheme
                    ? Colors.blue.withValues(alpha: 0.2)
                    : Colors.amber.withValues(alpha: 0.2),
                child: Icon(
                  Icons.access_time,
                  color: isLightTheme ? Colors.blue[800] : Colors.amber,
                ),
              ),
              title: Text(
                shalat['name'],
                style: TextStyle(
                  color: isLightTheme ? Colors.black87 : Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  shalat['desc'],
                  style: TextStyle(
                    color: isLightTheme ? Colors.black54 : Colors.white60,
                    fontSize: 13,
                  ),
                ),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: isLightTheme ? Colors.black26 : Colors.white30,
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
