import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';

class BulanRamadhanPage extends StatelessWidget {
  const BulanRamadhanPage({super.key});

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
            'اِذَا جَاءَ رَمَضَانُ فُتِحَتْ اَبْوَابُ الْجَنَّةِ وَغُلِّقَتْ اَبْوَابُ النَّارِوَصُفِّدَتِ الشَّيَاطِيْنُ.',
        'indo':
            'Jika tiba bulan Ramadhan, maka dibuka pintu-pintu syurga dan ditutup pintu-pintu neraka dan dibelenggu semua syaitan (HR. Bukhari dan Muslim).',
      },
      {
        'arabic':
            'مَنْ صَامَ رَمَضَانَ اِيْمَانًا وَاحْتِسَابًا غُفِرَلَهُ مَا تَقَدَّمَ مِنْ ذَنْبِهِ.',
        'indo':
            'Barangsiapa yang berpuasa pada bulan Ramadhan karena iman dan mengharap pahala (ridha Allah), maka diampuni dosa-dosanya yang terdahulu (HR. Bukhari).',
      },
      {
        'arabic':
            'ثَلاَثَةٌ لاَتُرَدُّ دَعْوَتُهُمْ: اَلصَّائِمُ حَتَّى يُفْطِرَ وَاْلإمَامُ الْعَادِلُ وَالْمَظْلُوْمُ.',
        'indo':
            'Ada tiga golongan orang yang tidak ditolak doanya mereka: orang yang berpuasa hingga berbuka, pemimpin yang adil dan doanya orang yang dizalimi (HR. Tirmidzi).',
      },
      {
        'arabic':
            'ثَلاَثَةٌ مَنْ كُنَّ فِيْهِ يَسْتَكْمِلُ اِيْمَانَهُ: رَجُلٌ لاَيَخَافُ فِىاللهِ لَوْمَةَ لاَئِمٍ وَلاَيُرَائِى بِشَيْءٍ مِنْ عَمَلِهِ وَاِذَا عُرِضَ اَمْرَانِ اَحَدُهُمَا لِلدُّنْيَا وَالآخَرُ لِلاَخِرَةِ اِخْتَارَ اَمْرَاْلاَخِرَةِ عَلَى الدُّنْيَا.',
        'indo':
            'Tiga perkara, barangsiapa hal itu ada pada dirinya, berarti ia menyempurnakan imannya: (1) seseorang yang tidak pernah takut demi agama Allah pada kecaman si pengecam (2) tidak riya dengan sesuatu dari amalnya, (3) apabila dua perkara dihadapkan kepadanya, salah satu untuk dunia dan yang lain untuk akhirat, maka ia memilih urusan akhirat daripada urusan dunia (HR. Ibnu Asakir dari Abu Hurairah ra).',
      },
      {
        'arabic':
            'اِنَّ اللهَ يَرْضَى لَكُمْ ثَلاَثًا: اَنْ تَعْبُدُوْهُ وَلاَتُشْرِكُوْابِهِ شَيْئًا وَاَنْ تَعْتَصِمُوْا بِحَبْلِ اللهِ جَمِيْعًاوَلاَ تَفَرَّقُوْا وَاَنْ تَنَاصَحُوْا مَنْ وَلاَّهُ اللهُ اَمْرَكُمْ.',
        'indo':
            'Sesungguhnya Allah ridha untuk kamu tiga perkara: (1) kamu beribadah kepada-Nya dan tidak mempersekutukan sesuatu dengan-Nya. (2) kamu berpegang teguh kepada tali Allah dan tidak bercerai berai (3) kamu menasihati dengan tulus terhadap orang yang diangkat oleh Allah menguasai urusanmu (HR. Ahmad dan Muslim dari Abu Hurairah).',
      },
      {
        'arabic': '',
        'indo':
            'Diriwayatkan dari Abu Said al-Khudri r.a katanya: Rasulullah s.a.w bersabda: Setiap hamba yang berpuasa di jalan Allah, Allah akan menjauhkannya dari api Neraka sejauh perjalanan tujuh puluh tahun [Bukhari-Muslim]',
      },
      {
        'arabic': '',
        'indo':
            'Diriwayatkan dari Sahl bin Saad r.a katanya: Rasulullah s.a.w bersabda: Sesungguhnya di dalam Surga itu terdapat pintu yang dynamism Ar-Rayyan. Orang yang berpuasa akan masuk melalui pintu tersebut pada Hari Kiamat kelak. Tidak boleh masuk seorangpun kecuali mereka. Kelak akan ada pengumuman: Di manakah orang yang berpuasa? Mereka lalu berduyun-duyun masuk melalui pintu tersebut. Setelah orang yang terakhir dari mereka telah masuk, pintu tadi ditutup kembali. Tiada lagi orang lain yang akan memasukinya [Bukhari-Muslim]',
      },
      {
        'arabic': '',
        'indo':
            'Hadis riwayat Abu Hurairah ra.: Bahwa Rasulullah saw. bersabda: Apabila tiba bulan Ramadan, maka dibukalah pintu-pintu surga, ditutuplah pintu neraka dan setan-setan dibelenggu (Nomor hadis dalam kitab Sahih Muslim: 1793)',
      },
      {
        'arabic': '',
        'indo':
            'Wajib berpuasa Ramadan jika melihat hilal awal Ramadan dan berhenti puasa jika melihat hilal awal Syawal. Jika tertutup awan, maka hitunglah 30 hari. (Hadis riwayat Ibnu Umar ra)',
      },
      {
        'arabic': '',
        'indo':
            'Dari Nabi saw. bahwa beliau menyebut-nyebut tentang bulan Ramadan sambil mengangkat kedua tangannya dan bersabda: Janganlah engkau memulai puasa sebelum engkau melihat hilal awal bulan Ramadhan dan janganlah berhenti puasa sebelum engkau melihat hilal awal bulan Syawal. Apabila tertutup awan, maka hitunglah (30 hari) – (Nomor hadis dalam kitab Sahih Muslim: 1795)',
      },
      {
        'arabic': '',
        'indo':
            'Hadis riwayat Abu Hurairah ra., ia berkata: Rasulullah saw. bersabda: Janganlah engkau berpuasa satu atau dua hari sebelum Ramadan, kecuali bagi seorang yang biasa berpuasa, maka baginya silakan berpuasa. (Nomor hadis dalam kitab Sahih Muslim: 1812)',
      },
      {
        'arabic': '',
        'indo':
            'Diriwayatkan dari Abu Said al-Khudri r.a katanya: Aku pernah mendengar Rasulullah s.a.w bersabda: Tidak boleh berpuasa pada dua hari tertentu, iaitu Hari Raya Korban (Aidiladha) dan hari berbuka dari bulan Ramadan (Aidilfitri) [Bukhari-Muslim]',
      },
      {
        'arabic': '',
        'indo':
            'Diriwayatkan daripada Anas r.a katanya: Rasulullah s.a.w bersabda: Hendaklah kamu bersahur karena dalam bersahur itu ada keberkatannya [Bukhari-Muslim]',
      },
      {
        'arabic': '',
        'indo':
            'Diriwayatkan daripada Umar r.a katanya: Rasulullah s.a.w telah bersabda: Apabila datang malam, berlalulah siang dan tenggelamlah matahari. Orang yang berpuasa pun bolehlah berbuka [Bukhari-Muslim]',
      },
      {
        'arabic': '',
        'indo':
            'Diriwayatkan dari Abu Hurairah r.a katanya: Rasulullah s.a.w bersabda: Apabila seseorang daripada kamu sedang berpuasa pada suatu hari, janganlah berbicara tentang perkara yang keji dan kotor. Apabila dia dicaci maki atau diajak berkelahi oleh seseorang, hendaklah dia berkata: Sesungguhnya hari ini aku berpuasa, sesungguhnya hari ini aku berpuasa [Bukhari-Muslim]',
      },
      {
        'arabic': '',
        'indo':
            'Dari Abu Hurairah ra: katanya Rasulullah saw berabda: Barang siapa tidak meninggalkan ucapan dusta dan berbuat jahat (padahal dia puasa), maka Allah tidak butuh ia meninggalkan makan dan minum [Bukhari]',
      },
      {
        'arabic': '',
        'indo':
            'Diriwayatkan dari Abu Hurairah r.a katanya: Seorang lelaki datang menemui Rasulullah s.a.w lalu berkata: Celakalah aku wahai Rasulullah s.a.w. Rasulullah s.a.w bertanya: Apakah yang telah membuatmu celaka?\\n\\nLelaki itu menjawab: Aku telah bersetubuh dengan isteriku pada siang hari di bulan Ramadan.\\n\\nRasulullah s.a.w bertanya: Mampukah kamu memerdekakan seorang hamba? Lelaki itu menjawab: Tidak.\\n\\nRasulullah s.a.w bertanya: Mampukah kamu berpuasa selama dua bulan berturut-turut? Lelaki itu menjawab: Tidak.\\n\\nRasulullah s.a.w bertanya lagi: Mampukah kamu memberi makan kepada enam puluh orang fakir miskin? Lelaki itu menjawab: Tidak. Kemudian duduk.\\n\\nRasulullah SAW kemudian memberikan kepadanya suatu bekas yang berisi kurma lalu bersabda: Sedekahkanlah ini.\\n\\nLelaki tadi berkata: Tentunya kepada orang yang paling miskin di antara kami. Tiada lagi di kalangan kami di Madinah ini yang lebih memerlukan dari keluarga kami.\\n\\nMendengar ucapan lelaki itu Rasulullah s.a.w tersenyum sehingga kelihatan sebahagian giginya. Kemudian baginda bersabda: Pulanglah dan berilah kepada keluargamu sendiri [Bukhari-Muslim]',
      },
      {
        'arabic': '',
        'indo':
            'Diriwayatkan daripada Aisyah dan Ummu Salamah r.a, kedua-duanya berkata: Nabi s.a.w bangkit dari tidur dalam keadaan berjunub bukan dari mimpi kemudian meneruskan puasa [Bukhari-Muslim]',
      },
      {
        'arabic': '',
        'indo':
            'Barang siapa yang berpuasa sehari pada jalan Allah niscaya Allah akan manjauhkan mukanya dari api neraka (sejauh perjalanan) 70 tahun. (Hadist riwayat Al-Bukhari)',
      },
      {
        'arabic': '',
        'indo':
            'Di dalam syurga terdapat satu pintu yang disebut Ar-Rayyan; pada hari Kiamat orang-orang yang berpuasa masuk daripadanya (dan) tidak seorang pun selain mereka memasukinya….. (Hadist riwayat Al-Bukhari)',
      },
      {
        'arabic': '',
        'indo':
            'Puasa itu perisai yang dipergunakan seorang hamba untuk membentengi dirinya dari siksaan neraka. (Hadist riwayat Imam Ahmad)',
      },
      {
        'arabic': '',
        'indo':
            'Segala amal kebajikan anak Adam itu dilipat-gandakan pahalanya kepada sepuluh hinggalah ke 700 kali ganda. Allah berfirman: \'Kecuali puasa, sesungguhnya puasa itu adalah untuk-Ku dan Aku memberikan balasan kepadanya karena dia telah meninggalkan syahwat dan makan minumnya karena Aku\'. (Hadist riwayat Muslim)',
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
          'Hadist Tentang Bulan Ramadan',
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
