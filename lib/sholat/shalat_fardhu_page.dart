import 'package:flutter/material.dart';
import '../sholat_fardhu/subuh_page.dart';
import '../sholat_fardhu/dzuhur_page.dart';
import '../sholat_fardhu/ashar_page.dart';
import '../sholat_fardhu/maghrib_page.dart';
import '../sholat_fardhu/isya_page.dart'; // Import Isya
import '../sholat_fardhu/jumat_page.dart'; // Import Jumat

class ShalatFardhuPage extends StatelessWidget {
  const ShalatFardhuPage({super.key});

  @override
  Widget build(BuildContext context) {
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
      backgroundColor: const Color(0xff121212),
      appBar: AppBar(
        backgroundColor: const Color(0xff121212),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white70),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Shalat Fardhu",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
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
                item['name']!,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  item['desc']!,
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
                  case 4: // Mengaktifkan Isya
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const IsyaPage()),
                    );
                    break;
                  case 5: // Mengaktifkan Jumat
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
