import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';

import '../harian/tahajjud_page.dart';
import '../harian/dhuha_page.dart';
import '../harian/witir_page.dart';
import '../harian/tahiyyatul_masjid_page.dart';
import '../harian/tahiyyatul_wudu_page.dart';

class SunnahHarianPage extends StatelessWidget {
  const SunnahHarianPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isLightTheme = Provider.of<ThemeProvider>(context).isLightTheme;

    final List<Map<String, dynamic>> sunnahHarianList = [
      {
        'name': 'Shalat Tahajjud',
        'desc':
            'Minimal 2 Rakaat - Dilakukan pada malam hari setelah bangun tidur.',
        'targetPage': const TahajjudPage(),
      },
      {
        'name': 'Shalat Dhuha',
        'desc':
            '2 hingga 12 Rakaat - Dilakukan pagi hari saat matahari mulai naik.',
        'targetPage': const DhuhaPage(),
      },
      {
        'name': 'Shalat Witir',
        'desc': 'Ganjil (1, 3, dst) - Sebagai penutup shalat malam.',
        'targetPage': const WitirPage(),
      },
      {
        'name': 'Shalat Tahiyyatul Masjid',
        'desc': '2 Rakaat - Dilakukan saat pertama kali memasuki masjid.',
        'targetPage': const TahiyyatulMasjidPage(),
      },
      {
        'name': 'Shalat Setelah Wudu\'',
        'desc': '2 Rakaat - Dilakukan setiap kali selesai berwudu.',
        'targetPage': const TahiyyatulWuduPage(),
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
          "Sunnah Harian",
          style: TextStyle(
            fontSize: 18,
            color: isLightTheme ? Colors.black87 : Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: sunnahHarianList.length,
        itemBuilder: (context, index) {
          final shalat = sunnahHarianList[index];
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
