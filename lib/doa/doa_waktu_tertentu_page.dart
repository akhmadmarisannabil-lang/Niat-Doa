import 'package:flutter/material.dart';

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
    // List data setelah "Doa Ketika Turun Hujan" dihapus
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
      backgroundColor: const Color(0xff121212),
      appBar: AppBar(
        backgroundColor: const Color(0xff121212),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white70),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Doa Waktu Tertentu",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
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
                child: const Icon(Icons.menu_book, color: Colors.amber),
              ),
              title: Text(
                doa['name']!,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  doa['desc']!,
                  style: const TextStyle(color: Colors.white60, fontSize: 13),
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white30,
                size: 16,
              ),
              onTap: () {
                // Index routing disesuaikan karena struktur list maju 1 baris
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
