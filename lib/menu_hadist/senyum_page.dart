import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';

class SenyumPage extends StatelessWidget {
  const SenyumPage({super.key});

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
        'arabic': 'تَبَسُّمُكَ فِي وَجْهِ أَخِيكَ صَدَقَةٌ',
        'indo':
            '“Senyummu di hadapan saudaramu (sesama muslim) adalah (bernilai) sedekah bagimu" (HR. Tirmidzi).',
      },
      {
        'arabic':
            'وَعَنِ الْحَسَنِ رَضِيَ اللَّهُ عَنْهُ عَنِ النَّبيِّ قَالَ: مِنَ الصَّدَقَةِ أَنْ تُسَلِّمَ عَلَى النَّاسِ، وَأَنْتَ طَلِيقُ الْوَجْهِ',
        'indo':
            'Termasuk sedekah adalah engkau mengucapkan salam dengan wajah ceria kepada orang-orang. (HR. Ibnu Abi Dunya)',
      },
      {
        'arabic':
            'لَا تَحْقِرَنَّ مِنَ الْمَعْرُوفِ شَيْئًا، وَلَوْ أَنْ تَلْقَى أَخَاكَ بِوَجْهٍ طَلْقٍ',
        'indo':
            '“Janganlah engkau remehkan kebaikan sedikitpun, meskipun hanya dengan bertemu dengan saudaramu dengan wajah yang berseri”. (H.R. Muslim no 2626).',
      },
      {
        'arabic': '',
        'indo':
            'Dari Jarir bin Abdillah ra dia berkata, “Sejak aku masuk Islam, Rasulullah Saw tidak pernah menolak aku untuk duduk bersama beliau. Dan tidaklah beliau melihatku kecuali beliau tersenyum kepadaku.” (HR. Bukhari dan Muslim).',
      },
      {
        'arabic': '',
        'indo':
            'Dari Abdullah bin Al Harits bin Jaz`i ra dia berkata, “Aku tidak pernah melihat seseorang yang paling banyak senyumannya selain Rasulullah shallallahu ‘alaihi wasallam.” (HR. Tirmidzi)',
      },
      {
        'arabic': '',
        'indo':
            'Jabir bin Samurah ra berkata, ia menceritakan tentang kebiasaan Rasulullah Saw, “Beliau biasanya tidak berdiri dari tempat shalat di mana beliau shalat shubuh padanya kecuali setelah terbit matahari. Apabila matahari telah terbit barulah beliau berdiri. Sementara itu para sahabat bercakap-cakap membicarakan kejadian di masa jahiliyah, lalu mereka tertawa, sedangkan beliau hanya tersenyum.” (HR. Muslim).',
      },
      {
        'arabic': '',
        'indo':
            'Dari Abu Dzarr ra dia berkata, Rasulullah Saw bersabda, “Senyummu kepada saudaramu merupakan sedekah, engkau memerintahkan yang ma’ruf dan melarang dari kemungkaran juga sedekah, engkau menunjukkan jalan kepada orang yang tersesat juga sedekah, engkau menuntun orang yang berpenglihatan kabur juga sedekah, menyingkirkan batu, duri, dan tulang dari jalan merupakan sedekah, dan engkau menuangkan air dari embermu ke ember saudaramu juga sedekah.” (HR. Tirmidzi)',
      },
      {
        'arabic': '',
        'indo':
            'Rasulullah Saw bersabda, “Janganlah sekali-kali engkau menganggap remeh suatu perbuatan baik, meskipun (perbuatan baik itu) dengan engkau menjumpai saudaramu (sesama muslim) dengan wajah yang ceria." (HR. Muslim).',
      },
      {
        'arabic': '',
        'indo':
            '”Suatu hari aku dan para sahabat berjalan bersama-sama Rasulullah s.a.w. Ketika itu baginda memakai selimut dari daerah Najran yang hujungnya agak kasar. Tiba-tiba baginda bertemu dengan seorang Badwi( Arab Pedusunan). Tanpa disangka, lelaki Badwi itu langsung menarik selimut Rasulullah s.a.w dengan kuat sehingga aku melihat kesan merah di bahu baginda. Lelaki Badwi itu dengan kasar berkata, “suruh orangmu memberi harta Allah kepadaku yang engkau simpan sekarang juga!” Kelakuan kasar dan sombong si Badwi tersebut membuatkan para sahabat sangat marah dan ingin mengajarnya. Namun Rasulullah melayan sikap kasar lelaki Badwi itu dengan senyuman dan berkata kepada kami dengan senyum manis pula, “berilah lelaki ini makanan apa sahaja yang dia mahu. Kami lantas memberi si Badwi makanan yang dia pinta. Dan kami tidak jadi mengajar si Badwi kerana senyuman Rasulullah s.a.w.  ( HR at-Tabrani no. 7695 )',
      },
      {
        'arabic': '',
        'indo':
            '”Tidak pernah sekalipun aku melihat Rasulullah s.a.w tertawa terbahak-bahak sehingga kelihatan kerongkongnya. Akan tetapi, tertawanya baginda adalah dengan tersenyum.”( HR al-Bukhari no. 8217)',
      },
      {
        'arabic': '',
        'indo':
            '”Janganlah kamu banyak tertawa kerana banyak tertawa akan mematikan hati.”( HR Ibnu Majah no. 4183 )',
      },
      {
        'arabic': '',
        'indo':
            '“Tertawalah sedikit kerana banyak tertawa itu mematikan hati.”( HR Muslim no. 1499)',
      },
      {
        'arabic': '',
        'indo':
            '“Sesungguhnya banyak tertawa akan mematikan hati dan menghilangkan kharisma seorang Mukmin.”(HR at-Tirmizi no. 2227)',
      },
      {
        'arabic': '',
        'indo':
            'Diriwayatkan At-Tirmidzi, Al-Husein Radliyallahu’anhu, cucu Rasulullah SAW menuturkan keluhuran budi pekerti beliau. Ia berkata, ”Aku bertanya kepada Ayahku tentang adab dan etika Rasulullah Shallahu ‘alaihi wa Sallam terhadap orang-orang yang bergaul dengan beliau. Ayahku menuturkan, ‘Beliau Shallahu ‘alaihi wa Sallam senantiasa tersenyum, berbudi pekerti lagi rendah hati, beliau bukanlah seorang yang kasar, tidak suka berteriak-teriak, bukan tukang cela, tidak suka mencela makanan yang tidak disukainya. Siapa saja mengharapkan pasti tidak akan kecewa dan siapa saja yang memenuhi undangannya pasti akan senantiasa puas…..” (Riwayat At-Tirmidzi)',
      },
      {
        'arabic': '',
        'indo':
            'Aisyah Radliyallahu’anha mengungkapkan, ”Adalah Rasulullah Shallahu ‘alaihi wa Sallam ketika bersama istri-istrinya merupakan seorang suami yang paling luwes dan semulia-mulia manusia yang dipenuhi dengan gelak tawa dan senyum simpul.” (Hadits Riwayat Ibnu Asakir)',
      },
      {
        'arabic': '',
        'indo':
            'Rasulullah shallallahu ‘alaihi wa sallam bersabda, “Kamu tidak akan mampu berbuat baik kepada semua manusia denga hartamu, maka hendaknya kebaikanmu sampai kepada mereka dengan keceriaan (pada) wajahmu.” (H.R. al-Hakim (1/212)',
      },
      {
        'arabic': '',
        'indo':
            '”Celakalah manusia yang berbicara padahal dia berbohong hanya sekadar untuk membuat orang lain ketawa. Celakalah dia dan celakalah dia.”( HR Abu Daud no. 4454).',
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
          'Hadist Tentang Senyum',
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
