import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TasbihPage extends StatefulWidget {
  const TasbihPage({super.key});

  @override
  State<TasbihPage> createState() => _TasbihPageState();
}

class _TasbihPageState extends State<TasbihPage> {
  String _selectedOption = 'Niat Shalat Tasbih';

  final List<String> _dropdownOptions = [
    'Niat Shalat Tasbih',
    'Tata Cara Shalat Tasbih',
    'Panduan Distribusi Hitungan Tasbih',
  ];

  // Data Panduan Jumlah & Posisi Pembacaan Tasbih (Total 75 Tasbih per Rakaat)
  final List<Map<String, dynamic>> _distribusiTasbihData = [
    {
      'header': 'Posisi 1',
      'title': 'Setelah Membaca Surat Pendek',
      'desc':
          'Sebelum melakukan rukuk, dalam posisi berdiri bacalah kalimat tasbih sebanyak 15 kali.',
      'hasRead': false,
    },
    {
      'header': 'Posisi 2',
      'title': 'Saat Rukuk',
      'desc':
          'Setelah selesai membaca doa rukuk yang biasa, bacalah kalimat tasbih sebanyak 10 kali sebelum bangkit.',
      'hasRead': false,
    },
    {
      'header': 'Posisi 3',
      'title': 'Saat I\'tidal',
      'desc':
          'Setelah selesai membaca doa i\'tidal yang biasa, bacalah kalimat tasbih sebanyak 10 kali sebelum sujud.',
      'hasRead': false,
    },
    {
      'header': 'Posisi 4',
      'title': 'Saat Sujud Pertama',
      'desc':
          'Setelah selesai membaca doa sujud yang biasa, bacalah kalimat tasbih sebanyak 10 kali.',
      'hasRead': false,
    },
    {
      'header': 'Posisi 5',
      'title': 'Saat Duduk di Antara Dua Sujud',
      'desc':
          'Setelah selesai membaca doa duduk di antara dua sujud yang biasa, bacalah kalimat tasbih sebanyak 10 kali.',
      'hasRead': false,
    },
    {
      'header': 'Posisi 6',
      'title': 'Saat Sujud Kedua',
      'desc':
          'Setelah selesai membaca doa sujud kedua yang biasa, bacalah kalimat tasbih sebanyak 10 kali.',
      'hasRead': false,
    },
    {
      'header': 'Posisi 7',
      'title': 'Saat Duduk Istirahat (Sebelum Bangkit / Salam)',
      'desc':
          'Sebelum bangkit berdiri ke rakaat berikutnya (atau sebelum membaca tasyahud akhir pada rakaat terakhir), duduklah sejenak dan bacalah kalimat tasbih sebanyak 10 kali.',
      'hasRead': false,
    },
  ];

  // Data Alur Langkah-Langkah Umum Shalat Tasbih
  final List<Map<String, dynamic>> _tataCaraTasbihData = [
    {
      'header': 'Langkah 1',
      'title': 'Niat dan Takbiratul Ihram',
      'desc':
          'Berdiri tegak menghadap kiblat, memantapkan niat di dalam hati (sesuai waktu pelaksanaan siang/malam) lalu melakukan Takbiratul Ihram.',
      'hasRead': false,
    },
    {
      'header': 'Langkah 2',
      'title': 'Membaca Iftitah, Al-Fatihah, & Surat Pendek',
      'desc':
          'Membaca doa Iftitah, dilanjutkan Surat Al-Fatihah, dan membaca salah satu surat pendek Al-Qur\'an.',
      'hasRead': false,
    },
    {
      'header': 'Langkah 3',
      'title': 'Membaca Kalimat Tasbih',
      'desc':
          'Sebelum melakukan gerakan rukuk, bacalah kalimat tasbih berikut sebanyak 15 kali:',
      'hasRead': true,
      'arabic':
          "سُبْحَانَ اللهِ وَالْحَمْدُ لِلهِ وَلَا إِلَهَ إِلَّا اللهُ وَاللهُ أَكْبَرُ",
      'latin':
          "Subhaanallahi wal hamdulillahi wa laa ilaaha illallahu wallahu akbar.",
      'arti':
          "Maha Suci Allah, segala puji bagi Allah, tidak ada Tuhan selain Allah, dan Allah Maha Besar.",
    },
    {
      'header': 'Langkah 4',
      'title': 'Rukuk hingga Sujud Kedua',
      'desc':
          'Lakukan setiap gerakan shalat (Rukuk, I\'tidal, Sujud 1, Duduk di antara dua sujud, Sujud 2) secara tertib, dan pada setiap akhir bacaan gerakan tersebut, bacalah kalimat tasbih di atas sebanyak 10 kali.',
      'hasRead': false,
    },
    {
      'header': 'Langkah 5',
      'title': 'Duduk Istirahat (Jilsah al-Istirahah)',
      'desc':
          'Setelah sujud kedua pada rakaat pertama (atau ketiga), jangan langsung berdiri. Duduklah sejenak seperti duduk di antara dua sujud, lalu bacalah kalimat tasbih sebanyak 10 kali, baru kemudian bangkit berdiri.',
      'hasRead': false,
    },
    {
      'header': 'Langkah 6',
      'title': 'Tasyahud Akhir dan Salam',
      'desc':
          'Pada rakaat penutup (rakaat ke-2 pada malam hari, atau rakaat ke-4 pada siang hari), bacaan tasbih 10 kali dilakukan terlebih dahulu sebelum Anda membaca doa Tasyahud Akhir, kemudian diakhiri dengan salam.',
      'hasRead': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    final bool isLightMode = Theme.of(context).brightness == Brightness.light;

    final Color bgColor = isLightMode
        ? const Color(0xfff5f7fa)
        : const Color(0xff090f16);
    final Color cardColor = isLightMode
        ? Colors.white
        : const Color(0xff111a24);
    final Color innerCardColor = isLightMode
        ? const Color(0xffeef2f7)
        : const Color(0xff090f16);
    final Color mainTextColor = isLightMode
        ? const Color(0xff1e293b)
        : Colors.white;
    final Color subTextColor = isLightMode
        ? const Color(0xff64748b)
        : Colors.white70;
    final Color accentColor = isLightMode
        ? const Color(0xff0f766e)
        : Colors.tealAccent;
    final Color borderTileColor = isLightMode
        ? const Color(0xffe2e8f0)
        : Colors.white12;
    final Color arabicTextColor = isLightMode ? Colors.black87 : Colors.white;

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: isLightMode ? Colors.black87 : Colors.white70,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "Shalat Tasbih",
          style: TextStyle(
            color: mainTextColor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // Tags
          Wrap(
            spacing: 8,
            children: [
              _buildTag(
                "Shalat Sunnah",
                isLightMode ? const Color(0xffe2e8f0) : Colors.white10,
                subTextColor,
              ),
              _buildTag(
                "tasbih",
                isLightMode ? const Color(0xffe2e8f0) : Colors.white10,
                subTextColor,
              ),
              _buildTag(
                "4 rakaat",
                isLightMode ? const Color(0xffe2e8f0) : Colors.white10,
                subTextColor,
              ),
            ],
          ),
          const SizedBox(height: 24),

          // Dropdown Menu
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            decoration: BoxDecoration(
              color: cardColor,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: isLightMode
                    ? const Color(0xffcbd5e1)
                    : Colors.teal.withOpacity(0.3),
                width: 1,
              ),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: _selectedOption,
                dropdownColor: cardColor,
                icon: Icon(Icons.arrow_drop_down, color: accentColor),
                style: TextStyle(
                  color: mainTextColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
                items: _dropdownOptions.map((String option) {
                  return DropdownMenuItem<String>(
                    value: option,
                    child: Text(option),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  if (newValue != null) {
                    setState(() {
                      _selectedOption = newValue;
                    });
                  }
                },
              ),
            ),
          ),
          const SizedBox(height: 32),

          // Kondisional Tampilan Berdasarkan Dropdown
          if (_selectedOption == 'Niat Shalat Tasbih') ...[
            // === NIAT SIANG HARI ===
            Center(
              child: Text(
                "Niat Shalat Tasbih Siang Hari (4 Rakaat - 1 Salam)",
                style: TextStyle(
                  color: accentColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
              decoration: BoxDecoration(
                color: cardColor,
                borderRadius: BorderRadius.circular(12),
                border: isLightMode
                    ? Border.all(color: const Color(0xffe2e8f0))
                    : null,
              ),
              child: Text(
                "أُصَلِّيْ سُنَّةَ التَّسْبِيْحِ أَرْبَعَ رَكَعَاتٍ لِلهِ تَعَالَى",
                textAlign: TextAlign.center,
                style: GoogleFonts.amiri(
                  color: arabicTextColor,
                  fontSize: 24,
                  height: 2.2,
                ),
              ),
            ),
            const SizedBox(height: 16),
            _buildTextContainer(
              "Transliterasi (Siang)",
              "Ushallii sunnatat-tasbiihi arba'a raka'aatin lillaahi ta'aalaa.",
              subTextColor,
              cardColor,
              isLightMode,
              isItalic: true,
            ),
            const SizedBox(height: 16),
            _buildTextContainer(
              "Terjemahan (Siang)",
              "Aku berniat shalat sunnah Tasbih empat rakaat karena Allah Ta'ala.",
              subTextColor,
              cardColor,
              isLightMode,
            ),

            const SizedBox(height: 40),
            const Divider(color: Colors.grey, thickness: 0.5),
            const SizedBox(height: 24),

            // === NIAT MALAM HARI ===
            Center(
              child: Text(
                "Niat Shalat Tasbih Malam Hari (2 Rakaat - Salam)",
                style: TextStyle(
                  color: accentColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
              decoration: BoxDecoration(
                color: cardColor,
                borderRadius: BorderRadius.circular(12),
                border: isLightMode
                    ? Border.all(color: const Color(0xffe2e8f0))
                    : null,
              ),
              child: Text(
                "أُصَلِّيْ سُنَّةَ التَّسْبِيْحِ رَكْعَتَيْنِ لِلهِ تَعَالَى",
                textAlign: TextAlign.center,
                style: GoogleFonts.amiri(
                  color: arabicTextColor,
                  fontSize: 24,
                  height: 2.2,
                ),
              ),
            ),
            const SizedBox(height: 16),
            _buildTextContainer(
              "Transliterasi (Malam)",
              "Ushallii sunnatat-tasbiihi rak'ataini lillaahi ta'aalaa.",
              subTextColor,
              cardColor,
              isLightMode,
              isItalic: true,
            ),
            const SizedBox(height: 16),
            _buildTextContainer(
              "Terjemahan (Malam)",
              "Aku berniat shalat sunnah Tasbih dua rakaat karena Allah Ta'ala.",
              subTextColor,
              cardColor,
              isLightMode,
            ),
          ] else ...[
            // === TAMPILAN DATA LIST TATA CARA / DISTRIBUSI ===
            Row(
              children: [
                Icon(Icons.format_list_numbered, color: accentColor, size: 18),
                const SizedBox(width: 8),
                Text(
                  _selectedOption == 'Tata Cara Shalat Tasbih'
                      ? "Alur Langkah Pelaksanaan Shalat"
                      : "Posisi Bacaan Tasbih (75x Per Rakaat)",
                  style: TextStyle(
                    color: accentColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            ...(_selectedOption == 'Tata Cara Shalat Tasbih'
                    ? _tataCaraTasbihData
                    : _distribusiTasbihData)
                .map((step) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: cardColor,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: borderTileColor),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          step['header']!,
                          style: TextStyle(
                            color: accentColor,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          step['title']!,
                          style: TextStyle(
                            color: mainTextColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          step['desc']!,
                          style: TextStyle(
                            color: subTextColor,
                            fontSize: 13,
                            height: 1.5,
                          ),
                        ),
                        if (step['hasRead'] == true) ...[
                          const SizedBox(height: 16),
                          _buildBacaanBox(
                            step['arabic']!,
                            step['latin']!,
                            step['arti']!,
                            innerCardColor,
                            mainTextColor,
                            subTextColor,
                            isLightMode,
                            arabicTextColor,
                          ),
                        ],
                      ],
                    ),
                  );
                })
                .toList(),
          ],

          const SizedBox(height: 24),
          // Seksi Keterangan Statis di bagian bawah
          Row(
            children: [
              Icon(Icons.info_outline, color: accentColor, size: 18),
              const SizedBox(width: 6),
              Text(
                "Keterangan Penting",
                style: TextStyle(
                  color: accentColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: cardColor,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: isLightMode
                    ? const Color(0xffe2e8f0)
                    : Colors.teal.withOpacity(0.1),
              ),
            ),
            child: Text(
              "Shalat Tasbih dianjurkan diamalkan setidaknya seumur hidup sekali. Total bacaan tasbih dalam shalat ini adalah 300 kali (75 kali per rakaat dikali 4 rakaat). Jika dikerjakan siang hari, lakukanlah 4 rakaat langsung dengan 1 kali salam. Jika dikerjakan malam hari, lakukanlah 2 rakaat salam + 2 rakaat salam.",
              style: TextStyle(
                color: isLightMode ? const Color(0xff475569) : Colors.white60,
                fontSize: 13,
                height: 1.5,
              ),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _buildTag(String label, Color bg, Color text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(label, style: TextStyle(color: text, fontSize: 11)),
    );
  }

  Widget _buildTextContainer(
    String title,
    String content,
    Color textColor,
    Color containerColor,
    bool isLight, {
    bool isItalic = false,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: const Color(0xff0f766e),
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 12),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: containerColor,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: isLight
                  ? const Color(0xffe2e8f0)
                  : Colors.teal.withOpacity(0.2),
            ),
          ),
          child: Text(
            content,
            style: TextStyle(
              color: textColor,
              fontSize: 14,
              fontStyle: isItalic ? FontStyle.italic : FontStyle.normal,
              height: 1.4,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBacaanBox(
    String ar,
    String lat,
    String art,
    Color innerBg,
    Color mainTxt,
    Color subTxt,
    bool isLight,
    Color arabicColor,
  ) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: innerBg,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              ar,
              textAlign: TextAlign.center,
              style: GoogleFonts.amiri(
                color: arabicColor,
                fontSize: 19,
                height: 2.2,
              ),
            ),
          ),
          const SizedBox(height: 12),
          Text(
            lat,
            style: TextStyle(
              color: mainTxt.withOpacity(0.9),
              fontSize: 13,
              fontStyle: FontStyle.italic,
              height: 1.4,
            ),
          ),
          Divider(
            color: isLight ? const Color(0xffcbd5e1) : Colors.white10,
            height: 16,
          ),
          Text(
            art,
            style: TextStyle(
              color: isLight ? const Color(0xff475569) : Colors.white60,
              fontSize: 12,
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}
