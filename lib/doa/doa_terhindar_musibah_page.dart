import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';

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
import '../doa_musibah/doa_menolak_firasat_buruk_page.dart';
import '../doa_musibah/doa_berlindung_keburukan_amal_page.dart';
import '../doa_musibah/doa_diancam_orang_jahat_page.dart';

// Import 10 Halaman Doa Baru Tambahan
import '../doa_musibah/doa_berlindung_kecelakaan_page.dart';
import '../doa_musibah/doa_tidak_disesatkan_setan_kematian_page.dart';
import '../doa_musibah/doa_berlindung_orang_zalim_page.dart';
import '../doa_musibah/doa_berlindung_keburukan_orang_kafir_page.dart';
import '../doa_musibah/doa_berlindung_syirik_page.dart';
import '../doa_musibah/doa_menghilangkan_gangguan_setan_page.dart';
import '../doa_musibah/doa_berlindung_hilangnya_nikmat_page.dart';
import '../doa_musibah/doa_berlindung_beratnya_cobaan_page.dart';
import '../doa_musibah/doa_berlindung_pandangan_mata_jahat_page.dart';
import '../doa_musibah/doa_takut_kezaliman_penguasa_page.dart';

class DoaTerhindarMusibahPage extends StatelessWidget {
  const DoaTerhindarMusibahPage({super.key});

  @override
  Widget build(BuildContext context) {
    final isLightTheme = Provider.of<ThemeProvider>(context).isLightTheme;
    final List<Map<String, String>> doaTerhindarMusibahList = [
      {
        'name': 'Doa Terhindar dari berbagai Bencana',
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
      {
        'name': 'Doa Menolak Firasat Buruk',
        'desc':
            'Memohon ketetapan hati dari prasangka buruk dan menyerahkan segala kebaikan hanya dari Allah.',
      },
      {
        'name': 'Doa Berlindung dari Keburukan Amal',
        'desc':
            'Memohon perlindungan dari dampak buruk amalan masa lalu maupun yang belum dikerjakan.',
      },
      {
        'name': 'Doa Ketika Diancam Orang Jahat',
        'desc':
            'Doa perlindungan penuh dan permohonan kecukupan pertolongan Allah dari tipu daya musuh.',
      },
      // 10 Menu Baru Tambahan
      {
        'name': 'Doa Berlindung dari Kecelakaan',
        'desc':
            'Memohon perlindungan dari mati tertimbun, jatuh dari ketinggian, tenggelam, dan terbakar.',
      },
      {
        'name': 'Doa Agar Tidak Disesatkan Setan Menjelang Kematian',
        'desc':
            'Memohon keteguhan iman agar tidak goyah atau disesatkan setan saat sakaratul maut.',
      },
      {
        'name': 'Doa Berlindung dari Orang Zalim',
        'desc':
            'Memohon agar dijauhkan dan diselamatkan dari kekuasaan serta kejahatan kaum zalim.',
      },
      {
        'name': 'Doa Berlindung dari Keburukan Orang Kafir',
        'desc':
            'Memohon pertolongan agar tidak dijadikan sasaran fitnah atau dikuasai kaum kafir.',
      },
      {
        'name': 'Doa Berlindung dari Syirik',
        'desc':
            'Memohon penjagaan dari perbuatan syirik yang disadari maupun tidak disadari.',
      },
      {
        'name': 'Doa Menghilangkan Gangguan Setan',
        'desc':
            'Membaca perlindungan dari bisikan jahat setan yang mengganggu pikiran dan ketenangan.',
      },
      {
        'name': 'Doa Berlindung dari Hilangnya Nikmat',
        'desc':
            'Memohon perlindungan dari dicabutnya kesehatan, kesejahteraan, dan nikmat iman.',
      },
      {
        'name': 'Doa Berlindung dari Beratnya Cobaan',
        'desc':
            'Memohon keringanan dari takdir buruk, penderitaan berat, dan hinaan musuh.',
      },
      {
        'name': 'Doa Berlindung dari Pandangan Mata Jahat',
        'desc':
            'Memohon perlindungan bagi diri dan keluarga dari bahaya penyakit Ain (pandangan dengki).',
      },
      {
        'name': 'Doa Bila Takut Kezaliman Penguasa',
        'desc':
            'Memohon keagungan Allah untuk membentengi diri dari kesewenang-wenangan pemimpin.',
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
          "Doa Terhindar dari Musibah & Keburukan",
          style: TextStyle(
            fontSize: 18,
            color: isLightTheme ? Colors.black87 : Colors.white,
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
                  size: 24,
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
                  case 14:
                    page = const DoaMenolakFirasatBurukPage();
                    break;
                  case 15:
                    page = const DoaBerlindungKeburukanAmalPage();
                    break;
                  case 16:
                    page = const DoaDiancamOrangJahatPage();
                    break;
                  // Navigasi 10 Doa Baru
                  case 17:
                    page = const DoaBerlindungKecelakaanPage();
                    break;
                  case 18:
                    page = const DoaTidakDisesatkanSetanKematianPage();
                    break;
                  case 19:
                    page = const DoaBerlindungOrangZalimPage();
                    break;
                  case 20:
                    page = const DoaBerlindungKeburukanOrangKafirPage();
                    break;
                  case 21:
                    page = const DoaBerlindungSyirikPage();
                    break;
                  case 22:
                    page = const DoaMenghilangkanGangguanSetanPage();
                    break;
                  case 23:
                    page = const DoaBerlindungHilangnyaNikmatPage();
                    break;
                  case 24:
                    page = const DoaBerlindungBeratnyaCobaanPage();
                    break;
                  case 25:
                    page = const DoaBerlindungPandanganMataJahatPage();
                    break;
                  case 26:
                    page = const DoaTakutKezalimanPenguasaPage();
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
