import 'package:flutter/material.dart';
//Niat Sholat
import 'sholat/shalat_fardhu_page.dart';
import 'sholat/sunnah_qobliyah_page.dart';
import 'sholat/sunnah_badiyah_page.dart';
import 'sholat/shalat_fardhu_kifayah_page.dart';
import 'sholat/sunnah_harian_page.dart';
import 'sholat/sunnah_waktu_tertentu_page.dart';
import 'sholat/sunnah_situasional_page.dart';
//Doa
import 'doa/doa_harian_page.dart';
import 'doa/doa_ibadah_page.dart';
import 'doa/doa_perlindungan_page.dart';
import 'doa/doa_acara_page.dart';
import 'doa/doa_lainnya_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  Widget _buildMenuGrid({
    required String headerTitle,
    required String headerDesc,
    required List<Map<String, dynamic>> menuItems,
    required String quoteText,
    String? quoteSub,
  }) {
    double screenWidth = MediaQuery.of(context).size.width;
    int crossAxisCount = 2;
    double aspectRatio = 1.4;

    if (screenWidth > 1000) {
      crossAxisCount = 6;
      aspectRatio = 1.5;
    } else if (screenWidth > 600) {
      crossAxisCount = 4;
      aspectRatio = 1.4;
    }

    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 1200),
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xff1a2e40),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    headerTitle,
                    style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    headerDesc,
                    style: const TextStyle(fontSize: 13, color: Colors.white70),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: menuItems.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: aspectRatio,
              ),
              itemBuilder: (context, index) {
                final item = menuItems[index];

                return GestureDetector(
                  onTap: () {
                    if (_currentIndex == 0) {
                      // LOGIKA NAVIGASI TAB SHOLAT
                      if (item['number'] == '1') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ShalatFardhuPage(),
                          ),
                        );
                      } else if (item['number'] == '2') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SunnahQobliyahPage(),
                          ),
                        );
                      } else if (item['number'] == '3') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SunnahBadiyahPage(),
                          ),
                        );
                      } else if (item['number'] == '4') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const ShalatFardhuKifayahPage(),
                          ),
                        );
                      } else if (item['number'] == '5') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SunnahHarianPage(),
                          ),
                        );
                      } else if (item['number'] == '6') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const SunnahWaktuTertentuPage(),
                          ),
                        );
                      } else if (item['number'] == '7') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SunnahSituasionalPage(),
                          ),
                        );
                      }
                    } else {
                      // LOGIKA NAVIGASI TAB DOA
                      if (item['number'] == '1') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DoaHarianPage(),
                          ),
                        );
                      } else if (item['number'] == '2') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DoaIbadahPage(),
                          ),
                        );
                      } else if (item['number'] == '3') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DoaPerlindunganPage(),
                          ),
                        );
                      } else if (item['number'] == '4') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DoaAcaraPage(),
                          ),
                        );
                      } else if (item['number'] == '5') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DoaLainnyaPage(),
                          ),
                        );
                      }
                    }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: item['color'],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: Image.network(
                              item['image'],
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) =>
                                  Container(color: item['color']),
                            ),
                          ),
                          Positioned.fill(
                            child: Container(
                              color: Colors.black.withOpacity(0.35),
                            ),
                          ),
                          Positioned(
                            top: 12,
                            left: 12,
                            child: CircleAvatar(
                              radius: 12,
                              backgroundColor: const Color(0x3d000000),
                              child: Text(
                                item['number'],
                                style: const TextStyle(
                                  fontSize: 11,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 12,
                            left: 12,
                            right: 12,
                            child: Text(
                              item['title'],
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 15,
                                shadows: [
                                  Shadow(
                                    blurRadius: 4.0,
                                    color: Colors.black,
                                    offset: Offset(1.0, 1.0),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xff222222),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Icon(Icons.auto_awesome, color: Colors.amber, size: 16),
                      SizedBox(width: 6),
                      Text(
                        "QUOTE OF THE DAY",
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          color: Colors.amber,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    quoteText,
                    style: const TextStyle(
                      fontSize: 13,
                      fontStyle: FontStyle.italic,
                      color: Colors.white70,
                    ),
                  ),
                  if (quoteSub != null) ...[
                    const SizedBox(height: 8),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        quoteSub,
                        style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: Colors.amber,
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Menu Shalat Sunnah Lainnya telah dihapus dari daftar
    final List<Map<String, dynamic>> niatMenu = [
      {
        'number': '1',
        'title': 'Shalat Fardhu',
        'color': const Color(0xffd1e4ff),
        'image': 'assets/images/menu/sholat.jpg',
      },
      {
        'number': '2',
        'title': 'Sunnah Qobliyah',
        'color': const Color(0xfffff3cd),
        'image': 'assets/images/menu/sholat.jpg',
      },
      {
        'number': '3',
        'title': 'Sunnah Ba\'diyah',
        'color': const Color(0xffd1f2e5),
        'image': 'assets/images/menu/sholat.jpg',
      },
      {
        'number': '4',
        'title': 'Shalat Fardhu\nKifayah',
        'color': const Color(0xffe2d1f9),
        'image': 'assets/images/menu/sholat.jpg',
      },
      {
        'number': '5',
        'title': 'Sunnah Harian',
        'color': const Color(0xffffe5d9),
        'image': 'assets/images/menu/sholat.jpg',
      },
      {
        'number': '6',
        'title': 'Sunnah\n(Waktu Tertentu)',
        'color': const Color(0xffd8f3dc),
        'image': 'assets/images/menu/sholat.jpg',
      },
      {
        'number': '7',
        'title': 'Sunnah Kebutuhan\n& Situasional',
        'color': const Color(0xffe8e8e4),
        'image': 'assets/images/menu/sholat.jpg',
      },
    ];

    final List<Map<String, dynamic>> doaMenu = [
      {
        'number': '1',
        'title': 'Doa Harian',
        'color': const Color(0xffd1e4ff),
        'image': 'assets/images/menu/berdoa.jpg',
      },
      {
        'number': '2',
        'title': 'Doa Ibadah',
        'color': const Color(0xfffff3cd),
        'image': 'assets/images/menu/berdoa.jpg',
      },
      {
        'number': '3',
        'title': 'Doa Memohon\nPerlindungan',
        'color': const Color(0xffd1f2e5),
        'image': 'assets/images/menu/berdoa.jpg',
      },
      {
        'number': '4',
        'title': 'Doa Acara',
        'color': const Color(0xffe2d1f9),
        'image': 'assets/images/menu/berdoa.jpg',
      },
      {
        'number': '5',
        'title': 'Doa Lainnya',
        'color': const Color(0xfffcdbdf),
        'image': 'assets/images/menu/berdoa.jpg',
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
          "Bacaan Niat Sholat & Doa",
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        actions: const [
          Icon(Icons.settings, color: Colors.white70),
          SizedBox(width: 16),
        ],
      ),
      body: _currentIndex == 0
          ? _buildMenuGrid(
              headerTitle: "Kumpulan Niat Sholat",
              headerDesc: "Ada bermacam-macam niat sholat",
              menuItems: niatMenu,
              quoteText:
                  "– Tegakkan shalatmu, tenangkan jiwamu. Karena shalat adalah cara hamba berbicara dengan Sang Pangcipta. –",
            )
          : _buildMenuGrid(
              headerTitle: "Kumpulan Doa",
              headerDesc: "Ada bermacam-macam Doa",
              menuItems: doaMenu,
              quoteText:
                  "\"Berdoalah kepada-Ku, niscaya akan Kuperkenankan bagimu. Doa adalah senjatanya orang mukmin dan tiang agama.\"",
            ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xff1e1e1e),
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.white38,
        currentIndex: _currentIndex,
        onTap: (int index) => setState(() => _currentIndex = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.mosque), label: 'Niat'),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: 'Doa'),
        ],
      ),
    );
  }
}
