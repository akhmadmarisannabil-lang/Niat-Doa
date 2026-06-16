import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';
// IMPORT SELURUH FILE DOA BARU (turun_hujan_page.dart dihapus)
import '../doa_tertentu/waktu_sahur_page.dart';
import '../doa_tertentu/berbuka_puasa_page.dart';
import '../doa_tertentu/akhir_tahun_page.dart';
import '../doa_tertentu/awal_tahun_page.dart';
import '../doa_tertentu/sepuluh_muharram_page.dart';
import '../doa_tertentu/bulan_safar_page.dart';
import '../doa_tertentu/bulan_rajab_page.dart';
import '../doa_tertentu/nisfu_syaban_page.dart';
import '../doa_tertentu/awal_ramadan_page.dart';
import '../doa_tertentu/malam_idul_fitri_page.dart';
import '../doa_tertentu/malam_idul_adha_page.dart';

class DoaWaktuTertentuPage extends StatelessWidget {
  const DoaWaktuTertentuPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isLightTheme = Provider.of<ThemeProvider>(context).isLightTheme;
    final List<Map<String, String>> doaWaktuList = [
      {
        'name': 'Doa Waktu Sahur (Sebelum Subuh)',
        'desc':
            'Memperbanyak istighfar dan memohon ampunan di waktu utama menjelang terbit fajar.',
      },
      {
        'name': 'Doa Saat Berbuka Puasa',
        'desc':
            'Ungkapan rasa syukur dan doa yang dikabulkan langsung saat membatalkan ibadah shaum.',
      },
      {
        'name': 'Doa Akhir Tahun',
        'desc':
            'Dibaca di akhir bulan Dzulhijjah sebelum maghrib untuk memohon ampunan atas dosa setahun lalu.',
      },
      {
        'name': 'Doa Awal Tahun',
        'desc':
            'Dibaca setelah maghrib pada 1 Muharram untuk memohon perlindungan dan keberkahan sepanjang tahun baru.',
      },
      {
        'name': 'Doa 10 Muharrom',
        'desc':
            'Doa khusus pada hari Asyura untuk memohon keselamatan, keluasan rezeki, dan ampunan.',
      },
      {
        'name': 'Doa Bulan Safar',
        'desc':
            'Memohon perlindungan kepada Allah SWT dari berbagai bala dan keburukan di bulan Safar.',
      },
      {
        'name': 'Doa Bulan Rajab',
        'desc':
            'Doa memohon keberkahan di bulan Rajab dan Sya\'ban serta agar disampaikan ke bulan Ramadan.',
      },
      {
        'name': 'Doa Nisfu Sya\'ban',
        'desc':
            'Dibaca pada malam pertengahan bulan Sya\'ban untuk memohon panjang umur, keteguhan iman, dan khusnul khotimah.',
      },
      {
        'name': 'Doa Awal Bulan Ramadan',
        'desc':
            'Doa saat melihat hilal Ramadan guna memohon keselamatan, keimanan, dan kedamaian.',
      },
      {
        'name': 'Doa Malam Idul Fitri',
        'desc':
            'Menghidupkan malam kemenangan dengan takbir, tahmid, dan doa agar amalan ibadah diterima.',
      },
      {
        'name': 'Doa Malam Idul Adha',
        'desc':
            'Doa khusus di malam hari raya qurban untuk mendekatkan diri dan memohon ridha-Nya.',
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
          "Doa Waktu Tertentu",
          style: TextStyle(
            fontSize: 18,
            color: isLightTheme ? Colors.black87 : Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: doaWaktuList.length,
        itemBuilder: (context, index) {
          final doa = doaWaktuList[index];
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
                    ? Colors.blue.withValues(alpha: 0.1)
                    : Colors.amber.withValues(alpha: 0.15),
                child: Icon(
                  Icons.menu_book,
                  color: isLightTheme ? Colors.blue[800] : Colors.amber,
                ),
              ),
              title: Text(
                doa['name']!,
                style: TextStyle(
                  color: isLightTheme ? Colors.black87 : Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  doa['desc']!,
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
                        builder: (context) => const WaktuSahurPage(),
                      ),
                    );
                    break;
                  case 1:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BerbukaPuasaPage(),
                      ),
                    );
                    break;
                  case 2:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AkhirTahunPage(),
                      ),
                    );
                    break;
                  case 3:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AwalTahunPage(),
                      ),
                    );
                    break;
                  case 4:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SepuluhMuharramPage(),
                      ),
                    );
                    break;
                  case 5:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BulanSafarPage(),
                      ),
                    );
                    break;
                  case 6:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BulanRajabPage(),
                      ),
                    );
                    break;
                  case 7:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NisfuSyabanPage(),
                      ),
                    );
                    break;
                  case 8:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AwalRamadanPage(),
                      ),
                    );
                    break;
                  case 9:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MalamIdulFitriPage(),
                      ),
                    );
                    break;
                  case 10:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MalamIdulAdhaPage(),
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
