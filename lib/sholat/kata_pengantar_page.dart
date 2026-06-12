import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart'; // Pastikan path ini benar

// Import seluruh halaman materi pengantar shalat
import '../pengantar/pengertian_sholat_page.dart';
import '../pengantar/syarat_shalat_page.dart';
import '../pengantar/rukun_shalat_page.dart';
import '../pengantar/sunnah_shalat_page.dart';
import '../pengantar/pembatal_shalat_page.dart';
import '../pengantar/perbedaan_gender_shalat_page.dart';
import '../pengantar/waktu_dilarang_shalat_page.dart';

class KataPengantarPage extends StatelessWidget {
  const KataPengantarPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isLightTheme = Provider.of<ThemeProvider>(context).isLightTheme;

    final List<Map<String, String>> shalatMenu = [
      {'name': 'Pengertian Shalat'},
      {'name': 'Syarat-Syarat Shalat'},
      {'name': 'Rukun Shalat'},
      {'name': 'Sunnah Dalam Melakukan Shalat'},
      {'name': 'Yang Membatalkan Shalat'},
      {'name': 'Perbedaan Laki-Laki & Prempuan Dalam Shalat'},
      {'name': 'Waktu-Waktu Dilarang Shalat'},
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
          "Kata Pengantar",
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
                item['name']!,
                style: TextStyle(
                  color: isLightTheme ? Colors.black87 : Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
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
                        builder: (context) => const PengertianShalatPage(),
                      ),
                    );
                    break;
                  case 1:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SyaratShalatPage(),
                      ),
                    );
                    break;
                  case 2:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RukunShalatPage(),
                      ),
                    );
                    break;
                  case 3:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SunnahShalatPage(),
                      ),
                    );
                    break;
                  case 4:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PembatalShalatPage(),
                      ),
                    );
                    break;
                  case 5:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PerbedaanGenderShalatPage(),
                      ),
                    );
                    break;
                  case 6:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WaktuDilarangShalatPage(),
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
