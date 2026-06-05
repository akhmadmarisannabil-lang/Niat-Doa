import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';
// Import Halaman Doa Eksisting
import '../doa_harian/sebelum_makan_page.dart';
import '../doa_harian/sesudah_makan_page.dart';
import '../doa_harian/sebelum_tidur_page.dart';
import '../doa_harian/bangun_tidur_page.dart';
import '../doa_harian/masuk_rumah_page.dart';
import '../doa_harian/keluar_rumah_page.dart';

// Import Halaman Doa Baru Tambahan
import '../doa_harian/masuk_kamar_mandi_page.dart';
import '../doa_harian/keluar_kamar_mandi_page.dart';
import '../doa_harian/masuk_masjid_page.dart';
import '../doa_harian/keluar_masjid_page.dart';
import '../doa_harian/bercermin_page.dart';
import '../doa_harian/memakai_pakaian_page.dart';
import '../doa_harian/melepas_pakaian_page.dart';
import '../doa_harian/turun_hujan_page.dart';
import '../doa_harian/hujan_reda_page.dart';
import '../doa_harian/masuk_pasar_page.dart';
import '../doa_harian/setelah_azan_page.dart';

class DoaHarianPage extends StatelessWidget {
  const DoaHarianPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isLightTheme = Provider.of<ThemeProvider>(context).isLightTheme;
    // List Data Doa yang disesuaikan dengan tampilan image_b72eeb.png
    final List<Map<String, String>> doaHarianList = [
      {
        'name': 'Doa Sebelum Makan',
        'desc': 'Memohon berkah atas rezeki makanan yang diberikan.',
      },
      {
        'name': 'Doa Sesudah Makan',
        'desc': 'Ungkapan syukur setelah menyantap makanan.',
      },
      {
        'name': 'Doa Sebelum Tidur',
        'desc': 'Memohon perlindungan sebelum beristirahat.',
      },
      {
        'name': 'Doa Bangun Tidur',
        'desc': 'Pujian kepada Allah yang telah menghidupkan kembali.',
      },
      {
        'name': 'Doa Masuk Rumah',
        'desc': 'Memohon keselamatan dan kebaikan di dalam rumah.',
      },
      {
        'name': 'Doa Keluar Rumah',
        'desc': 'Memohon perlindungan dan tawakal selama di perjalanan.',
      },
      {
        'name': 'Doa Masuk Kamar Mandi',
        'desc':
            'Memohon perlindungan dari godaan setan laki-laki dan perempuan.',
      },
      {
        'name': 'Doa Keluar Kamar Mandi',
        'desc':
            'Ungkapan rasa syukur atas hilangnya kotoran dan penyakit dari tubuh.',
      },
      {
        'name': 'Doa Masuk Masjid',
        'desc': 'Memohon dibukakan pintu-pintu rahmat Allah SWT.',
      },
      {
        'name': 'Doa Keluar Masjid',
        'desc': 'Memohon karunia dan keutamaan rezeki dari Allah SWT.',
      },
      {
        'name': 'Doa Bercermin',
        'desc': 'Memohon agar akhlak disempurnakan seindah rupa fisik.',
      },
      {
        'name': 'Doa Memakai Pakaian',
        'desc':
            'Ungkapan syukur atas pakaian penutup aurat dan perhiasan tubuh.',
      },
      {
        'name': 'Doa Melepas Pakaian',
        'desc': 'Memohon perlindungan agar aurat tidak terlihat oleh jin.',
      },
      {
        'name': 'Doa Saat Turun Hujan',
        'desc': 'Memohon agar hujan membawa keberkahan dan manfaat.',
      },
      {
        'name': 'Doa Saat Hujan Reda',
        'desc': 'Bersyukur atas curahan karunia dan rahmat air hujan.',
      },
      {
        'name': 'Doa Masuk Pasar',
        'desc': 'Memohon perlindungan dari godaan transaksi yang merugikan.',
      },
      {
        'name': 'Doa Setelah Azan',
        'desc': 'Memohon wasilah dan keutamaan bagi Baginda Rasulullah SAW.',
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
          "Doa Harian",
          style: TextStyle(
            fontSize: 18,
            color: isLightTheme ? Colors.black87 : Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: doaHarianList.length,
        itemBuilder: (context, index) {
          final doa = doaHarianList[index];

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
                        builder: (context) => const SebelumMakanPage(),
                      ),
                    );
                    break;
                  case 1:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SesudahMakanPage(),
                      ),
                    );
                    break;
                  case 2:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SebelumTidurPage(),
                      ),
                    );
                    break;
                  case 3:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BangunTidurPage(),
                      ),
                    );
                    break;
                  case 4:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MasukRumahPage(),
                      ),
                    );
                    break;
                  case 5:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const KeluarRumahPage(),
                      ),
                    );
                    break;
                  case 6:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MasukKamarMandiPage(),
                      ),
                    );
                    break;
                  case 7:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const KeluarKamarMandiPage(),
                      ),
                    );
                    break;
                  case 8:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MasukMasjidPage(),
                      ),
                    );
                    break;
                  case 9:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const KeluarMasjidPage(),
                      ),
                    );
                    break;
                  case 10:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BercerminPage(),
                      ),
                    );
                    break;
                  case 11:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MemakaiPakaianPage(),
                      ),
                    );
                    break;
                  case 12:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MelepasPakaianPage(),
                      ),
                    );
                    break;
                  case 13:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TurunHujanPage(),
                      ),
                    );
                    break;
                  case 14:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HujanRedaPage(),
                      ),
                    );
                    break;
                  case 15:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MasukPasarPage(),
                      ),
                    );
                    break;
                  case 16:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SetelahAzanPage(),
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
