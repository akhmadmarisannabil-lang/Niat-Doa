import 'package:flutter/material.dart';
import '../doa_musibah/doa_bencana_page.dart';
import '../doa_musibah/doa_mendengar_musibah_page.dart';
import '../doa_musibah/doa_terhindar_bahaya_page.dart';
import '../doa_musibah/doa_penyakit_berat_page.dart';
import '../doa_musibah/doa_kerugian_page.dart';
import '../doa_musibah/doa_keselamatan_keturunan_page.dart';
import '../doa_musibah/doa_saat_susah_page.dart';
import '../doa_musibah/doa_tolak_bala_page.dart';
import '../doa_musibah/doa_terhindar_kezaliman_page.dart';
import '../doa_musibah/doa_saat_gempa_bumi_page.dart';
import '../doa_musibah/doa_mendengar_petir_page.dart';
import '../doa_musibah/doa_hujan_khawatir_banjir_page.dart';
import '../doa_musibah/doa_melihat_pertanda_buruk_page.dart';
import '../doa_musibah/doa_kehilangan_barang_page.dart';

class DoaTerhindarMusibahPage extends StatelessWidget {
  const DoaTerhindarMusibahPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Kumpulan data Doa Terhindar dari Musibah[cite: 30]
    final List<Map<String, String>> doaTerhindarMusibahList = [
      {
        'name': 'Doa Terhindar dari Musibah & Bencana',
        'desc': 'Memohon perlindungan dari cobaan berat dan takdir yang buruk.',
      },
      {
        'name': 'Doa Ketika Mendengar Musibah',
        'desc':
            'Kalimat istirja dan permohonan pahala serta ganti yang lebih baik.',
      },
      {
        'name': 'Doa Terhindar dari Bahaya (Pagi & Petang)',
        'desc':
            'Membaca bismillah yang dengan nama-Nya tidak ada sesuatu pun yang berbahaya.',
      },
      {
        'name': 'Doa Perlindungan dari Penyakit Berat',
        'desc':
            'Memohon agar dijauhkan dari penyakit belang, gila, kusta, dan penyakit buruk lainnya.',
      },
      {
        'name': 'Doa Terhindar dari Kerugian & Keburukan',
        'desc':
            'Memohon perlindungan dari hilangnya nikmat dan datangnya azab seketika.',
      },
      {
        'name': 'Doa Keselamatan Anak Keturunan',
        'desc':
            'Memohon perlindungan bagi anak cucu dari keburukan dan godaan setan.',
      },
      {
        'name': 'Doa Saat Susah',
        'desc':
            'Doa kedamaian hati dan kemudahan saat menghadapi urusan yang sulit.',
      },
      {
        'name': 'Doa Tolak Bala',
        'desc':
            'Memohon perlindungan dari segala macam bencana dan takdir buruk.',
      },
      {
        'name': 'Doa Terhindar dari Kezaliman',
        'desc': 'Memohon agar diselamatkan dari tipu daya orang-orang zalim.',
      },
      {
        'name': 'Doa Saat Gempa Bumi',
        'desc':
            'Memohon keteguhan, keselamatan, dan perlindungan dari guncangan bumi.',
      },
      {
        'name': 'Doa Saat Mendengar Petir',
        'desc':
            'Pujian mengagungkan Allah saat mendengar petir agar terhindar dari murka-Nya.',
      },
      {
        'name': 'Doa Saat Hujan Khawatir Banjir',
        'desc':
            'Memohon agar hujan dialihkan menjadi berkah di perbukitan dan bukan musibah.',
      },
      {
        'name': 'Doa Melihat Pertanda Buruk',
        'desc':
            'Menepis rasa sial atau thiyarah dan mengembalikan takdir hanya kepada Allah.',
      },
      {
        'name': 'Doa Saat Kehilangan Barang',
        'desc':
            'Memohon petunjuk agar barang yang hilang dapat segera dikembalikan.',
      },
    ];

    return Scaffold(
      // Disamakan dengan Doa Sholat (Pure Dark)[cite: 29]
      backgroundColor: const Color(0xff121212),
      appBar: AppBar(
        backgroundColor: const Color(0xff121212),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white70),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Doa Terhindar dari Musibah",
          style: TextStyle(
            fontSize: 18, // Ukuran font disamakan kembali menjadi 18[cite: 29]
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: doaTerhindarMusibahList.length,
        itemBuilder: (context, index) {
          final doa = doaTerhindarMusibahList[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 12),
            decoration: BoxDecoration(
              // Menggunakan warna container item milik Doa Sholat[cite: 29]
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
                child: const Icon(
                  Icons.menu_book,
                  color: Colors.amber,
                  size:
                      24, // Dikembalikan ke ukuran default yang proporsional[cite: 29]
                ),
              ),
              title: Text(
                doa['name']!,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16, // Ukuran font title disamakan kembali[cite: 29]
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
                size: 16, // Ukuran trailing icon disamakan kembali[cite: 29]
              ),
              onTap: () {
                Widget page;
                switch (index) {
                  case 0:
                    page = const DoaBencanaPage();
                    break;
                  case 1:
                    page = const DoaMendengarMusibahPage();
                    break;
                  case 2:
                    page = const DoaTerhindarBahayaPage();
                    break;
                  case 3:
                    page = const DoaPenyakitBeratPage();
                    break;
                  case 4:
                    page = const DoaKerugianPage();
                    break;
                  case 5:
                    page = const DoaKeselamatanKeturunanPage();
                    break;
                  case 6:
                    page = const DoaSaatSusahPage();
                    break;
                  case 7:
                    page = const DoaTolakBalaPage();
                    break;
                  case 8:
                    page = const DoaTerhindarKezalimanPage();
                    break;
                  case 9:
                    page = const DoaSaatGempaBumiPage();
                    break;
                  case 10:
                    page = const DoaMendengarPetirPage();
                    break;
                  case 11:
                    page = const DoaHujanKhawatirBanjirPage();
                    break;
                  case 12:
                    page = const DoaMelihatPertandaBurukPage();
                    break;
                  case 13:
                    page = const DoaKehilanganBarangPage();
                    break;
                  default:
                    return;
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => page),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
