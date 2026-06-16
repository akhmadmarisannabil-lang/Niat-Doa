import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart'; // Pastikan path ini benar

import '../sholat_fardhu/subuh_page.dart';
import '../sholat_fardhu/dzuhur_page.dart';
import '../sholat_fardhu/ashar_page.dart';
import '../sholat_fardhu/maghrib_page.dart';
import '../sholat_fardhu/isya_page.dart';
import '../sholat_fardhu/jumat_page.dart';

class ShalatFardhuPage extends StatelessWidget {
  const ShalatFardhuPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isLightTheme = Provider.of<ThemeProvider>(context).isLightTheme;

    final List<Map<String, String>> shalatMenu = [
      {
        'name': 'Shalat Subuh',
        'desc': '2 Rakaat - Dilakukan sebelum terbit fajar.',
      },
      {
        'name': 'Shalat Dzuhur',
        'desc': '4 Rakaat - Dilakukan saat matahari tergelincir.',
      },
      {
        'name': 'Shalat Ashar',
        'desc': '4 Rakaat - Dilakukan pada waktu sore hari.',
      },
      {
        'name': 'Shalat Maghrib',
        'desc': '3 Rakaat - Dilakukan setelah matahari terbenam.',
      },
      {
        'name': 'Shalat Isya',
        'desc': '4 Rakaat - Dilakukan pada waktu malam hari.',
      },
      {
        'name': 'Shalat Jum\'at',
        'desc':
            '2 Rakaat - Dilakukan secara berjamaah di waktu Dzuhur pada hari Jum\'at.',
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
          "Shalat Fardhu",
          style: TextStyle(
            fontSize: 18,
            color: isLightTheme ? Colors.black87 : Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: shalatMenu.length,
        itemBuilder: (context, index) {
          final item = shalatMenu[index];
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
                item['name']!,
                style: TextStyle(
                  color: isLightTheme ? Colors.black87 : Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  item['desc']!,
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
                        builder: (context) => const SubuhPage(),
                      ),
                    );
                    break;
                  case 1:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DzuhurPage(),
                      ),
                    );
                    break;
                  case 2:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AsharPage(),
                      ),
                    );
                    break;
                  case 3:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MaghribPage(),
                      ),
                    );
                    break;
                  case 4:
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const IsyaPage()),
                    );
                    break;
                  case 5:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const JumatPage(),
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
