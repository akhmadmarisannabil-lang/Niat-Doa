import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';

import '../qobliyah/qobliyah_subuh_page.dart';
import '../qobliyah/qobliyah_dzuhur_page.dart';
import '../qobliyah/qobliyah_ashar_page.dart';
import '../qobliyah/qobliyah_maghrib_page.dart';
import '../qobliyah/qobliyah_isya_page.dart';

class SunnahQobliyahPage extends StatelessWidget {
  const SunnahQobliyahPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isLightTheme = Provider.of<ThemeProvider>(context).isLightTheme;

    final List<Map<String, dynamic>> qobliyahList = [
      {
        'name': 'Qobliyah Subuh',
        'desc':
            '2 Rakaat - Dilakukan sebelum shalat Subuh (Sangat dianjurkan).',
      },
      {
        'name': 'Qobliyah Dzuhur',
        'desc': '2 atau 4 Rakaat - Dilakukan sebelum shalat Dzuhur.',
      },
      {
        'name': 'Qobliyah Ashar',
        'desc': '2 atau 4 Rakaat - Dilakukan sebelum shalat Ashar.',
      },
      {
        'name': 'Qobliyah Maghrib',
        'desc': '2 Rakaat - Dilakukan sebelum shalat Maghrib.',
      },
      {
        'name': 'Qobliyah Isya',
        'desc': '2 Rakaat - Dilakukan sebelum shalat Isya.',
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
          "Sunnah Qobliyah",
          style: TextStyle(
            fontSize: 18,
            color: isLightTheme ? Colors.black87 : Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: qobliyahList.length,
        itemBuilder: (context, index) {
          final shalat = qobliyahList[index];
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
                switch (index) {
                  case 0:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QobliyahSubuhPage(),
                      ),
                    );
                    break;
                  case 1:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QobliyahDzuhurPage(),
                      ),
                    );
                    break;
                  case 2:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QobliyahAsharPage(),
                      ),
                    );
                    break;
                  case 3:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QobliyahMaghribPage(),
                      ),
                    );
                    break;
                  case 4:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QobliyahIsyaPage(),
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
