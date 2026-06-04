import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';

import '../tertentu/idul_fitri_page.dart';
import '../tertentu/idul_adha_page.dart';
import '../tertentu/tarawih_page.dart';
import '../tertentu/gerhana_page.dart';

class SunnahWaktuTertentuPage extends StatelessWidget {
  const SunnahWaktuTertentuPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isLightTheme = Provider.of<ThemeProvider>(context).isLightTheme;

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
          "Sunnah (Waktu Tertentu)",
          style: TextStyle(
            fontSize: 18,
            color: isLightTheme ? Colors.black87 : Colors.white,
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
              color: isLightTheme ? Colors.white : const Color(0xff1e1e1e),
              borderRadius: BorderRadius.circular(12),
              boxShadow: isLightTheme
                  ? [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
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
                    ? Colors.blue.withOpacity(0.1)
                    : Colors.amber.withOpacity(0.15),
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
