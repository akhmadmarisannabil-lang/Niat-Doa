import 'package:flutter/material.dart';
import '../doa_akhirat/doa_sapu_jagad_page.dart';
import '../doa_akhirat/doa_husnul_khotimah_page.dart';
import '../doa_akhirat/doa_siksa_kubur_page.dart';
import '../doa_akhirat/doa_surga_firdaus_page.dart';
import '../doa_akhirat/doa_hisab_page.dart';

class DoaAkhiratPage extends StatelessWidget {
  const DoaAkhiratPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Data diambil langsung berdasarkan asset gambar image_9412c2.png
    final List<Map<String, String>> doaAkhiratList = [
      {
        'name': 'Doa Keselamatan Dunia & Akhirat (Sapu Jagad)',
        'desc':
            'Memohon kebaikan di dunia, kebaikan di akhirat, serta perlindungan dari api neraka.',
      },
      {
        'name': 'Doa Memohon Husnul Khotimah',
        'desc':
            'Memohon agar wafat dalam keadaan iman, Islam, dan membawa amal kebaikan.',
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
          "Doa untuk Akhirat",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
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
                }
              },
            ),
          );
        },
      ),
    );
  }
}
