import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';

class KebersihanPage extends StatelessWidget {
  const KebersihanPage({super.key});

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
        'arabic': 'اَلنَّظَافَةٌ مِنَ اﻻِيْمَانِ٠﴿ﺮﻮﺍﻩ ﺍحمد',
        'indo': '“Kebersihan itu sebagian dari iman”. (HR. Ahmad)',
      },
      {
        'arabic':
            'عَنْ سَعْدِبْنِ اَبِى وَقَّاصٍ عَنْ اَبِيْهِ عَنِ النَّبِيِّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ اِنَّ اللهَ طَيِّبٌ يُحِبُّ الطَّيِّبَ نَظِيْفٌ يُحِبُّ النَّظَافَةَ كَرِيْمٌ يُحِبُّ الْكَرَمَ جَوَادٌيُحِبُّ الْجَوَادَفَنَظِّفُوْااَفْنَيْتَكُمْ',
        'indo':
            '”Sesungguhnya Allah Ta’ala itu baik (dan) menyukai kebaikan, bersih (dan) menyukai kebersihan, mulia (dan) menyukai kemuliaan, bagus (dan) menyukai kebagusan. Oleh sebab itu, bersihkanlah lingkunganmu”. (HR. At- Turmudzi)',
      },
      {
        'arabic':
            'اَنَّ رَسُوْلَ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ قَالَ: بَيْنَمَارَجُلٌ يَمْشِى بِطَرِيْقٍ وَجَدَ غُصْنَ شَوْكٍ فَأَخَذَهُ فَشَكَرَاللهُ لَهُ فَغَفَرَلَهُ',
        'indo':
            '“Bahwasanya Rasulullah saw bersabda, ”Ketika seorang laki-laki sedang berjalan di jalan, ia menemukan dahan berduri, maka ia mengambilnya (karena mengganggunya). Lalu Allah swt berterima kasih kepadanya dan mengampuni dosanya”. (HR. Bukhari)',
      },
      {
        'arabic':
            'اَلاِسْلاَمُ نَظِيْفٌ فَتَنَظَّفُوْافَاِنَّهُ لاَيَدْخُلُ الْجَنَّةَ اِلاَّ نَظِيْفٌ',
        'indo':
            '“Agama Islam adalah agama yang bersih dan suci. Karena itu kamu harus menjaga kebersihan. Maka sesungguhnya tidak akan masuk surga kecuali hanya orang-orang yang suci.”(HR. Al-Baihaqi)',
      },
      {
        'arabic':
            'وقد أمر النبي لنا ببناء المساجد في أماكن إقامتهم وتنظيفها والاحتفاظ بها نظرا العطر',
        'indo':
            'Dari A’isyah RA berkata : Rasulullah SAW telah diperintahkan kepada kami untuk membangun masjid di tempat-tempat tinggal dan agar selalu dibersihkan serta diberi wangi-wangian. (HR Ahmad, Tirmidzi, lbn Majah dan Abu Dawud).',
      },
      {
        'arabic':
            'عَنْ اَبِى مَالِكْ الْحاَرِثِ بْنِ عَاصِمِ اْلاَشْعَرِيِّ قَالَ:قَالَ رَسُوْلُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ : الطَّهُوْرُ شَطْرُاْلاِيْمَانِ وَالْحَمْدُللهِ تَمْلاَءَ الْمِيْزَانِ وَسُبْحَانَ اللهِ وَالْحَمْدُ للهِ تَمْلانَ اَوْ تَمْلاَءَ مَابَيْنَ السَّمَاءِ وَاْلاَرْضِ وَالصَّلاَةُ نُوْرٌوَالصَّدَقَةُبُرْهَانٌ وَالصَّبْرُضِيَاءٌوَالْقُرْأَنُ حُجَّةٌ لَكَ هُوَ عَلَيْكَ اَلُ الناَّسِ يَغْدُو فَبَائِعُ نَفْسِهِ فَمُعْتِقُهَااَوْمُوْبِقُهَا',
        'indo':
            'Dari Abu Malik Al-As’ari, Rasulullah bersabda: “Bersuci merupakan sebagian dari iman, membaca hamdalah dapat memenuhi timbangan amal, membaca tasbih dapat memenuhi seisi langit dan bumi, shalat sunnah merupakan cahaya, sedekah merupakan petunjuk, sabar adalah sinar yang memancar, dan Al-Quran adalah hujjah dalam pembicaraan. Setiap manusia di pagi hari hakikatnya harus memperjual belikan dirinya. Ada kala ia selamat dari maksiat dan ada kalanya ia terseret dalam maksiat.”',
      },
      {
        'arabic':
            'عَنْ أَبِي سَعِيدٍ قَالَ قَالَ رَسُولُ اللَّهِ صَلَّى اللَّهم عَلَيْهِ وَسَلَّمَ مِفْتَاحُ الصَّلاةِ الطُّهُورُ (رواه التيرمدى: 221)',
        'indo':
            'Dari Abu Sa\'id berkata, Rasulullah saw. Bersabda, “Kunci dari salat adalah bersuci.” (H.R. at-Tirmizi: 221)',
      },
      {
        'arabic': '',
        'indo':
            '“Seandainya tidak memberatkan umatku, sungguh aku akan memerintahkan mereka bersiwak setiap kali berwudhu.” (HR. Bukhari)',
      },
      {
        'arabic': '',
        'indo':
            '“Agama Islam itu adalah agama yang bersih atau suci, maka hendaklah kamu menjaga kebersihan. Sesungguhnya tidak akan masuk surga kecuali orang-orang yang suci”. (HR. Baihaqiy)',
      },
      {
        'arabic': '',
        'indo':
            '“Waspadalah dengan dua orang yang terkena laknat.” Mereka berkata, “Siapakah yang kena laknat tersebut?” Beliau menjawab, “Orang yang buang hajat di tempat orang lalu lalang atau di tempat mereka bernaung.” (HR. Muslim no. 269)',
      },
      {
        'arabic': '',
        'indo':
            'Bahwasanya Rasulullah saw bersabda, ”Ketika seorang laki-laki sedang berjalan di jalan, ia menemukan dahan berduri, maka ia mengambilnya (karena mengganggunya). Lalu Allah swt berterima kasih kepadanya dan mengampuni dosanya”. (HR. Bukhari)',
      },
      {
        'arabic': '',
        'indo':
            '“Bersuci [thaharah] itu setengah daripada iman.”(HR. Ahmad, Muslim, dan Tirmidzi)',
      },
      {
        'arabic': '',
        'indo':
            '“Bersiwak itu akan membuat mulut bersih dan diridhoi oleh Allah.” (Shohih, HR. An Nasa’i, Ahmad, dll)',
      },
      {
        'arabic': '',
        'indo':
            'Diriwayatkan dari Malik Al Asy’ari dia berkata, Rasulullah saw. bersabda : Kebersihan adalah sebagian dari iman dan bacaan hamdalah dapat memenuhi mizan (timbangan), dan bacaan subhanallahi walhamdulillah memenuhi kolong langit dan bumi, dan shalat adalah cahaya dan shadaqah adalah pelita, dan sabar adalah sinar, dan Al Quran adalah pedoman bagimu.” (HR. Muslim)',
      },
      {
        'arabic': '',
        'indo':
            '“Tidaklah seseorang mandi dan bersuci semampunya pada hari Jum’at, memakai minyak rambut atau memakai minyak wangi di rumahnya kemudian keluar lalu dia tidak memisahkan antara dua orang (dalam shaff) kemudian mengerjakan shalat dan selanjutnya dia diam (tidak berbicara) jika khatib berkhutbah, melainkan akan diberikan ampunan kepadanya (atas kesalahan yang terjadi) antara Jum’atnya itu dengan Jum’at yang berikut-nya.” [Shahih: Diriwayatkan oleh al-Bukhari (no. 883)]',
      },
      {
        'arabic': '',
        'indo':
            '“Ada lima macam fitrah , yaitu : khitan, mencukur bulu kemaluan, memotong kumis, memotong kuku, dan mencabut bulu ketiak.” (HR. Bukhari no. 5891 dan Muslim no. 258)',
      },
      {
        'arabic': '',
        'indo':
            'Dari A’isyah RA berkata : Rasulullah SAW telah memerintahkan kepada kami untuk membangun masjid di tempat-tempat tinggal dan agar selalu dibersihkan serta diberi wangi-wangian. (HR Ahmad, Tirmidzi, lbn Majah dan Abu Dawud)',
      },
      {
        'arabic': '',
        'indo':
            'Dari Aisyah r.a, Rasulullah SAW bersabda : Islam itu agama yang bersih, maka hendaknya kamu menjadi orang yang bersih, sesungguhnya tidak akan masuk surga kecuali orang-orang yang bersih (H.R.Tabrani)',
      },
      {
        'arabic': '',
        'indo':
            '“Tidak ada seorang Muslim yang tidur dalam keadaan suci/bersih kemudian ia bangun (shalat malam) memohon kepada Allah akan kebaikan di dunia dan di akhirat, kecuali Allah memberikannya kepada orang tersebut.” (HR Abu Dawud)',
      },
      {
        'arabic': '',
        'indo':
            'Dari Abi Huraerah, Rasul bersabda: \"Apabila salah seorang di antaramu bangun dari tidur, maka janganlah ia memasukkan tangannya kepada wadah (yang ada makanannya) before ia mencucinya tiga kali. Maka sesungguhnya ia tidak tahu ke mana tangannya itu pada waktu ia tidur.\" (Muttafaqun ‘alaihi)',
      },
      {
        'arabic': '',
        'indo':
            'Dari Anas RA berkata, telah bersabda Rasulullah SAW: \"Bersihkanlah (sesuatu) dari air kencing. Karena umumnya azab kubur karena urusan buang air.\" (HR Daruquthni)',
      },
      {
        'arabic': '',
        'indo':
            '“Bersihkanlah badan, maka Allah akan memberikan kebersihan kepadamu. Maka sesungguhnya tidak ada seorang hamba (muslim) yang tidur dalam keadaan bersih/suci kecuali tidur bersamanya, pada pakaiannya, malaikat yang tidak ada henti-hentinya berdoa: Ya Allah ampunilah hamba-Mu ini karena sesungguhnya ia tidur dalam keadaan suci/bersih.” (HR Thabrani, Ibnu Hibban).',
      },
      {
        'arabic': '',
        'indo':
            'Dari Abu Sa\'id berkata, Rasulullah saw. Bersabda, “Kunci dari salat adalah bersuci.” (H.R. at-Tirmizi: 221)',
      },
      {
        'arabic': '',
        'indo':
            '“Kebersihan itu mengantarkan kepada keimanan dan keimanan itu menyertai pemiliknya di surga.” (Riwayat Ath-Thabrani)',
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
          'Hadist Tentang Kebersihan',
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
