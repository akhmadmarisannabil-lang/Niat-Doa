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

// Import Halaman Doa Baru Tambahan Sebelumnya
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

// Import 9 Halaman Doa Baru yang Diminta Sebelumnya
import '../doa_harian/naik_kendaraan_page.dart';
import '../doa_harian/berpakaian_baru_page.dart';
import '../doa_harian/masuk_rumah_sepi_page.dart';
import '../doa_harian/sebelum_wudhu_page.dart';
import '../doa_harian/sesudah_wudhu_page.dart';
import '../doa_harian/takut_tidur_page.dart';
import '../doa_harian/terjaga_malam_page.dart';
import '../doa_harian/lupa_doa_makan_page.dart';
import '../doa_harian/minum_susu_page.dart';

// Import 6 Halaman Doa Tambahan Baru Terbaru
import '../doa_harian/bersin_page.dart';
import '../doa_harian/ketika_takut_page.dart';
import '../doa_harian/sebelum_belajar_page.dart';
import '../doa_harian/sesudah_belajar_page.dart';
import '../doa_harian/sebelum_adzan_page.dart';
import '../doa_harian/keluar_pasar_page.dart';

class DoaHarianPage extends StatelessWidget {
  const DoaHarianPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isLightTheme = Provider.of<ThemeProvider>(context).isLightTheme;

    // List Data Doa yang disesuaikan dengan tambahan doa baru
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
      {
        'name': 'Doa Naik Kendaraan',
        'desc': 'Memohon keselamatan selama berkendara di perjalanan.',
      },
      {
        'name': 'Doa Berpakaian Baru',
        'desc': 'Bersyukur atas rezeki pakaian baru dan memohon kebaikannya.',
      },
      {
        'name': 'Doa Masuk Rumah Ketika Tidak Ada Orang',
        'desc':
            'Mengucapkan salam kepada diri sendiri dan hamba Allah yang shalih.',
      },
      {
        'name': 'Doa Sebelum Wudhu',
        'desc': 'Membaca basmalah mengawali bersuci ibadah.',
      },
      {
        'name': 'Doa Sesudah Wudhu',
        'desc':
            'Persaksian tauhid dan memohon dijadikan golongan orang yang bertaubat.',
      },
      {
        'name': 'Doa Bila Takut Saat Tidur',
        'desc': 'Memohon perlindungan dari kemarahan Allah dan gangguan setan.',
      },
      {
        'name': 'Doa Bila Terjaga di Malam Hari',
        'desc': 'Dzikir ketika terbangun di tengah malam agar doa dikabulkan.',
      },
      {
        'name': 'Doa Bila Lupa Membaca Sebelum Makan',
        'desc':
            'Menyebut nama Allah di awal dan di akhir karena sempat terlupa.',
      },
      {
        'name': 'Doa Minum Susu',
        'desc': 'Memohon keberkahan dan tambahan karunia rezeki air susu.',
      },
      {
        'name': 'Doa Ketika Bersin',
        'desc': 'Ungkapan pujian kepada Allah setelah bersin.',
      },
      {
        'name': 'Doa Ketika Takut',
        'desc':
            'Memohon kecukupan perlindungan dan pertolongan dari Allah SWT.',
      },
      {
        'name': 'Doa Sebelum Belajar',
        'desc': 'Memohon tambahan ilmu pengetahuan dan pemahaman yang baik.',
      },
      {
        'name': 'Doa Sesudah Belajar',
        'desc':
            'Memohon agar ditunjukkan kebenaran serta kekuatan menjauhi kebatilan.',
      },
      {
        'name': 'Doa Sebelum Adzan',
        'desc':
            'Dzikir mengagungkan Allah sebelum panggilan shalat dikumandangkan.',
      },
      {
        'name': 'Doa Keluar Pasar',
        'desc':
            'Memohon kebaikan dari aktivitas pasar dan perlindungan dari keburukannya.',
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
                  case 17:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NaikKendaraanPage(),
                      ),
                    );
                    break;
                  case 18:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BerpakaianBaruPage(),
                      ),
                    );
                    break;
                  case 19:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MasukRumahSepiPage(),
                      ),
                    );
                    break;
                  case 20:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SebelumWudhuPage(),
                      ),
                    );
                    break;
                  case 21:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SesudahWudhuPage(),
                      ),
                    );
                    break;
                  case 22:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TakutTidurPage(),
                      ),
                    );
                    break;
                  case 23:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TerjagaMalamPage(),
                      ),
                    );
                    break;
                  case 24:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LupaDoaMakanPage(),
                      ),
                    );
                    break;
                  case 25:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MinumSusuPage(),
                      ),
                    );
                    break;
                  case 26:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BersinPage(),
                      ),
                    );
                    break;
                  case 27:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const KetikaTakutPage(),
                      ),
                    );
                    break;
                  case 28:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SebelumBelajarPage(),
                      ),
                    );
                    break;
                  case 29:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SesudahBelajarPage(),
                      ),
                    );
                    break;
                  case 30:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SebelumAdzanPage(),
                      ),
                    );
                    break;
                  case 31:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const KeluarPasarPage(),
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
