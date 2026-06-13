import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';

class PuasaPage extends StatelessWidget {
  const PuasaPage({super.key});

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
            'اِذَا جَاءَ رَمَضَانُ فُتِحَتْ اَبْوَابُ الْجَنَّةِ وَغُلِّقَتْ اَبْوَابُ النَّارِوَصُفِّدَتِ الشَّيَاطِيْنُ .',
        'indo':
            'Jika tiba bulan Ramadhan, maka dibuka pintu-pintu syurga dan ditutup pintu-pintu neraka dan dibelenggu semua syaitan (HR. Bukhari dan Muslim).',
      },
      {
        'arabic':
            'مَنْ صَامَ رَمَضَانَ اِيْمَانًا وَاحْتِسَابًا غُفِرَلَهُ مَا تَقَدَّمَ مِنْ ذَنْبِهِ .',
        'indo':
            'Barangsiapa yang berpuasa pada bulan Ramadhan karena iman dan mengharap pahala (ridha Allah), maka diampuni dosa-dosanya yang terdahulu (HR. Bukhari).',
      },
      {
        'arabic':
            'يَا مَعْشَرَ الشَّبَابِ مَنِ اسْتَطَاعَ الْبَاءَةَ فَلْيَتَزَوَّجْ، فَإِنَّهُ أَغَضُّ لِلْبَصَرِ، وَأَحْصَنُ لِلْفَرْجِ، وَمَنْ لَمْ يَسْتَطِعْ فَعَلَيْهِ بِالصَّوْمِ، فَإِنَّهُ لَهُ وِجَاءٌ',
        'indo':
            'Dalam hadits ‘Abdullah bin Mas’ud radhiyallâhu ‘anhu riwayat Al-Bukhâry dan Muslim, Rasulullah shallallâhu ‘alaihi wa sallam bersabda, “Wahai sekalian pemuda, barangsiapa di antara kalian yang mampu menikah, hendaklah ia menikah karena hal tersebut lebih menundukkan pandangan dan lebih menjaga kemaluan, dan barangsiapa yang belum mampu, hendaknya ia berpuasa karena sesungguhnya (puasa itu) adalah pemutus syahwatnya.”',
      },
      {
        'arabic':
            'ثَلاَثَةٌ لاَتُرَدُّ دَعْوَتُهُمْ: اَلصَّائِمُ حَتَّى يُفْطِرَ وَاْلإمَامُ الْعَادِلُ وَالْمَظْلُوْمُ .',
        'indo':
            'Ada tiga golongan orang yang tidak ditolak doanya mereka: orang yang berpuasa hingga berbuka, pemimpin yang adil dan donya orang yang dizalimi (HR. Tirmidzi).',
      },
      {
        'arabic':
            'كَانَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ إِذَا أَفْطَرَ قَالَ ذَهَبَ الظَّمَأُ وَابْتَلَّتْ الْعُرُوقُ وَثَبَتَ الْأَجْرُ إِنْ شَاءَ اللَّهُ',
        'indo':
            '“Adalah Rasulullah Shallallahu ‘Alaihi wa Sallam, jika sedang berbuka puasa dia membaca: “Dzahaba Azh Zhama’u wab talatil ‘uruqu wa tsabatal ajru insya Allah.”',
      },
      {
        'arabic':
            'مَنْ فَطَّرَ صَائِمًا كَانَ لَهُ مِثْلُ أَجْرِهِ غَيْرَ أَنَّهُ لَا يَنْقُصُ مِنْ أَجْرِ الصَّائِمِ شَيْئًا',
        'indo':
            'Barang siapa yang memberikan makanan untuk berbuka bagi orang berpuasa maka dia akan mendapatkan pahala sebagaimana orang tersebut, tanpa mengurangi sedikit pun pahala orang itu.',
      },
      {
        'arabic':
            'يَا رَسُولَ اللَّهِ فَمُرْنِيْ بِعَمَلٍ أَدْخُلُ بِهِ الْجَنَّةَ . قَالَ عَلَيْكَ بِالصَّوْمِ فَإِنَّهُ لاَ مِثْلَ لَهُ .',
        'indo':
            '“Wahai Rasulullah, perintahlah saya untuk mengerjakan suatu amalan, yang dengannya, saya dimasukkan ke dalam surga. Beliau bersabda, ‘Berpuasalah, karena (puasa) itu tak ada bandingannya.’.”',
      },
      {
        'arabic':
            'مَا مِنْ عَبْدٍ يَصُومُ يَوْمًا فِى سَبِيلِ اللَّهِ إِلاَّ بَاعَدَ اللَّهُ بِذَلِكَ الْيَوْمِ وَجْهَهُ عَنِ النَّارِ سَبْعِينَ خَرِيفًا',
        'indo':
            '“Tidak seorang hamba pun yang berpuasa sehari di jalan Allah, kecuali, karena (amalannya pada) hari itu, Allah akan menjauh­kan wajahnya dari neraka (sejauh perjalanan) selama tujuh puluh tahun.”',
      },
      {
        'arabic':
            'كان أصحاب محمد صلى الله عليه و سلم أعجل الناس إfطارا وأبطأهم سحورا',
        'indo':
            'Para sahabat Muhammad Shallallahu ‘Alaihi wa Sallam adalah manusia yang paling bersegera dalam berbuka puasa, dan paling akhir dalam sahurnya.',
      },
      {
        'arabic': 'الصِّيَامُ جُنَّةٌ كَجُنَّةِ أَحَدِكُمْ مِنَ الْقِتَالِ',
        'indo':
            '“Puasa merupakan tameng terhadap neraka, seperti tameng salah seorang dari kalian pada peperangan.”',
      },
      {
        'arabic':
            'كَمْ مِنْ صَائِمٍ لَيْسَ لَهُ مِنْ صِيَامِهِ إِلَّا الْجُوعُ',
        'indo':
            'Betapa banyak orang berpuasa yang tidak mendapatkan apa-apa dari puasanya kecuali hanya lapar saja.',
      },
      {
        'arabic':
            'فِتْنَةُ الرَّجُلِ فِيْ أَهْلِهِ وَمَالِهِ وَنَفْسِهِ وَوَلَدِهِ وَجَارِهِ يُكَفِّرُهَا الصِّيَامُ وَالصَّلاَةُ وَالصَّدَقَةُ وَالأَمْرُ بِالْمَعْرُوفِ وَالنَّهْىُ عَنِ الْمُنْكَرِ',
        'indo':
            '“Fitnah seseorang terhadap keluarga, harta, jiwa, anak, dan tetangganya dapat ditebus dengan puasa, shalat, shadaqah, serta amar ma’ruf dan nahi mungkar.”',
      },
      {
        'arabic': 'للصائم فرحتان يفرحهما: إذا أفطر فرح، وإذا لقي ربه فرح بصومه',
        'indo':
            '“Bagi orang berpuasa ada dua kebahagiaan: yaitu kebahagiaan ketika berbuka, dan ketika berjumpa Rabbnya bahagia karena puasanya.”',
      },
      {
        'arabic': '',
        'indo':
            'Demi Dzat yang jiwa Muhammad berada di tangan-Nya, sesungguhnya bau mulut orang yang berpuasa lebih harum di sisi Allah pada hari kiamat daripada bau misk atau kasturi. Dan bagi orang yang berpuasa ada dua kegembiraan, ketika berbuka mereka bergembira dengan bukanya dan ketika bertemu Allah mereka bergembira karena puasanya.” (HR. Bukhari dan Muslim)',
      },
      {
        'arabic': '',
        'indo':
            '“Diriwayatkan dari Abu Hurairah r.a katanya: Rasulullah s.a.w bersabda: Apabila seseorang daripada kamu sedang berpuasa pada suatu hari, janganlah berbicara tentang perkara yang keji dan kotor. Apabila dia dicaci maki atau diajak berkelahi oleh seseorang, hendaklah dia berkata: Sesungguhnya hari ini aku berpuasa” [Bukhari-Muslim]',
      },
      {
        'arabic': '',
        'indo':
            '“Dari Abu Hurairah ra: katanya Rasulullah saw berabda: “Barang siapa tidak meninggalkan ucapan dusta dan berbuat jahat (padahal dia puasa), maka Allah tidak butuh ia meninggalkan makan dan minum” [Bukhari]',
      },
      {
        'arabic': '',
        'indo':
            '” Segala amal kebajikan anak Adam itu dilipat-gandakan pahalanya kepada sepuluh hinggalah ke 700 kali ganda. Allah berfirman: ‘Kecuali puasa, sesungguhnya puasa itu adalah untuk-Ku dan Aku memberikan balasan kepadanya karena dia telah meninggalkan syahwat dan makan minumnya karena Aku’.” (Hadist riwayat Muslim)',
      },
      {
        'arabic': '',
        'indo':
            '“Islam adalah bahwa engkau bersaksi bahwa tiada yang berhak untuk diibadahi kecuali Allah dan sesungguhnya Muhammad adalah Rasul Allah, engkau menegak­kan shalat, mengeluarkan zakat, berpuasa Ramadhan, serta berhaji ke rumah (Allah) bila engkau sanggup menempuh jalan untuk itu.”',
      },
      {
        'arabic': '',
        'indo':
            'Hadis riwayat Abu Hurairah ra.: Bahwa Rasulullah saw. bersabda: Apabila tiba bulan Ramadan, maka dibukalah pintu-pintu surga, ditutuplah pintu neraka dan setan-setan dibelenggu (Nomor hadis dalam kitab Sahih Muslim: 1793)',
      },
      {
        'arabic': '',
        'indo':
            '“Islam adalah bahwa engkau bersaksi bahwa tiada yang berhak untuk diibadahi kecuali Allah dan sesungguhnya Muhammad adalah Rasul Allah, engkau menegak­kan shalat, mengeluarkan zakat, berpuasa Ramadhan, serta berhaji ke rumah (Allah) bila engkau sanggup menempuh jalan untuk itu.”',
      },
      {
        'arabic': '',
        'indo':
            'Wajib berpuasa Ramadan jika melihat hilal awal Ramadan dan berhenti puasa jika melihat hilal awal Syawal. Jika tertutup awan, maka hitunglah 30 hari. (Hadis riwayat Ibnu Umar ra)',
      },
      {
        'arabic': '',
        'indo':
            '“Diriwayatkan daripada Anas r.a katanya: Rasulullah s.a.w bersabda: Hendaklah kamu bersahur karena dalam bersahur itu ada keberkatannya” [Bukhari-Muslim]',
      },
      {
        'arabic': '',
        'indo':
            'Dari Sahl Ibnu Sa\'ad Radliyallaahu \'anhu bahwa Rasulullah Shallallaahu \'alaihi wa Sallam bersabda: "Orang-orang akan tetap dalam kebaikan selama mereka menyegerakan berbuka." Muttafaq Alaihi.',
      },
      {
        'arabic': '',
        'indo':
            '"Apabila seseorang di antara kamu berbuka, hendaknya ia berbuka dengan kurma, jika tidak mendapatkannya hendaknya ia berbuka dengan air karena air itu suci.',
      },
      {
        'arabic': '',
        'indo':
            '“Barang siapa lupa sedangkan ia dalam keadaan puasa. kemudian ia makan atau minum, maka hendaklah puasanya disempurnakan, karena sesungguhnya Allah-lah yang memberinya makan dan minum.” (HR. Bukhari dan Muslim)',
      },
      {
        'arabic': '',
        'indo':
            '“Siapa bergembira dengan masuknya bulan Ramadhan, Allah akan mengharamkan jasadnya masuk neraka.”',
      },
      {
        'arabic': '',
        'indo':
            'Makan sahur adalah berkah, maka janganlah kalian meninggalkannya, walau kalian hanya meminum seteguk air, karena Allah ‘Azza wa Jalla dan para malaikat mendoakan orang yang makan sahur.',
      },
      {
        'arabic': '',
        'indo':
            'Jibril menemuinya (nabi) pada tiap malam malam bulan Ramadhan, dan dia (Jibril) bertadarus Al Quran bersamanya. (HR. Bukhari No. 3220)',
      },
      {
        'arabic': '',
        'indo':
            '“Puasa dan Al-Qur’an itu akan memberikan syafaat kepada seorang hamba pada hari kiamat. Puasa akan berkata, ‘Wahai Tuhanku, saya telah menahannya dari makan dan nafsu syahwat, karenanya perkenankan aku untuk memberikan syafaat kepadanya’. Dan Al-Qur’an pula berkata, ‘Saya telah melarangnya dari tidur pada malam hari, karenanya perkenankan aku untuk memberi syafaat kepadanya’. Beliau bersabda: ‘Maka syafaat keduanya diperkenankan’.” (HR. Ahmad, Hakim dan At- Thabrani)',
      },
      {
        'arabic': '',
        'indo':
            '“Barangsiapa berpuasa pada bulan Ramadan dengan keimanan dan niat yang baik, niscaya akan diampuni dosa-dosanya yang telah lalu.” (HR. Bukhari)',
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
          'Hadist Tentang Puasa',
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
