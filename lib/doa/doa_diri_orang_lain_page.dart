import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';

// Import 20 halaman detail konten doa yang valid
import '../doa_diri_oranglain/agar_mendirikan_sholat_page.dart';
import '../doa_diri_oranglain/keteguhan_hati_page.dart';
import '../doa_diri_oranglain/rezeki_halal_page.dart';
import '../doa_diri_oranglain/memohon_kesehatan_page.dart';
import '../doa_diri_oranglain/memohon_kesabaran_page.dart';
import '../doa_diri_oranglain/memohon_keikhlasan_page.dart';
import '../doa_diri_oranglain/memohon_taqwa_page.dart';
import '../doa_diri_oranglain/memohon_jodoh_page.dart';
import '../doa_diri_oranglain/keberkahan_hidup_page.dart';
import '../doa_diri_oranglain/memohon_kecerdasan_page.dart';
import '../doa_diri_oranglain/orang_tua_hidup_page.dart';
import '../doa_diri_oranglain/orang_tua_wafat_page.dart';
import '../doa_diri_oranglain/kebahagiaan_orang_tua_page.dart';
import '../doa_diri_oranglain/keteguhan_iman_page.dart';
import '../doa_diri_oranglain/saudara_seiman_page.dart';
import '../doa_diri_oranglain/kaum_muslimin_page.dart';
import '../doa_diri_oranglain/orang_berbuat_baik_page.dart';
import '../doa_diri_oranglain/untuk_sahabat_page.dart';
import '../doa_diri_oranglain/untuk_guru_page.dart';
import '../doa_diri_oranglain/untuk_tetangga_page.dart';

class DoaDiriOrangLainPage extends StatelessWidget {
  const DoaDiriOrangLainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isLightTheme = Provider.of<ThemeProvider>(context).isLightTheme;

    final List<Map<String, String>> doaList = [
      {
        'name': 'Doa Agar Diri dan Keluarga Mendirikan Solat',
        'desc':
            'Memohon kepada Allah agar keturunan senantiasa menjaga ibadah shalat.',
      },
      {
        'name': 'Doa Hamba untuk Keteguhan Hati',
        'desc':
            'Memohon agar hati senantiasa ditetapkan di atas ketaatan dan agama-Nya.',
      },
      {
        'name': 'Doa Meminta Rezeki yang Halal',
        'desc': 'Memohon kecukupan rezeki yang berkah, baik, dan bermanfaat.',
      },
      {
        'name': 'Doa Memohon Kesehatan Lahir dan Batin',
        'desc':
            'Memohon perlindungan dari penyakit serta keafiatan pada pendengaran dan penglihatan.',
      },
      {
        'name': 'Doa Memohon Kesabaran',
        'desc':
            'Memohon agar hati dilapangkan dan diberi kekuatan dalam menghadapi ujian.',
      },
      {
        'name': 'Doa Memohon Keikhlasan',
        'desc':
            'Memohon agar setiap amal ibadah murni hanya mengharap ridha Allah.',
      },
      {
        'name': 'Doa Memohon Ketaqwaan',
        'desc':
            'Memohon petunjuk, ketaqwaan, sifat iffah (menjaga diri), dan kecukupan.',
      },
      {
        'name': 'Doa Memohon Jodoh yang Terbaik',
        'desc':
            'Memohon pasangan hidup yang menyejukkan pandangan mata dan membawa berkah.',
      },
      {
        'name': 'Doa Keberkahan Hidup',
        'desc': 'Memohon agar sisa umur dan setiap urusan dipenuhi keberkahan.',
      },
      {
        'name': 'Doa Memohon Kecerdasan Berpikir',
        'desc':
            'Memohon ilmu yang bermanfaat dan ketajaman berpikir dalam kebaikan.',
      },
      {
        'name': 'Doa untuk Orang Tua yang Masih Hidup',
        'desc':
            'Memohon kesehatan, umur panjang, dan perlindungan bagi kedua orang tua.',
      },
      {
        'name': 'Doa untuk Orang Tua yang Sudah Wafat',
        'desc':
            'Memohon ampunan kubur dan tempat terbaik di sisi Allah bagi orang tua.',
      },
      {
        'name': 'Doa Kebahagiaan Dunia Akhirat Orang Tua',
        'desc':
            'Memohon agar orang tua senantiasa dimuliakan dan bahagia di dunia maupun akhirat.',
      },
      {
        'name': 'Doa Keteguhan Iman',
        'desc': 'Memohon agar tidak digelincirkan setelah mendapatkan hidayah.',
      },
      {
        'name': 'Doa untuk Saudara Seiman',
        'desc':
            'Memohon kebaikan, perlindungan, dan ampunan bagi saudara muslim lainnya.',
      },
      {
        'name': 'Doa untuk Kaum Muslimin & Muslimat',
        'desc':
            'Memohon ampunan bagi seluruh umat Muslim, baik yang masih hidup maupun yang wafat.',
      },
      {
        'name': 'Doa untuk Orang yang Berbuat Baik kepada Kita',
        'desc':
            'Memohon agar Allah membalas kebaikan orang lain dengan balasan terbaik.',
      },
      {
        'name': 'Doa Kebaikan untuk Sahabat',
        'desc':
            'Memohon perlindungan, kelancaran urusan, dan eratnya tali persaudaraan sahabat.',
      },
      {
        'name': 'Doa Keberkahan untuk Guru',
        'desc':
            'Memohon balasan pahala mengalir dan kemuliaan bagi bapak/ibu guru.',
      },
      {
        'name': 'Doa Kedamaian dengan Tetangga',
        'desc':
            'Memohon hubungan yang harmonis dan terhindar dari keburukan tetangga.',
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
          'Doa Diri & Orang Lain',
          style: TextStyle(
            fontSize: 18,
            color: isLightTheme ? Colors.black87 : Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: doaList.length,
        itemBuilder: (context, index) {
          final doa = doaList[index];
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
                        builder: (context) => const AgarMendirikanSholatPage(),
                      ),
                    );
                    break;
                  case 1:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const KeteguhanHatiPage(),
                      ),
                    );
                    break;
                  case 2:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RezekiHalalPage(),
                      ),
                    );
                    break;
                  case 3:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MemohonKesehatanPage(),
                      ),
                    );
                    break;
                  case 4:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MemohonKesabaranPage(),
                      ),
                    );
                    break;
                  case 5:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MemohonKeikhlasanPage(),
                      ),
                    );
                    break;
                  case 6:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MemohonTaqwaPage(),
                      ),
                    );
                    break;
                  case 7:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MemohonJodohPage(),
                      ),
                    );
                    break;
                  case 8:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const KeberkahanHidupPage(),
                      ),
                    );
                    break;
                  case 9:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MemohonKecerdasanPage(),
                      ),
                    );
                    break;
                  case 10:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OrangTuaHidupPage(),
                      ),
                    );
                    break;
                  case 11:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OrangTuaWafatPage(),
                      ),
                    );
                    break;
                  case 12:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const KebahagiaanOrangTuaPage(),
                      ),
                    );
                    break;
                  case 13:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const KeteguhanImanPage(),
                      ),
                    );
                    break;
                  case 14:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SaudaraSeimanPage(),
                      ),
                    );
                    break;
                  case 15:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const KaumMusliminPage(),
                      ),
                    );
                    break;
                  case 16:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const OrangBerbuatBaikPage(),
                      ),
                    );
                    break;
                  case 17:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const UntukSahabatPage(),
                      ),
                    );
                    break;
                  case 18:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const UntukGuruPage(),
                      ),
                    );
                    break;
                  case 19:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const UntukTetanggaPage(),
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
