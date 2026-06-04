import 'package:flutter/material.dart';
import '../doa_sholat/qunut_page.dart';
import '../doa_sholat/iftitah_page.dart';
import '../doa_sholat/ruku_page.dart';
import '../doa_sholat/sujud_page.dart';
import '../doa_sholat/itidal_page.dart';
import '../doa_sholat/duduk_antara_dua_sujud_page.dart';
import '../doa_sholat/tasyahud_awal_page.dart';
import '../doa_sholat/tasyahud_akhir_page.dart';

// IMPORT DOA BARU
import '../doa_sholat/sujud_sahwi_page.dart';
import '../doa_sholat/sujud_tilawah_page.dart';
import '../doa_sholat/setelah_sholat_fardhu_page.dart';
import '../doa_sholat/setelah_sholat_dhuha_page.dart';
import '../doa_sholat/setelah_sholat_tahajjud_page.dart';
import '../doa_sholat/setelah_sholat_hajat_page.dart';
import '../doa_sholat/setelah_sholat_istikharah_page.dart';
import '../doa_sholat/setelah_sholat_taubat_page.dart';
import '../doa_sholat/setelah_sholat_tarawih_page.dart';
import '../doa_sholat/setelah_sholat_witir_page.dart';
import '../doa_sholat/qunut_nazilah_page.dart';
import '../doa_sholat/sholat_tasbih_page.dart';

class DoaIbadahPage extends StatelessWidget {
  const DoaIbadahPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> doaIbadahList = [
      {
        'name': 'Doa Qunut',
        'desc':
            'Dibaca saat iktidal pada rakaat kedua Shalat Subuh atau Shalat Witir.',
      },
      {
        'name': 'Doa Iftitah',
        'desc':
            'Doa pembuka yang dibaca setelah takbiratul ihram sebelum Al-Fatihah.',
      },
      {
        'name': "Doa Ruku'",
        'desc': "Doa kepasrahan dan agung yang dibaca saat posisi ruku'.",
      },
      {
        'name': 'Doa Sujud',
        'desc':
            'Doa ketundukan paling dekat dengan Allah yang dibaca saat sujud.',
      },
      {
        'name': 'Doa I\'tidal',
        'desc':
            'Doa pujian kepada Allah yang dibaca saat bangkit tegak dari ruku\'.',
      },
      {
        'name': 'Doa Duduk di Antara Dua Sujud',
        'desc': 'Doa permohonan ampun, rahmat, dan rezeki saat duduk iftirasg.',
      },
      {
        'name': 'Doa Tasyahud Awal (Tahiyat awal)',
        'desc':
            'Bacaan tasyahud awal dibaca pada rakaat kedua dalam posisi duduk.',
      },
      {
        'name': 'Doa Tasyahud Akhir (Tahiyat Akhir)',
        'desc':
            'Bacaan tasyahud akhir sebelum salam termasuk shalawat dan doa perlindungan.',
      },
      {
        'name': 'Doa Sujud Sahwi',
        'desc':
            'Dibaca dua kali guna menutup kekurangan atau kelupaan di dalam sholat.',
      },
      {
        'name': 'Doa Sujud Tilawah',
        'desc':
            'Dibaca ketika mendengar atau membaca potongan ayat-ayat sajdah.',
      },
      {
        'name': 'Doa Setelah Sholat Fardhu',
        'desc':
            'Amalan doa perlindungan dan rasa syukur setelah sholat lima waktu.',
      },
      {
        'name': 'Doa Setelah Sholat Dhuha',
        'desc':
            'Doa permohonan kelancaran rezeki, keberkahan, dan perlindungan pagi hari.',
      },
      {
        'name': 'Doa Setelah Sholat Tahajjud',
        'desc':
            'Pujian pengakuan keagungan Allah di sepertiga malam yang mustajab.',
      },
      {
        'name': 'Doa Setelah Sholat Hajat',
        'desc':
            'Doa kepasrahan tatkala memohon pemenuhan hajat atau cita-cita khusus.',
      },
      {
        'name': 'Doa Setelah Sholat Istikharah',
        'desc':
            'Doa memohon petunjuk pilihan terbaik di antara kebimbangan urusan.',
      },
      {
        'name': 'Doa Setelah Sholat Taubat',
        'desc': 'Istighfar pengakuan dosa untuk memohon ampunan Allah SWT.',
      },
      {
        'name': 'Doa Setelah Sholat Tarawih',
        'desc':
            'Doa Kamilin memohon kesempurnaan iman di malam bulan Ramadhan.',
      },
      {
        'name': 'Doa Setelah Sholat Witir',
        'desc':
            'Pujian pensucian kepada Dzat Raja yang Maha Suci sebagai penutup sholat malam.',
      },
      {
        'name': 'Qunut Nazilah Palestina',
        'desc':
            'Doa perlindungan untuk keselamatan dan kemenangan muslimin Palestina.',
      },
      {
        'name': 'Doa Sholat Tasbih',
        'desc':
            'Lafadz tasbih pengetuk pintu langit yang dibaca berulang dalam sholat.',
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        iconTheme: const IconThemeData(color: Colors.black87),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Doa Sholat",
          style: TextStyle(
            fontSize: 18,
            color: Colors.black87,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: doaIbadahList.length,
        itemBuilder: (context, index) {
          final doa = doaIbadahList[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 12),
            decoration: BoxDecoration(
              color: Colors.grey[50],
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey[200]!),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              leading: CircleAvatar(
                backgroundColor: Colors.blue.withOpacity(0.15),
                child: const Icon(Icons.menu_book, color: Colors.blue),
              ),
              title: Text(
                doa['name']!,
                style: const TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  doa['desc']!,
                  style: const TextStyle(color: Colors.black54, fontSize: 13),
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black26,
                size: 16,
              ),
              onTap: () {
                switch (index) {
                  case 0:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QunutPage(),
                      ),
                    );
                    break;
                  case 1:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const IftitahPage(),
                      ),
                    );
                    break;
                  case 2:
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const RukuPage()),
                    );
                    break;
                  case 3:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SujudPage(),
                      ),
                    );
                    break;
                  case 4:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ItidalPage(),
                      ),
                    );
                    break;
                  case 5:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DudukEntreDuaSujudPage(),
                      ),
                    );
                    break;
                  case 6:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TasyahudAwalPage(),
                      ),
                    );
                    break;
                  case 7:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TasyahudAkhirPage(),
                      ),
                    );
                    break;
                  case 8:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SujudSahwiPage(),
                      ),
                    );
                    break;
                  case 9:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SujudTilawahPage(),
                      ),
                    );
                    break;
                  case 10:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SetelahSholatFardhuPage(),
                      ),
                    );
                    break;
                  case 11:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SetelahSholatDhuhaPage(),
                      ),
                    );
                    break;
                  case 12:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SetelahSholatTahajjudPage(),
                      ),
                    );
                    break;
                  case 13:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SetelahSholatHajatPage(),
                      ),
                    );
                    break;
                  case 14:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const SetelahSholatIstikharahPage(),
                      ),
                    );
                    break;
                  case 15:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SetelahSholatTaubatPage(),
                      ),
                    );
                    break;
                  case 16:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SetelahSholatTarawihPage(),
                      ),
                    );
                    break;
                  case 17:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SetelahSholatWitirPage(),
                      ),
                    );
                    break;
                  case 18:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const QunutNazilahPage(),
                      ),
                    );
                    break;
                  case 19:
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SholatTasbihPage(),
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
