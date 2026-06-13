import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';

class KikirPelitPage extends StatelessWidget {
  const KikirPelitPage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final bool isDarkMode = !themeProvider.isLightTheme;

    final Color bgColor = isDarkMode
        ? const Color(0xff090f16)
        : const Color(0xfff5f7fa);
    final Color cardColor = isDarkMode ? const Color(0xff111a24) : Colors.white;
    final Color mainTextColor = isDarkMode
        ? Colors.white
        : const Color(0xff1e293b);
    final Color subTextColor = isDarkMode
        ? Colors.white70
        : const Color(0xff475569);
    final Color dividerColor = isDarkMode
        ? Colors.white10
        : const Color(0xffe2e8f0);

    final List<Map<String, String>> kontenHadits = [
      {
        'arabic':
            'قَالَ رَسُولُ اللهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ: البَخِيلُ الَّذِي مَنْ ذُكِرْتُ عِنْدَهُ فَلَمْ يُصَلِّ عَلَيَّ. رواه الترمذي.',
        'indo':
            'Rasulullah saw. bersabda, \"Orang yang sangat pelit adalah orang yang ketika namaku disebut di sampingnya, ia tidak mau membaca shalawat kepadaku.\" (H.R. At-Tirmidzi).',
      },
      {
        'arabic':
            'عَنْ عَبْدِ اللَّهِ بْنِ عَمْرِو بْنِ الْعَاصِ أَنَّهُ سَمِعَ النَّبِىَّ -صلى الله عليه وسلم- يَقُولُ إِذَا سَمِعْتُمُ الْمُؤَذِّنَ فَقُولُوا مِثْلَ مَا يَقُولُ ثُمَّ صَلُّوا عَلَىَّ فَإِنَّهُ مَنْ صَلَّى عَلَىَّ صَلاَةً صَلَّى اللَّهُ عَلَيْهِ بِهَا عَشْرًا ثُمَّ سَلُوا اللَّهَ لِىَ الْوَسِيلَةَ فَإِنَّهَا مَنْزِلَةٌ فِى الْجَنَّةِ لاَ تَنْبَغِى إِلاَّ لِعَبْدٍ مِنْ عِبَادِ اللَّهِ وَأَرْجُو أَنْ أَكُونَ أَنَا هُوَ فَمَنْ سَأَلَ لِىَ الْوَسِيلَةَ حَلَّتْ لَهُ الشَّفَاعَةُ . رواه مسلم.',
        'indo':
            'Dari Abdullah bin Amru bin Ash, bahwasannya ia pernah mendengar Nabi saw. bersabda, \"Jika kalian mendengarkan seorang muadzin (adzan), maka ucapkanlah seperti apa yang ia ucapkan, kemudian bershalawatlah kepadaku, karena sungguh siapa yang membaca shalawat untukku satu kali shalawat, maka Allah akan bershalawat untuknya (merahmatinya) sepuluh kali. Kemudian, mintalah kalian kepada Allah untukku sebuah wasilah (perantara), maka sungguh hal itu adalah tempat di surga yang tidak diperkenankan (menempatinya) kecuali untuk seorang hamba dari hamba-hamba Allah. Dan aku berharap aku lah yang mendapatkannya. Maka siapa yang memintakan wasilah untukku, ia halal mendapatkan syafaat.\" (HR. Muslim).',
      },
      {
        'arabic': '',
        'indo':
            'Rasulullah SAW bersabda: \"Hati-hatilah dari sifat kikir karena sesungguhnya ia telah menghancurkan umat-umat sebelum kalian.\" (H.R. Muslim)',
      },
      {
        'arabic': '',
        'indo':
            '\"Tidak akan masuk surga orang-orang yang menipu, bakhil (kikir) dan orang-orang yang buruk mengurus miliknya.\" (H.R. At-Tirmidzi)',
      },
      {
        'arabic': '',
        'indo':
            '\"Dan orang-orang yang bakhil (kikir) itu jauh dari Allah, jauh dari manusia, jauh dari surga dan dekat pada neraka.\" (H.R. At-Tirmidzi)',
      },
      {
        'arabic': '',
        'indo':
            'Rasulullah SAW bersabda: \"Tidak ada penyakit (hati) yang lebih berbahaya dari sifat kikir.\"',
      },
      // Tambahkan hadits lain sesuai kebutuhan
    ];

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: !isDarkMode ? Colors.black87 : Colors.white70,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Hadist Tentang Kikir',
          style: TextStyle(
            color: mainTextColor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: cardColor,
            borderRadius: BorderRadius.circular(12),
            border: !isDarkMode ? Border.all(color: dividerColor) : null,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: kontenHadits.asMap().entries.map((entry) {
              final int idx = entry.key;
              final Map<String, String> item = entry.value;
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  if (item['arabic']!.isNotEmpty) ...[
                    Text(
                      item['arabic']!,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.amiri(
                        color: mainTextColor,
                        fontSize: 22,
                        height: 2.2,
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                  Text(
                    item['indo']!,
                    style: TextStyle(
                      color: subTextColor,
                      fontSize: 14,
                      height: 1.5,
                    ),
                  ),
                  if (idx < kontenHadits.length - 1) ...[
                    const SizedBox(height: 24),
                    Divider(color: dividerColor, thickness: 1),
                    const SizedBox(height: 24),
                  ],
                ],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
