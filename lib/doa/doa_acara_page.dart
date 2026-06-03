import 'package:flutter/material.dart';
// IMPORT 5 DOA AWAL (Tetap dipertahankan)
import '../doa_acara/doa_pembukaan_page.dart';
import '../doa_acara/doa_penutup_page.dart';
import '../doa_acara/doa_syukuran_page.dart';
import '../doa_acara/doa_pernikahan_page.dart';
import '../doa_acara/doa_rumah_baru_page.dart';

// IMPORT 10 DOA ACARA BARU
import '../doa_acara/aqiqah_page.dart';
import '../doa_acara/khitanan_page.dart';
import '../doa_acara/ulang_tahun_page.dart';
import '../doa_acara/pelepasan_musafir_page.dart';
import '../doa_acara/rapat_kerja_page.dart';
import '../doa_acara/perpisahan_sekolah_page.dart';
import '../doa_acara/peresmian_usaha_page.dart';
import '../doa_acara/menyambut_ramadhan_page.dart';
import '../doa_acara/halal_bihalal_page.dart';
import '../doa_acara/peringatan_hari_besar_page.dart';
import '../doa_acara/empat_bulan_kandungan_page.dart';

class DoaAcaraPage extends StatelessWidget {
  const DoaAcaraPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Menggunakan tipe List<Map<String, String>> disamakan dengan menu doa musibah sebelumnya
    final List<Map<String, String>> doaAcaraList = [
      {
        'name': 'Doa Pembukaan Acara',
        'desc':
            'Memohon keberkahan dan kelancaran di awal dimulainya sebuah acara.',
      },
      {
        'name': 'Doa Penutup Acara (Kifaratul Majlis)',
        'desc': 'Memohon ampunan atas kekhilafan selama acara berlangsung.',
      },
      {
        'name': 'Doa Syukuran / Walimah',
        'desc':
            'Ungkapan syukur atas nikmat dan keberkahan dalam suatu perhelatan.',
      },
      {
        'name': 'Doa Pernikahan',
        'desc':
            'Doa restu untuk keberkahan keluarga baru (Barakallahu lakuma...).',
      },
      {
        'name': 'Doa Menempati Rumah Baru',
        'desc':
            'Memohon perlindungan dan kenyamanan di tempat tinggal yang baru.',
      },
      // 10 DOA TAMBAHAN BARU
      {
        'name': 'Doa Acara Aqiqah',
        'desc':
            'Memohon agar anak yang diaqiqahi tumbuh menjadi generasi shalih/shalihah.',
      },
      {
        'name': 'Doa Acara Khitanan',
        'desc':
            'Memohon keselamatan, kesucian fisik, dan keberkahan bagi anak yang dikhitan.',
      },
      {
        'name': 'Doa Acara Ulang Tahun',
        'desc':
            'Doa memohon keberkahan umur, kesehatan, dan ketetapan iman di hari kelahiran.',
      },
      {
        'name': 'Doa Pelepasan Musafir / Safar',
        'desc':
            'Mendoakan keselamatan dan perlindungan bagi kerabat yang hendak bepergian jauh.',
      },
      {
        'name': 'Doa Pertemuan / Rapat Kerja',
        'desc':
            'Memohon petunjuk, kesepahaman, dan hasil keputusan rapat yang membawa maslahat.',
      },
      {
        'name': 'Doa Acara Perpisahan / Kelulusan',
        'desc':
            'Doa pelepasan siswa atau rekan kerja agar sukses di jenjang pengabdian berikutnya.',
      },
      {
        'name': 'Doa Peresmian Tempat Usaha',
        'desc':
            'Memohon kelancaran rezeki yang halal, berkah, dan dijauhkan dari kerugian.',
      },
      {
        'name': 'Doa Menyambut Bulan Ramadhan',
        'desc':
            'Doa agar disampaikan umur dan diberikan kekuatan ibadah di bulan suci.',
      },
      {
        'name': 'Doa Acara Halal bi Halal',
        'desc':
            'Memohon perajutan tali silaturahmi dan peleburan dosa antar sesama.',
      },
      {
        'name': 'Doa Peringatan Hari Besar Islam',
        'desc':
            'Doa refleksi momentum besar (Isra Miraj, Maulid, Muharram) demi persatuan umat.',
      },
      {
        'name': 'Doa 4 Bulan Kandungan',
        'desc':
            'Memohon kesempurnaan fisik, peniupan ruh yang baik, serta keselamatan janin.',
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
          "Doa Acara",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: doaAcaraList.length,
        itemBuilder: (context, index) {
          final doa = doaAcaraList[index];
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
                switch (index) {
                  case 0:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DoaPembukaanPage(),
                      ),
                    );
                    break;
                  case 1:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DoaPenutupPage(),
                      ),
                    );
                    break;
                  case 2:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DoaSyukuranPage(),
                      ),
                    );
                    break;
                  case 3:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DoaPernikahanPage(),
                      ),
                    );
                    break;
                  case 4:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DoaRumahBaruPage(),
                      ),
                    );
                    break;
                  // BERIKUT ADALAH TAMBAHAN KE BAWAHNYA SINKRON DENGAN LIST DI ATAS
                  case 5:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AqiqahPage(),
                      ),
                    );
                    break;
                  case 6:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const KhitananPage(),
                      ),
                    );
                    break;
                  case 7:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const UlangTahunPage(),
                      ),
                    );
                    break;
                  case 8:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PelepasanMusafirPage(),
                      ),
                    );
                    break;
                  case 9:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RapatKerjaPage(),
                      ),
                    );
                    break;
                  case 10:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PerpisahanSekolahPage(),
                      ),
                    );
                    break;
                  case 11:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PeresmianUsahaPage(),
                      ),
                    );
                    break;
                  case 12:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MenyambutRamadhanPage(),
                      ),
                    );
                    break;
                  case 13:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HalalBiHalalPage(),
                      ),
                    );
                    break;
                  case 14:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PeringatanHariBesarPage(),
                      ),
                    );
                    break;
                  case 15:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const EmpatBulanKandunganPage(),
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
