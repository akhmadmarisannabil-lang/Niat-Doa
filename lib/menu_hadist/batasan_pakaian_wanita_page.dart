import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';

class BatasanPakaianWanitaPage extends StatelessWidget {
  const BatasanPakaianWanitaPage({super.key});

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
            '«قَالَ يَا أَسْمَاءُ إِنَّ الْمَرْأَةَ إِذَا بَلَغَتِ الْمَحِيضَ لَمْ تَصْلُحْ أَنْ يُرَى مِنْهَا إِلاَّ هَذَا وَهَذَا وَأَشَارَ إِلَى وَجْهِهِ وَكَفَّيْهِ»',
        'indo':
            'Artinya : Wahai Asma’, sesungguhnya seorang wanita, apabila telah balig (mengalami haid), tidak layak tampak dari tubuhnya kecuali ini dan ini (seraya menunjuk muka dan telapak tangannya). (HR Abu Dawud).',
      },
      {
        'arabic':
            '«قَالَتْ أَمَرَنَا رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ أَنْ نُخْرِجَهُنَّ فِي الْفِطْرِ وَالأَضْحَى الْعَوَاتِقَ وَالْحُيَّضَ وَذَوَاتِ الْخُدُورِ فَأَمَّا الْحُيَّضُ فَيَعْتَزِلْنَ الصَّلاَةَ وَيَشْهَدْنَ الْخَيْرَ وَدَعْوَةَ الْمُسْلِمِينَ قُلْتُ يَا رَسُولَ اللهِ إِحْدَانَا لاَ يَكُونُ لَهَا جِلْبَابٌ قَالَ لِتُلْبِسْهَا أُخْتُهَا مِنْ جِلْبَابِهَا»',
        'indo':
            'Artinya : Kami, para wanita, diperintahkan oleh Rasulullah untuk keluar pada saat Idul Fitri dan Idul Adha, baik para gadis, wanita yang sedang haid, maupun gadis-gadis pingitan. Wanita yang sedang haid diperintahkan meninggalkan shalat serta menyaksikan kebaikan dan dakwah (syiar) kaum Muslim. Aku bertanya, “ Ya Rasulullah, salah seorang di antara kami ada yang tidak memiliki jilbab. Rasulullah saw. bersabda: Hendaklah saudaranya meminjamkan jilbabnya.” (HR Muslim).',
      },
      {
        'arabic': '',
        'indo':
            'Dan berkata A’mas dari Said bin jubair dari Ibnu abbas: Dan jangan menampakkan perhiasan kecuali apa-apa yang boleh nampak darinya, yaitu wajahnya dan telapak tangannya dan cincinnya (jarinya).',
      },
      {
        'arabic': '',
        'indo':
            'Anas RA meriwayatkan bahwa Rasulullah Shalallahu alaihi wa aalihi wa shahbihi wa salam pernah mendatangi putrinya Fatimah Az-Zahra (ra) bersama seorang hamba sahaya yang telah diberikannya kepada putrinya, sedangkan ketika itu Fatimah mengenakan kain yang jika dengan pakaian tersebut ia menutupi kepalanya, maka kain penutup itu tidak sampai kepada kedua kakinya, and jika kain itu digunakan sebagai penutup kedua kakinya maka kepalanya tidak tertutupi. Melihat hal demikian Rasulullah Shalallahu alahi wa aalihi wa shahbihi wa salam bersabda, “Hal itu tidak masalah engkau mengenakan kain penutup tersebut, karena yang ada di hadapanmu hanyalah ayah dan budak sahayamu.”',
      },
      {
        'arabic': '',
        'indo':
            'Diriwayatkan dari Bahaz bin Hakim dari kakeknya yang pernah bertanya kepada Rasulullah, “Wahai Rasulullah, bagian manakah dari ‘aurat kami yang boleh kami tutupi dan kami biarkan tampak?” Rasulullah menjawab, “Jagalah dan jangan kau perlihatkan ‘auratmu kecuali kepada istrimu atau kepada budak sahayamu.” HR. Abu Dawud dan At- Turmudzi',
      },
      {
        'arabic': '',
        'indo':
            'Dari Abu Said Al-Khudri diriwayatkan bahwa suatu saat Nabi pernah bersabda, “Seorang pria tidak diperkenankan melihat ‘aurat wanita, begitupula wanita tidak boleh melihat ‘aurat wanita sesamanya.” HR. Muslim, Abu Daud dan At-Turmdzi.',
      },
      {
        'arabic': '',
        'indo':
            'Diriwayatkan bahwa Sayyidina Ali RA pernah berkata, “Aku menghadiahkan kepada Nabi Shalallahu alaihi wa aalihi wa shahbihi wa salam sebuah pakaian yang mengandung campuran kain sutera. Nabi kemudian mengembalikannya lagi kepadaku maka aku pun memakainya. Lantas aku melihat kemurkaan tampak pada wajah Nabi Rasulullah Shalallahu alaihi wa aalihi wa shahbihi wa salam seraya bersabda, “Sesungguhnya aku tidak mengembalikannya kepadamu bukan untuk kau pakai, melainkan untuk kau potong-potong lalu kau jadikan sebagai kerudung bagi kaum wanita.” Hadits ini disepakati keshahihannya.',
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
          'Hadist Tentang Batasan Pakaian Wanita',
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
