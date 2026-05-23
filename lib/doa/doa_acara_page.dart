import 'package:flutter/material.dart';
import '../doa_acara/doa_pembukaan_page.dart';
import '../doa_acara/doa_penutup_page.dart';
import '../doa_acara/doa_syukuran_page.dart';
import '../doa_acara/doa_pernikahan_page.dart';
import '../doa_acara/doa_rumah_baru_page.dart';

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
                }
              },
            ),
          );
        },
      ),
    );
  }
}
