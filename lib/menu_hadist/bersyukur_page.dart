import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';

class BersyukurPage extends StatelessWidget {
  const BersyukurPage({super.key});

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
            'قَا اللهُ تَعَالىَ : يَاابْنَ اَدَمَ, اِنَّكَ مَاذَكَرْتَنِى شَكَرْتَنِى, وَاِذَامَانَسِيْتَنِى كَفَرْتَنِى (رواه الطبرانى عن ابى هريرة)',
        'indo':
            '“Allah berfirman dalam hadits qudsi-Nya: “wahai anak Adam, bahwa selama engkau mengingat Aku, berarti engkau mensyukuri Aku, dan apabila engkau melupakan Aku, berarti engkau telah mendurhakai Aku!”. (H.R Thabrani)',
      },
      {
        'arabic': 'وَمَنْ لاَيَشْكُرِ النَّاسَ لاَيَشْكُرِ اللهَ',
        'indo':
            '“barang siapa yang tidak bersyukur kepada manusia, berarti ia tidak bersyukur kepada Allah”. (H.R Ahmad dan Baihaqi)',
      },
      {
        'arabic':
            'عن ابى عبد الله عليه السلام قال : قال رسول الله صلى الله عليه وسلم : الطاعم الشكر له من الأجر كأجر الصائم المحتسب. والمعافى الشكر له من الأجر كأجر المبتلى الصبر. والمعطى الشّكر له من الأجر كأجر المحروم القانعز',
        'indo':
            '“Dari Abu Abdillah a.s, beliau berkata, “bahwa Rasulullah saw. bersabda, “orang yang menyantap makanan dengan rasa syukur, maka dia diberi pahala, seperti orang yang berpuasa menjaga dirinya. Orang yang sehat yang mensyukuri kesehatannya, maka dia diberi pahala, orang yang menanggung penderitaan (jasmani)-nya dengan sabar. Dan orang yang memberikan dengan rasa syukur, maka dia mendapat pahala yang sama dengan orang yang menanggung kerugian dari menjaga diri”. (H.R Abu Hurairah dan al-Qudha’i)',
      },
      {
        'arabic':
            'عَنْ أَبِي صَالِحٍ عَنْ أَبِي هُرَيْرَةَ قَالَ :قَالَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ انْظُرُوا إِلَى مَنْ أَسْفَلَ مِنْكُمْ وَلَا تَنْظُرُوا إِلَى مَنْ هُوَ فَوْقَكُمْ فَهُوَ أَجْدَرُ أَنْ لَا تَزْدَرُوا نِعْمَةَ اللَّهِ قَالَ أَبُو مُعَاوِيَةَ عَلَيْكُمْ',
        'indo':
            'Bersumber dari Abu Hurairah, dia berkata bahwa Rasulullah Shallallah Alaihi wa Sallam bersabda, “Perhatikanlah orang yang statusnya berada di bawah kalian, dan janganlah kalian memperhatikan orang statusnya berada di atas kalian. Dengan begitu maka kalian tidak akan menganggap kecil nikmat Allah yang kalian terima.”',
      },
      {
        'arabic': 'الطَّاعِمُ الشَّاكِرُ بِمَنْزِلَةِ الصَّائِمُ الصَّابِرِ',
        'indo':
            'Orang makan yang bersyukur adalah sederajat dengan orang bershaum yang sabar. (HR. Bukhari, Tirmidzi, Ibnu Majah, dan Ibnu Hibban)',
      },
      {
        'arabic':
            'وروى التر مذى و قا ل حسن غريب : من اعطى عطا ء فوجد فليجز به فان لم jجد فليثن فان من اثنى فقد شكر ومن كتم فقد كفر .',
        'indo':
            '“Barang siapa yang diberikan suatu pemberian dan merasa cukup atas pemberian tersebut, maka hendaklah dia membalasnya. Dan jika dia tak merasa cukup maka hendaklah dia memuji, sebab sesungguhnya perbuatan memuji itu merupakan tanda syukur dan barang siapa yang hanya diam saja maka sungguh dia telah kufur”. (H.R.Turmudzi)',
      },
      {
        'arabic':
            'عَنِ ابْنِ عَبَّاسٍ رَضِيَ الَّلهُ عَنْهُمَا قَالَ: قَالَ النَّبِيُّ صَلَّى الَّلهُ عَلَيْهِ وَسَلَّمَ: نِعْمَتَانِ مَغْبُوْنٌ فِيْهِمَا كَشِيْرٌ مِنْ النَّاَسِ الصِّحَّةُ وَاْلفَرَاغُ',
        'indo':
            '“Dari Ibnu Abbas, dia berkata : Nabi SAW bersabda : “Dua kenikmatan, kebanyakan manusia tertipu pada keduanya, yaitu kesehatan dan waktu (HR Bukhari).',
      },
      {
        'arabic':
            'فَإِنْعَجِزْتُمْعَنْمُكَافَأَتِهِفَادْعُوْالَهُحَتَّتَعْلَمُوْاأَنْقَدْشَكَرْتُمْفَإِنَّاللّٰهَيُحِبُّالشَّاكِرِيْنَ',
        'indo':
            'Artinya : “Jika engkau tidak mampu membalasnya maka doakan dia hingga engkau merasa bahwa engkau telah mensyukuri kebaikan tersebut, karena sesungguhnya Allah SWT sangat cinta kepada orang-orang yang bersyukur”. (Hadits Shahih Abu Dawud).',
      },
      {
        'arabic': '',
        'indo':
            'Dua hal apabila dimiliki oleh seseorang dia dicatat oleh Allah sebagai orang yang bersyukur dan sabar. Dalam urusan agama (ilmu dan ibadah) dia melihat kepada yang lebih tinggi lalu meniru dan mencontohnya. Dalam urusan dunia dia melihat kepada yang lebih bawah, lalu bersyukur kepada Allah bahwa dia masih diberi kelebihan.” (HR. Tirmidzi)',
      },
      {
        'arabic': '',
        'indo':
            'Sesungguhnya bersyukur akan menambah kenikmatan Allah, dan perbanyaklah berdoa. (HR.Ath-Thabrani)',
      },
      {
        'arabic': '',
        'indo':
            'Iman terbagi dua separuh dalam sabar dan separuh dalam syukur.(HR.Al-Baikaqi)',
      },
      {
        'arabic': '',
        'indo':
            'Seorang mukmin terbaik itu tentu banyak bersyukur ketika dalam kegembiraan dan banyak bersabar ketika dalam kesedihan (HR Muslim)',
      },
      {
        'arabic': '',
        'indo':
            'Dari Abu Musa Al-Asy’ari ra. bahwasanya Rasulullah saw. bersabda: “Apabila anak seseorang meninggal dunia, maka Allah bertanya kepada malaikat-Nya:Kamu telah mencabut nyawa anak hamba-Ku? Para malaikat menjawab: Ya. Allah bertanya lagi:Kamu telah mencabut buah-hatinya? Para malaikat menjawab: Ya. Allah bertanya: Apakah yang diucapkan oleh hamba hamba-Ku? Para malaikat menjawab:Ia memuji-Mu dan mengucap Inna lillahi wa inna ilaihi raajiun (Sesungguhnya segala sesuatu berasal dari Allah dan sesungguhnya akan kembali kepada-Nya). Kemudian Allah Ta’ala berfirman:Bangunlah sebuah rumah di sorga untuk para hamba-Ku itu dan namailah Bait Al-Hamd.” (HR. Turmudzi)',
      },
      {
        'arabic': '',
        'indo':
            'Sesungguhnya yang berkecukupan adalah orang yang hatinya selalu merasa cukup, dan orang fakir adalah orang yang hatinya selalu rakus. (HR. Ibnu Hibban)',
      },
      {
        'arabic': '',
        'indo':
            'Rasulullah Mengagumi seorang mukmin yang bila ia memperoleh kebaikan, ia memuji Allah dan bersyukur. Bila ia ditimpa musibah, ia memuji Allah dan ia bersabar. ( HR.Ahmad)',
      },
      {
        'arabic': '',
        'indo':
            'Sesungguhnya rezeki mencari seorang hamba sebagaimana ajal mencarinya.(HR.Ath-Thabrani)',
      },
      {
        'arabic': '',
        'indo':
            'Barangsiapa diuji lalu bersabar, dikaruniai lalu bersyukur, didzalimi lalu memaafkan dan mendzalimi lalu beristigfar, maka bagi mereka keselamatan dan hidayah (HR Al Baihaqi).',
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
          'Hadist Tentang Bersyukur',
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
