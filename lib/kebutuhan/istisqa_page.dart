import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IstisqaPage extends StatefulWidget {
  const IstisqaPage({super.key});

  @override
  State<IstisqaPage> createState() => _IstisqaPageState();
}

class _IstisqaPageState extends State<IstisqaPage> {
  String _selectedOption = 'Shalat Istisqa Sebagai Makmum';

  final List<String> _dropdownOptions = [
    'Shalat Istisqa Sendirian',
    'Shalat Istisqa Sebagai Imam',
    'Shalat Istisqa Sebagai Makmum',
    'Tata Cara Shalat',
  ];

  final Map<String, Map<String, String>> _niatData = {
    'Shalat Istisqa Sendirian': {
      'title': 'Lafadz Niat (Sendirian)',
      'arabic': "أُصَلِّيْ سُنَّةَ الِاسْتِسْقَاءِ رَكْعَتَيْنِ لِلهِ تَعَالَى",
      'transliteration':
          "Ushallii sunnatal-istisqaa-i rak'ataini lillaahi ta'aalaa.",
      'translation':
          "Aku berniat shalat sunnah Istisqa dua rakaat karena Allah Ta'ala.",
    },
    'Shalat Istisqa Sebagai Imam': {
      'title': 'Lafadz Niat (Imam)',
      'arabic':
          "أُصَلِّيْ سُنَّةَ الِاسْتِسْقَاءِ رَكْعَتَيْنِ إِمَامًا لِلهِ تَعَالَى",
      'transliteration':
          "Ushallii sunnatal-istisqaa-i rak'ataini imaaman lillaahi ta'aalaa.",
      'translation':
          "Aku berniat shalat sunnah Istisqa dua rakaat sebagai imam karena Allah Ta'ala.",
    },
    'Shalat Istisqa Sebagai Makmum': {
      'title': 'Lafadz Niat (Makmum)',
      'arabic':
          "أُصَلِّيْ سُنَّةَ الِاسْتِسْقَاءِ رَكْعَتَيْنِ مَأْمُوْمًا لِلهِ تَعَالَى",
      'transliteration':
          "Ushallii sunnatal-istisqaa-i rak'ataini ma'muuman lillaahi ta'aalaa.",
      'translation':
          "Aku berniat shalat sunnah Istisqa dua rakaat sebagai makmum karena Allah Ta'ala.",
    },
  };

  final List<Map<String, dynamic>> _tataCaraData = [
    {
      'header': 'Rakaat 1 - Langkah 1',
      'title': 'Niat dan Takbiratul Ihram',
      'desc':
          'Berdiri tegak menghadap kiblat dengan pakaian sederhana/khidmat, mengangkat tangan sambil ber-takbir:',
      'hasRead': true,
      'arabic': "اللهُ أَكْبَرُ",
      'latin': "Allahu Akbar.",
      'arti': "Allah Maha Besar.",
    },
    {
      'header': 'Rakaat 1 - Langkah 2',
      'title': 'Takbir Tambahan 7 Kali',
      'desc':
          'Sama seperti shalat Id, pada rakaat pertama disunnahkan melakukan takbir tambahan sebanyak 7 kali di luar takbiratul ihram.',
      'hasRead': false,
    },
    {
      'header': 'Rakaat 1 - Langkah 3',
      'title': 'Membaca Al-Fatihah & Surat Nyaring (Jahar)',
      'desc':
          'Imam membaca Surat Al-Fatihah dilanjutkan surat pendek Al-Qur\'an secara lantang/nyaring, disusul gerakan rukuk dan sujud seperti shalat biasa.',
      'hasRead': false,
    },
    {
      'header': 'Rakaat 2 - Langkah 1',
      'title': 'Takbir Tambahan 5 Kali',
      'desc':
          'Bangkit ke rakaat kedua, kemudian melakukan takbir tambahan sebanyak 5 kali sebelum membaca Al-Fatihah.',
      'hasRead': false,
    },
    {
      'header': 'Rakaat 2 - Langkah 2',
      'title': 'Penyelesaian Rakaat & Salam',
      'desc':
          'Membaca Al-Fatihah, surat pendek, dilanjutkan rukuk, sujud, duduk tasyahud akhir, dan diakhiri dengan salam.',
      'hasRead': false,
    },
    {
      'header': 'Setelah Shalat',
      'title': 'Mendengarkan Khutbah Khusus',
      'desc':
          'Setelah salam, jemaah dianjurkan mendengarkan dua khutbah imam yang berisi anjuran istighfar, doa minta hujan, serta membalikkan posisi selendang/sorban sebagai simbol optimisme perubahan cuaca.',
      'hasRead': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    final bool isLightMode = Theme.of(context).brightness == Brightness.light;
    final bool isTataCara = _selectedOption == 'Tata Cara Shalat';

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
        ? const Color(0xff475569)
        : Colors.white70;
    final Color chipBgColor = isLightMode
        ? const Color(0xffe2e8f0)
        : Colors.white10;
    final Color chipTextColor = isLightMode
        ? const Color(0xff64748b)
        : Colors.white70;
    final Color accentColor = isLightMode
        ? const Color(0xff0f766e)
        : Colors.tealAccent;
    final Color borderColor = isLightMode
        ? const Color(0xffe2e8f0)
        : Colors.teal.withValues(alpha: 0.2);
    final Color arabicTextColor = isLightMode
        ? Colors.black
        : Colors.white.withValues(alpha: 0.9);

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
          isTataCara ? "Tata Cara Shalat Istisqa" : "Niat Shalat Istisqa",
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
          Wrap(
            spacing: 8,
            children: [
              _buildChip("Shalat Sunnah", chipBgColor, chipTextColor),
              _buildChip("istisqa", chipBgColor, chipTextColor),
              _buildChip("minta hujan", chipBgColor, chipTextColor),
            ],
          ),
          const SizedBox(height: 24),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            decoration: BoxDecoration(
              color: cardColor,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: isLightMode
                    ? borderColor
                    : Colors.teal.withValues(alpha: 0.3),
              ),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: _selectedOption,
                dropdownColor: cardColor,
                icon: Icon(Icons.arrow_drop_down, color: accentColor),
                style: TextStyle(
                  color: mainTextColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                items: _dropdownOptions
                    .map(
                      (String opt) =>
                          DropdownMenuItem(value: opt, child: Text(opt)),
                    )
                    .toList(),
                onChanged: (String? val) {
                  if (val != null) setState(() => _selectedOption = val);
                },
              ),
            ),
          ),
          const SizedBox(height: 32),
          if (!isTataCara) ...[
            (() {
              final currentNiat =
                  _niatData[_selectedOption] ??
                  _niatData['Shalat Istisqa Sebagai Makmum']!;
              return Column(
                children: [
                  Center(
                    child: Text(
                      currentNiat['title']!,
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
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 32,
                    ),
                    decoration: BoxDecoration(
                      color: cardColor,
                      borderRadius: BorderRadius.circular(12),
                      border: isLightMode
                          ? Border.all(color: borderColor)
                          : null,
                    ),
                    child: Text(
                      currentNiat['arabic']!,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.amiri(
                        color: arabicTextColor,
                        fontSize: 24,
                        height: 2.2,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Transliterasi",
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
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: cardColor,
                      borderRadius: BorderRadius.circular(12),
                      border: isLightMode
                          ? Border.all(color: borderColor)
                          : null,
                    ),
                    child: Text(
                      currentNiat['transliteration']!,
                      style: TextStyle(
                        color: subTextColor,
                        fontSize: 14,
                        fontStyle: FontStyle.italic,
                        height: 1.4,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Terjemahan",
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
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: cardColor,
                      borderRadius: BorderRadius.circular(12),
                      border: isLightMode
                          ? Border.all(color: borderColor)
                          : null,
                    ),
                    child: Text(
                      currentNiat['translation']!,
                      style: TextStyle(
                        color: subTextColor,
                        fontSize: 14,
                        height: 1.4,
                      ),
                    ),
                  ),
                ],
              );
            })(),
          ] else ...[
            Row(
              children: [
                Icon(Icons.format_list_numbered, color: accentColor, size: 18),
                const SizedBox(width: 8),
                Text(
                  "Urutan Gerakan Shalat Istisqa",
                  style: TextStyle(
                    color: accentColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            ..._tataCaraData.map(
              (step) => Container(
                margin: const EdgeInsets.only(bottom: 16),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: cardColor,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: isLightMode ? borderColor : Colors.white12,
                  ),
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
              ),
            ),
          ],
          const SizedBox(height: 24),
          Row(
            children: [
              Icon(Icons.info_outline, color: accentColor, size: 18),
              const SizedBox(width: 6),
              Text(
                "Keterangan",
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
                    ? borderColor
                    : Colors.teal.withValues(alpha: 0.2),
              ),
            ),
            child: Text(
              "Shalat Istisqa adalah shalat sunnah dua rakaat yang dilaksanakan secara berjamaah di lapangan terbuka untuk memohon kepada Allah SWT agar diturunkan hujan pada saat terjadi bencana kekeringan atau kemarau yang berkepanjangan.",
              style: TextStyle(color: subTextColor, fontSize: 13, height: 1.5),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChip(String label, Color bg, Color textCol) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
    decoration: BoxDecoration(
      color: bg,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Text(label, style: TextStyle(color: textCol, fontSize: 11)),
  );

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
              color: mainTxt.withValues(alpha: 0.9),
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
