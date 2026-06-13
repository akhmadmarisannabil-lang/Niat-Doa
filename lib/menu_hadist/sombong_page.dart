import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';

class SombongPage extends StatelessWidget {
  const SombongPage({super.key});

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
            'لاَ يَدْخُلُ الْجَنَّةَ مَنْ كَانَ فِي قَلْبِهِ مِثْقَالُ ذَرَّةٍ مِنْ كِبْرٍ. (رواه مسلم)',
        'indo':
            'Tidak akan masuk surga seorang yang dalam hatinya ada sebiji dzarrah dari kesombongan. (HR. Muslim)',
      },
      {
        'arabic': 'الْكِبْرُ بَطَرُ الْحَقِّ وَغَمْطُ النَّاسِ',
        'indo':
            '“Kesombongan adalah menolak kebenaran dan merendahkan manusia”. [HR. Muslim, no. 2749, dari ‘Abdullah bin Mas’ûd]',
      },
      {
        'arabic':
            'بَيْنَمَا رَجُلٌ يَتَبَخْتَرُ يَمْشِي فِي بُرْدَيْهِ قَدْ أَعْجَبَتْهُ نَفْسُهُ فَخَسَفَ اللَّهُ بِهِ الْأَرْضَ فَهُوَ يَتَجَلْجَلُ فِيهَا إِلَى يَوْمِ الْقِيَامَةِ',
        'indo':
            '“Ketika seorang laki-laki sedang bergaya dengan kesombongan berjalan dengan mengenakan dua burdahnya (jenis pakaian bergaris-garis; atau pakaian yang terbuat dari wol hitam), dia mengagumi dirinya, lalu Allah membenamkannya di dalam bumi, maka dia selalu terbenam ke bawah di dalam bumi sampai hari kiamat”. [HR. Bukhari, no. 5789; Muslim, no. 2088; dan ini lafazh Muslim]',
      },
      {
        'arabic':
            'عَنِ ابْنِ عُمَرَ رض قَالَ: سَمِعْتُ رَسُوْلَ اللهِ ص يَقُوْلُ: مَنْ تَعَظَّمَ فِى نَفْسِهِ اَوِ اخْتَالَ فِى مِشْيَتِهِ لَقِيَ اللهَ تَبَارَكَ وَ تَعَالَى وَ هُوَ عَلَيْهِ غَضْبَانُ. الطبرانى فى الكبير فى الترغيب و الترهيب 3: 569',
        'indo':
            'Dari Ibnu Umar RA ia berkata : Saya mendengar Rasulullah SAW bersabda, \"Barangsiapa merasa besar pada dirinya atau sombong dalam berjalannya, pasti akan bertemu Allah tabaaroka wa ta\'aalaa murka kepadanya\". [HR. Thabarani di dalam Al-Kabir, dalam Targhib wat Tarhib juz 3, hal. 569]',
      },
      {
        'arabic':
            'إِنَّ اللهَ تَعَالَى يَقُوْلُ: إِنَّ الْعِزَّ إِزَارِيْ وَالْكِبْرِيَاءَ رِدَائِيْ فَمَنْ نَازِعُنِيْ فِيْهِمَا عَذَّبْتُهُ. (رواه الطبراني)',
        'indo':
            'Dalam hadits qudsi yang diriwayatkan dari Ali bin Abi Thalib رضي الله عنه, Rasulullah صلى الله عليه وسلم bersabda: Sesunguhnya Allah Ta’ala berfirman: “Kemuliaan adalah pakaian-Ku dan sombong adalah selendang-Ku. Barangsiapa yang mengambilnya dariku, Aku Adzab dia. (HR. Muslim)',
      },
      {
        'arabic':
            'ثلاثة لا يكلمهم الله يوم القيامة ولا يزكيهم ولا ينظر إليهم ولهم عذاب أليم: شيخ زان، وملك كذاب، وعائل مستكبر.',
        'indo':
            'Tiga golongan yang Allah tidak akan berbicara dengannya kelak pada Hari Kiamat, tidak membersihkan mereka, dan tidak melihat kepada mereka, serta bagi mereka adzab yang pedih : seorang tua yang berzina, penguasa yang pendusta, orang miskin yang sombong.',
      },
      {
        'arabic':
            'إِنَّ أَهْلَ النَّارِ كُلُّ جَعْظَرِيٍّ جَوَّاظٍ مُسْتَكْبِرٍ جَمَّاعٍ مَنَّاعٍ وَأَهْلُ الْجَنَّةِ الضُّعَفَاءُ الْمَغْلُوبُونَ',
        'indo':
            '“Sesungguhnya penduduk neraka adalah semua orang yang kasar lagi keras, orang yang bergaya sombong di dalam jalannya, orang yang bersombong, orang yang banyak mengumpulkan harta, orang yang sangat bakhil. Adapun penduduk sorga adalah orang-orang yang lemah dan terkalahkan”. [Hadits Shahih. Riwayat Ahmad, 2/114; Al-Hakim, 2/499]',
      },
      {
        'arabic':
            'عَنْ عُقْبَةَ بْنِ عَامِرٍ رض اَنَّهُ سَمِعَ رَسُوْلَ اللهِ ص يَقُوْلُ: مَا مِنْ رَجُلٍ يَمُوْتُ حِيْنَ يَمُوْتُ وَ فِى قَلْبِهِ مِثْقَالَ حَبَّةٍ مِنْ خَرْدَلٍ مِنْ كِبْرٍ تَحِلُّ لَهُ اْلجَنَّةُ اَنْ يَرِيْحَ رِيْحَهَا وَ لاَ يَرَاهَا. احمد فى الترغيب و الترهيب 3: 566',
        'indo':
            'Dari Uqbah bin \'Amir RA, sesungguhnya ia mendengar Rasulullah SAW, bersabda, \"Orang yang meninggal dunia, dan ketika ia meninggal itu di dalam hatinya masih ada sebesar biji sawi dari sombong, maka tidaklah halal baginya surga, tidak mencium baunya dan tidak pula melihatnya\". [HR. Ahmad, dalam Targhib wat Tarhib juz 3, hal. 566]',
      },
      {
        'arabic':
            'أَنَّ رَجُلاً أَكَلَ عِنْدَ رَسُولِ اللَّهِ -صلى الله عليه وسلم- بِشِمَالِهِ فَقَالَ « كُلْ بِيَمِينِكَ ». قَالَ لاَ أَسْتَطِيعُ قَالَ « لاَ اسْتَطَعْتَ ». مَا مَنَعَهُ إِلاَّ الْكِبْرُ. قَالَ فَمَا رَفَعَهَا إِلَى فِيهِ.',
        'indo':
            '“Ada seorang laki-laki makan di samping Rasulullah shallallahu ‘alaihi wa sallam dengan tangan kirinya. Lalu Rasulullah shallallahu ‘alaihi wa sallam bersabda, “Makanlah dengan tangan kananmu!” Orang tersebut malah menjawab, “Aku tidak bisa.” Beliau bersabda, “Apakah kamu tidak bisa?” -dia menolaknya karena sombong-. Setelah itu tangannya tidak bisa sampai ke mulutnya” (H.R. Muslim no. 3766).',
      },
      {
        'arabic':
            'لَا يَدْخُلُ الْجَنَّةَ مَنْ كَانَ فِي قَلْبِهِ مِثْقَالُ ذَرَّةٍ مِنْ كِبْرٍ قَالَ رَجُلٌ إِنَّ الرَّجُلَ يُحِبُّ أَنْ يَكُونَ ثَوْبُهُ حَسَنًا وَنَعْلُهُ حَسَنَةً قَالَ إِنَّ اللَّهَ جَمِيلٌ يُحِبُّ الْجَمَالَ الْكِبْرُ بَطَرُ الْحَقِّ وَغَمْطُ النَّاسِ',
        'indo':
            '“Tidak akan masuk surga seseorang yang di dalam hatinya terdapat kesombongan sebesar biji sawi.” Ada seseorang yang bertanya, “Bagaimana dengan seorang yang suka memakai baju dan sandal yang bagus?” Beliau menjawab, “Sesungguhnya Alloh itu indah dan menyukai keindahan. Sombong adalah menolak kebenaran dan meremehkan orang lain.“ (HR. Muslim)',
      },
      {
        'arabic':
            'عَنْ فَضَالَةَ بْن عُبَيْدٍ رض اَنَّ رَسُوْلَ اللهِ ص قَالَ: ثَلاَثَةٌ لاَ يُسْأَلُ عَنْهُمْ: رَجُلٌ نَازَعَ اللهَ رِدَاءَهُ، فَاِنَّ رِدَاءَهُ اْلكِبْرُ، وَ اِزَارَهُ اْلعِزُّ، وَ رَجُلٌ فِى شَكّ مِنْ اَمْرِ اللهِ، وَ اْلقُنُوْطُ مِنْ رَحْمَتِهِ. الطبرانى فى الترغيب و الترهيب 3: 562',
        'indo':
            'Dari Fadlalah bin \'Ubaid RA ia berkata : Sesungguhnya Rasulullah SAW bersabda, \"Ada tiga golongan yang tidak perlu ditanya tentang mereka itu (dan langsung dimasukkan neraka) yaitu : 1. Orang yang mencabut selendang Allah, sesungguhnya selendang Allah itu adalah sombong dan pakaian-Nya adalah kebesaran, 2. Orang yang ragu-ragu terhadap perintah Allah dan, 3. Orang yang putus asa dari rahmat Allah\". [HR. Thabarani, dalam Tarhib wat Targhib juz 3, hal. 562]',
      },
      {
        'arabic':
            'يُحْشَرُ الْمُتَكَبِّرُونَ يَوْمَ الْقِيَامَةِ أَمْثَالَ الذَّرِّ فِي صُوَرِ الرِّجَالِ يَغْشَاهُمْ الذُّلُّ مِنْ كُلِّ مَكَانٍ فَيُسَاقُونَ إِلَى سِجْنٍ فِي جَهَنَّمَ يُسَمَّى بُولَسَ تَعْلُوهُمْ نَارُ الْأَنْيَارِ يُسْقَوْنَ مِنْ عُصَارَةِ أَهْلِ النَّارِ طِينَةَ الْخَبَالِ',
        'indo':
            '“Pada hari kiamat orang-orang yang sombong akan digiring dan dikumpulkan seperti semut kecil, di dalam bentuk manusia, kehinaan akan meliputi mereka dari berbagai sisi. Mereka akan digiring menuju sebuah penjara di dalam Jahannam yang namanya Bulas. Api neraka yang sangat panas akan membakar mereka. Mereka akan diminumi nanah penduduk neraka, yaitu thinatul khabal (lumpur kebinasaan)”. [Hadits Hasan. Riwayat Bukhari di dalam al-Adabul Mufrad, no. 557; Tirmidzi, no. 2492; Ahmad, 2/179; dan Nu’aim bin Hammad di dalam Zawaid Az-Zuhd, no. 151]',
      },
      {
        'arabic':
            'وَإِنَّ اللَّهَ أَوْحَى إِلَيَّ أَنْ تَوَاضَعُوا حَتَّى لَا يَفْخَرَ أَحَدٌ عَلَى أَحَدٍ وَلَا يَبْغِ أَحَدٌ عَلَى أَحَدٍ',
        'indo':
            '“Sesungguhnya Allah mewahyukan kepadaku agar kalian bersikap rendah hati hingga tidak seorang pun yang bangga atas yang lain dan tidak ada yang berbuat aniaya terhadap yang lain” (HR Muslim no. 2865).',
      },
      {
        'arabic':
            'عَنْ عِيَاضِ بْنِ حَمَّادٍ رض قَالَ: قَالَ رَسُوْلُ اللهِ ص: اِنَّ اللهَ اَوْحَى اِلَيَّ اَنْ تَوَاضَعُوْا حَتَّى لاَ يَفْخَرَ اَحَدٌ عَلَى اَحَدٍ وَلاَ يَبْغِيَ اَحَدٌ عَلَى اَحَدٍ. مسلم و ابو داود و ابن ماجه فى الترغيب و الترهيب 3: 557',
        'indo':
            'Dari \'Iyadl bin Hammad RA, ia berkata : Rasulullah SAW bersabda, \"Sesungguhnya Allah telah mewahyukan kepada saya agar supaya kamu sekalian bertawadlu\', sehingga seseorang tidak merasa sombong terhadap yang lain dan seseorang tidak pula berbuat dhalim terhadap yang lain\". [HR. Muslim, Abu Dawud dan Ibnu Majah, dalam Targhib wat Tarhib juz 3, hal. 557]',
      },
      {
        'arabic':
            'حَدَّثَنَا حَرْمَلَةُ بْنُ يَحْيَى حَدَّثَنَا ابْنُ وَهْبٍ أَخْبَرَنِي عَمْرُو بْنُ الْحَارِثِ أَنَّ دَرَّاجًا حَدَّثَهُ عَنْ أَبِي الْهَيْثَمِ عَنْ أَبِي سَعِيدٍ عَنْ رَسُولِ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ قَالَ مَنْ يَتَوَاضَعُ لِلَّهِ سُبْحَانَهُ دَرَجَةً يَرْفَعُهُ اللَّهُ بِهِ دَرَجَةً وَمَنْ يَتَكَبَّرُ عَلَى اللَّهِ دَرَجَةً يَضَعُهُ اللَّهُ بِهِ دَرَجَةً حَتَّى يَجْعَلَهُ فِي أَسْفَلِ السَّافِلِينَ',
        'indo':
            'Barangsiapa tawadlu\' (bersikap rendah diri) kepada Allah Subhanah satu derajat, niscaya Allah akan mengangkatnya satu derajat, & barangsiapa bersikap sombong kepada Allah satu derajat, maka Allah akan merendahkan satu derajat hingga derajat yg paling hina. [HR. ibnumajah No.4166].',
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
          'Hadist Tentang Kesombongan',
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
