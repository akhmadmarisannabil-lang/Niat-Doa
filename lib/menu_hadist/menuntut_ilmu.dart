import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';

class MenuntutIlmuPage extends StatelessWidget {
  const MenuntutIlmuPage({super.key});

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
    final Color dividerColor = isDarkMode ? Colors.white10 : Colors.black12;

    // Data hadits
    final List<Map<String, String>> kontenHadits = [
      {
        'arabic': 'اطْلُبُوْا الْعِلْمَ مِنَ الْمَهْدِ إِلَى اللَّلحْدِ',
        'indo': 'Carilah ilmu sejak bayi hingga ke liang kubur.',
      },
      {
        'arabic':
            'مَنْ أَرَادَ الدُّنْيَا فَعَلَيْهِ بِالْعِلْمِ, وَمَنْ أَرَادَ الأَخِرَةَ فَعَلَيْهِ بِالْعِلْمِ, وَمَنْ أَرَادَهُمَا فَعَلَيْهِ بِالْعِلْمِ',
        'indo':
            'Barang siapa menginginkan soal-soal yang berhubungan dengan dunia, wajiblah ia memiliki ilmunya ; dan barang siapa yang ingin (selamat dan berbahagia) di akhirat, wajiblah ia mengetahui ilmunya pula; dan barangsiapa yang menginginkan kedua-duanya, wajiblah ia memiliki ilmu kedua-duanya pula. (HR. Bukhari dan Muslim)',
      },
      {
        'arabic':
            'مَنْ خَرَجَ فِى طَلَبُ الْعِلْمِ فَهُوَ فِى سَبِيْلِ اللهِ حَتَّى يَرْجِعَ',
        'indo':
            'Artinya : Barang siapa yang keluar untuk mencari ilmu maka ia berada di jalan Allah hingga ia pulang. (HR. Turmudzi)',
      },
      {
        'arabic': 'طَلَبُ الْعِلْمِ فَرِيْضَةٌ عَلَى كُلِّ مُسْلِمٍ',
        'indo':
            'Menuntut ilmu itu diwajibkan bagi setiap orang Islam (Riwayat Ibnu Majah, Al-Baihaqi, Ibnu Abdil Barr, dan Ibnu Adi, dari Anas bin Malik)',
      },
      {
        'arabic':
            'مَنْ سَلَكَ طَرِيقًا يَلْتَمِسُ فِيْهِ عِلْمًا سَهَّلَ اللهُ لَهُ طَرِيْقًا ِإلىَ اْلجَنَّةِ',
        'indo':
            'Barang siapa yang menempuh suatu jalan untuk menuntut ilmu, Allah akan memudahkan baginya jalan ke surga (HR Muslim)',
      },
      {
        'arabic': 'مُجَالَسَةُ الْعُلَمَاءِ عِبَادَةٌ',
        'indo': 'Duduk bersama para Ulama adalah ibadah. (HR. Al-Dailami)',
      },
      {
        'arabic':
            'إِذَا مَرَرْتُمْ بِرِيَاضِ الْجَنَّةِ فَارْتَعُوْا ، قَالُوْا : يَارَسُوْلَ اللَّهِ ، وَمَا رِيَاضُ الْجَنَّةِ ؟ قَالَ : مَجَالِسُ الْعِلْمِ',
        'indo':
            'Apabila kamu melewati taman-taman surga, minumlah hingga puas. Para sahabat bertanya, Ya Rasulullah, apa yang dimaksud taman-taman surga itu? Nabi SAW menjawab, majelis-majelis ta’lim/ilmu. (HR. Al-Thabrani)',
      },
      {
        'arabic':
            'إِنَّ مِنْ إِجْلاَلِ اللَّهِ ، إِكْرِامَ الْعِلْمِ وَ الْعُلَمَاءِ ، وَذِى الشَّيْبَةِ الْمُسْلِمِ ، وَإِكْرَامَ حَمَلَةَ الْقُرْاَنِ وَ أَهْلِهِ ، وَ إِكْرَامَ السُّلْطَانِ الْمُقْسِطِ',
        'indo':
            'Termasuk mengagungkan Allah ialah mengormati (memuliakan) ilmu, para ulama, orang tua yang muslim dan para pengemban Al-Qur’an dan ahlinya, serta penguasa yang adil (Abu Dawud, dan al-Thusiy)',
      },
      {
        'arabic': 'مَنْ يُرِدِ اللَّهُ بِهِ خَيْرًا يُفَقِّهْهُ فِي الدِّينِ',
        'indo':
            'Barangsiapa yang dikehendaki oleh Allah kebaikan, niscaya akan difahamkan tentang urusan agamanya.',
      },
      {
        'arabic':
            'مَنْ سَلَكَ طَرِيقًا يَطْلُبُ فِيهِ عِلْمًا سَلَكَ اللَّهُ بِهِ طَرِيقًا مِنْ طُرُقِ الْجَنَّةِ ، وَإِنَّ الْمَلَائِكَةَ لَتَضَعُ أَجْنِحَتَهَا رِضًا لِطَالِبِ الْعِلْمِ ، وَإِنَّ الْعَالِمَ لَيَسْتَغْفِرُ لَهُ مَنْ فِي السَّمَوَاتِ وَمَنْ فِي الْأَرْضِ وَالْحِيتَانُ فِي جَوْفِ الْمَاءِ، وَإِنَّ فَضْلَ الْعَالِمِ عَلَى الْعَابِدِ كَفَضْلِ الْقَمَرِ لَيْلَةَ الْبَدْرِ عَلَى سَائِرِ الْكَوَاكِبِ، وَإِنَّ الْعُلَمَاءَ وَرَثَةُ الْأَنْبِيَاءِ ، وَإِنَّ الْأَنْبِيَاءَ لَمْ يُوَرِّثُوا دِينَارًا وَلَا دِرْهَمًا إِنَّمَا وَرَّثُوا الْعِلْمَ، فَمَنْ أَخَذَهُ أَخَذَ بِحَظٍّ وَافِرٍ',
        'indo':
            'Barangsiapa menempuh suatu jalan dalam rangka mencari ilmu maka Allah akan tunjukkan baginya salah satu jalan dari jalan-jalan menuju ke surga. Sesungguhnya malaikat meletakan sayap-sayap mereka sebagai bentuk keridhaan terhadap penuntut ilmu. Sesungguhnya semua yang ada di langit dan di bumi meminta ampun untuk seorang yang berilmu sampai ikan yang ada di air. Sesungguhnya keutamaan orang yang berilmu dibandingkan dengan ahli ibadah sebagaimana keutamaan bulan purnama terhadap semua bintang. Dan sesungguhnya para ulama’ adalah pewaris para Nabi, dan sesungguhnya mereka tidaklah mewariskan dinar maupun dirham, akan tetapi mewariskan ilmu. Barangsiapa yang mengambil bagian ilmu maka sungguh dia telah mengambil bagian yang berharga.',
      },
      {
        'arabic':
            'لاَحَسَدَ إِلاَ فِي اثْنَتَيْنِ : رَجُلٌ أَتَاهُ اللهُ مَا لاً فَسُِّلطَ عَلىَ هَلَكِتهِ فيِ الَحقّ ِ, وَ رَجُلٌ أَتَاهُ اللهُ الْحِكْمةَ فَهُوَ يَقْضِى ِبهَا وَيُعَلِمُهَا',
        'indo':
            'Dari Abdullah bin Mas’ud r.a. Nabi Muhamad pernah bersabda : Janganlah ingin seperti orang lain, kecuali seperti dua orang ini. Pertama orang yang diberi Allah kekayaan berlimpah dan ia membelanjakannya secara benar, kedua orang yang diberi Allah al-Hikmah dan ia berprilaku sesuai dengannya dan mengajarkannya kepada orang lain (HR Bukhari)',
      },
      {
        'arabic':
            'إِذَا مَاتَ الْإِنْسَانُ انْقَطَعَ عَنْهُ عَمَلُهُ إِلَّا مِنْ ثَلَاثَةٍ : إِلَّا مِنْ صَدَقَةٍ جَارِيَةٍ، أَوْ عِلْمٍ يُنْتَفَعُ بِهِ، أَوْ وَلَدٍ صَالِحٍ يَدْعُو لَهُ',
        'indo':
            'Apabila manusia telah meninggal dunia maka terputuslah semua amalannya kecuali tiga amalan : shadaqah jariyah, ilmu yang bermanfaat dan anak shalih yang mendoakan dia. [HR. Muslim]',
      },
      {
        'arabic': 'خَيْرُكُمْ مَنْ تَعَلَّمَ القُرْآنَ وَعَلَّمَهُ',
        'indo':
            'Orang terbaik diantara kalian adalah orang yang mempelajari Al Qur’an dan mengajarkannya.',
      },
      {
        'arabic':
            'إِنَّ مِنْ أَشَدِّ النَّاسِ عَذَابًا يَوْمَ القِيَامَةِ عَالِمٌ لَمْ يَنْفَعْهُ اللَّهُ بِعِلْمِهِ',
        'indo':
            'Orang yang paling pedih siksaannya pada hari kiamat ialah seorang alim yang Allah menjadikan ilmunya tidak bermanfaat. (al-Baihaqy)',
      },
      {
        'arabic':
            'تَنَاصَحُوْا فِى الْعِلْمِ ، وَلاَ يَكْتُمْ بَعْضُكُمْ بَعْضُا ، فَإِنَّ خِيَانَةً فِى الْعِلْمِ أَشَدُّ مِنْ خِيَانَةٍ فِى الْمَالِ',
        'indo':
            'Saling berlakulah jujur dalam ilmu dan jangan saling merahasiannya. Sesungguhnya berkhianat dalam ilmu pengetahuan lebih berat hukumannya dari pada berkhianat dalam harta. (Abu Nu’ai)',
      },
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
          'Hadist Tentang Menuntut Ilmu',
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
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Looping data
              ...kontenHadits
                  .map(
                    (item) => Column(
                      children: [
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
                        Text(
                          item['indo']!,
                          style: TextStyle(
                            color: subTextColor,
                            fontSize: 14,
                            height: 1.5,
                          ),
                        ),
                        const SizedBox(height: 24),
                        Divider(color: dividerColor),
                        const SizedBox(height: 24),
                      ],
                    ),
                  )
                  .toList(),

              // Teks penutup
              Text(
                "Nah, itu tadi sedikit yang bisa kami bagikan mengenai hadits Nabi tentang menuntut ilmu. Sebegitu pentingnya ilmu agama sehingga syariat islam mewajibkan setiap muslim untuk senantiasa belajar dan mencari ilmu sebanyak banyaknya agar hidupnya senantiasa diridhoi oleh ALLAH SWT. Bahkan telah kita ketahui juga bahwa Rasulullah shallallahu 'alaihi wa sallam setiap hari setelah selesai shalat subuh berdo’a kepada Allah yang mana dalam doanya beliau senantiasa berharap agar diberi ilmu yang bermanfaat, berikut doanya :",
                style: TextStyle(
                  color: subTextColor,
                  fontSize: 14,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 20),

              // Doa
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: isDarkMode
                      ? Colors.white.withOpacity(0.05)
                      : Colors.black.withOpacity(0.03),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Text(
                      'اللَّهُمَّ إِنِّي أَسْأَلُكَ عِلْمًا نَافِعًا وَرِزْقًا طَيِّبًا وَعَمَلًا مُتَقَبَّلًا',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.amiri(
                        color: mainTextColor,
                        fontSize: 22,
                        height: 2,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      "Ya Allah sesungguhnya saya minta kepada Engkau ilmu yang bermanfaat, rizqi yang baik dan amalan yang diterima.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: subTextColor,
                        fontSize: 14,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
