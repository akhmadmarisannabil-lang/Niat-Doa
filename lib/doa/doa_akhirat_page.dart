import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';
// IMPORT 5 DOA AWAL
import '../doa_akhirat/doa_sapu_jagad_page.dart';
import '../doa_akhirat/doa_husnul_khotimah_page.dart';
import '../doa_akhirat/doa_siksa_kubur_page.dart';
import '../doa_akhirat/doa_surga_firdaus_page.dart';
import '../doa_akhirat/doa_hisab_page.dart';

// IMPORT 7 DOA TAMBAHAN BARU
import '../doa_akhirat/doa_terima_amal_page.dart';
import '../doa_akhirat/doa_ampunan_dosa_page.dart';
import '../doa_akhirat/doa_perlindungan_neraka_page.dart';
import '../doa_akhirat/doa_naungan_mahsyar_page.dart';
import '../doa_akhirat/doa_menerima_kitab_page.dart';
import '../doa_akhirat/doa_kemudahan_shirat_page.dart';
import '../doa_akhirat/doa_minum_telaga_page.dart';

// IMPORT DOA TERBARU
import '../doa_akhirat/doa_selamat_dajjal_page.dart';

// IMPORT 3 DOA BARU TAMBAHAN (Syafaat, Ridho, Cahaya Kiamat)
import '../doa_akhirat/doa_meminta_syafaat_page.dart';
import '../doa_akhirat/doa_memohon_ridho_allah_page.dart';
import '../doa_akhirat/doa_memohon_cahaya_kiamat_page.dart';

class DoaAkhiratPage extends StatelessWidget {
  const DoaAkhiratPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isLightTheme = Provider.of<ThemeProvider>(context).isLightTheme;
    final List<Map<String, String>> doaAkhiratList = [
      {
        'name': 'Doa Keselamatan Dunia & Akhirat (Sapu Jagad)',
        'desc':
            'Memohon kebaikan di dunia, kebaikan di akhirat, serta perlindungan dari api neraka.',
      },
      {
        'name': 'Doa Memohon Husnul Khotimah',
        'desc':
            'Memohon agar wafat dalam keadaan iman, Islam, and membawa amal kebaikan.',
      },
      {
        'name': 'Doa Perlindungan dari Siksa Kubur',
        'desc':
            'Memohon keteguhan iman di alam barzakh dan dijauhkan dari azab kubur.',
      },
      {
        'name': 'Doa Memohon Surga Firdaus',
        'desc':
            'Permohonan tulus agar ditempatkan di surga tertinggi tanpa hisab yang berat.',
      },
      {
        'name': 'Doa Kelapangan di Hari Perhitungan (Hisab)',
        'desc':
            'Memohon agar dimudahkan dan diringankan saat penimbangan amal kelak.',
      },
      {
        'name': 'Doa Penerimaan Amal Ibadah',
        'desc':
            'Memohon agar seluruh ibadah dan amal shalih di dunia diterima di sisi Allah.',
      },
      {
        'name': 'Doa Ampunan Dosa Akhirat',
        'desc':
            'Memohon pengguguran kesalahan agar dikumpulkan bersama orang saleh.',
      },
      {
        'name': 'Doa Perlindungan Api Neraka',
        'desc':
            'Memohon perlindungan dari siksaan neraka Jahannam yang membinasakan.',
      },
      {
        'name': 'Doa Perlindungan di Mahsyar',
        'desc':
            'Memohon naungan Arsy Allah di padang Mahsyar yang sangat terik.',
      },
      {
        'name': 'Doa Menerima Catatan Amal',
        'desc':
            'Memohon agar menerima kitab catatan amal dengan tangan kanan (Yamin).',
      },
      {
        'name': 'Doa Melewati Jembatan Shirat',
        'desc':
            'Memohon keteguhan dan kecepatan laksana kilat saat melintasi Shirat.',
      },
      {
        'name': 'Doa Minum Air Telaga Kautsar',
        'desc':
            'Memohon kesempatan meminum air telaga Nabi Muhammad ﷺ tanpa dahaga selamanya.',
      },
      {
        'name': 'Doa Selamat dari Fitnah Dajjal',
        'desc':
            'Memohon perlindungan dari fitnah Al-Masih Ad-Dajjal yang merusak keimanan menjelang akhir zaman.',
      },
      // 3 Entri Doa Baru
      {
        'name': 'Doa Meminta Syafaat Nabi Muhammad ﷺ',
        'desc':
            'Memohon pertolongan dan syafaat Rasulullah ﷺ pada hari kiamat kelak.',
      },
      {
        'name': 'Doa Memohon Ridho Allah',
        'desc':
            'Memohon keridhaan Allah Ta\'ala atas ketetapan iman, Islam, dan takdir-Nya.',
      },
      {
        'name': 'Doa Memohon Cahaya di Hari Kiamat',
        'desc':
            'Memohon agar disempurnakan cahaya penuntun saat melewati kegelapan hari kiamat.',
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
          "Doa untuk Akhirat",
          style: TextStyle(
            fontSize: 18,
            color: isLightTheme ? Colors.black87 : Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: doaAkhiratList.length,
        itemBuilder: (context, index) {
          final doa = doaAkhiratList[index];

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
                        builder: (context) => const DoaSapuJagadPage(),
                      ),
                    );
                    break;
                  case 1:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DoaHusnulKhotimahPage(),
                      ),
                    );
                    break;
                  case 2:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DoaSiksaKuburPage(),
                      ),
                    );
                    break;
                  case 3:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DoaSurgaFirdausPage(),
                      ),
                    );
                    break;
                  case 4:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DoaHisabPage(),
                      ),
                    );
                    break;
                  case 5:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DoaTerimaAmalPage(),
                      ),
                    );
                    break;
                  case 6:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DoaAmpunanDosaPage(),
                      ),
                    );
                    break;
                  case 7:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DoaPerlindunganNerakaPage(),
                      ),
                    );
                    break;
                  case 8:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DoaNaunganMahsyarPage(),
                      ),
                    );
                    break;
                  case 9:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DoaMenerimaKitabPage(),
                      ),
                    );
                    break;
                  case 10:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DoaKemudahanShiratPage(),
                      ),
                    );
                    break;
                  case 11:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DoaMinumTelagaPage(),
                      ),
                    );
                    break;
                  case 12:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DoaSelamatDajjalPage(),
                      ),
                    );
                    break;
                  // Rute Navigasi 3 Doa Baru
                  case 13:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DoaMemintaSyafaatPage(),
                      ),
                    );
                    break;
                  case 14:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DoaMemohonRidhoAllahPage(),
                      ),
                    );
                    break;
                  case 15:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const DoaMemohonCahayaKiamatPage(),
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
