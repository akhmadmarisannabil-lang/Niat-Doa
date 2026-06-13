import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';

class AkhlakPage extends StatelessWidget {
  const AkhlakPage({super.key});

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
        'arabic': 'إِنَّمَا بُعِثْتُ ِلأُتَمِّمَ صَالِحَ اْلأَخْلاَقِ.',
        'indo':
            'Sesungguhnya aku diutus untuk menyempurnakan akhlak yang baik. (HR. Ahmad)',
      },
      {
        'arabic':
            'قال رسولُ اللهِ -صلى الله عليه وسلم- : إِنَّ لِكُلِّ دِيْنِ خُلُقًا وَخُلُقُ الإسلامَ الْحَيَاءُ',
        'indo':
            'Dari Anas -semoga Allah meridhoinya- dia berkata : Nabi -shalallahu \'alaihi wa sallam- bersabda : Sesungguhnya setiap agama memiliki akhlak, dan akhlak Islami adalah rasa malu. (HR. Ibnu Majah)',
      },
      {
        'arabic':
            'إِنَّ اللهَ كَرِيْمٌ يُحِبُّ الْكَرَمَ وَمَعَالِيَ اْلأَخْلاَقِ وَيُبْغِضُ سِفْسَافَهَا',
        'indo':
            'Sesungguhnya Allah Maha Pemurah menyukai kedermawanan dan akhlak yang mulia serta membenci akhlak yang rendah/hina. (HR. Bukhori, HR Muslim)',
      },
      {
        'arabic': 'إنَّ مِنْ خِيَارِكُمْ أَحْسَنَكُمْ أَخْلاَقًا',
        'indo':
            'Sesungguhnya yang terbaik di antara kalian adalah yang terbaik akhlaknya. (HR. Ahmad)',
      },
      {
        'arabic':
            'عَنْ أَبِي هُرَيْرَةَ قَالَ قَالَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ أَكْمَلُ الْمُؤْمِنِينَ إِيمَانًا أَحْسَنُهُمْ خُلُقًا وَخِيَارُكُمْ خِيَارُكُمْ لِنِسَائِهِمْ خُلُقًا (الترمذى',
        'indo':
            'Orang mukmin yang paling sempurna keimanannya adalah ia yang memiliki akhlak terbaik. Yang terbaik di antara kalian adalah yang terbaik akhlaknya kepada pasangannya. (Hadits riwayat Tirmidzi)',
      },
      {
        'arabic':
            'عَنْ عَائِشَةَ قَالَتْ سَمِعْتُ النَّبِيَّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ يَقُولُ إِنَّ الْمُؤْمِنَ يُدْرِكُ بِحُسْنِ خُلُقِهِ دَرَجَاتِ قَائِمِ اللَّيْلِ صَائِمِ النَّهَارِ (مسند أحمد',
        'indo':
            '\'Aisyah – semoga Allah meridhainya – berkata, Aku mendengar Nabi – shallallaahu \'alaihi wassalaam – berkata, sungguh orang-orang yang beriman dengan akhlak baik mereka bisa mencapai (menyamai) derajat mereka yang menghabiskan seluruh malamnya dalam sholat dan seluruh siangnya dengan berpuasa. [Musnad Imam Ahmad]',
      },
      {
        'arabic':
            'عَنْ أَبِي الدَّرْدَاءِ قَالَ سَمِعْتُ النَّبِيَّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ يَقُولُ مَا مِنْ شَيْءٍ يُوضَعُ فِي الْمِيزَانِ أَثْقَلُ مِنْ حُسْنِ الْخُلُقِ وَإِنَّ صَاحِبَ حُسْنِ الْخُلُقِ لَيَبْلُغُ بِهِ دَرَجَةَ صَاحِبِ الصَّوْمِ وَالصَّلَاةِ (الترمذي',
        'indo':
            'Abu Darda’ meriwayatkan: Aku mendengar Nabi Muhammad saw berkata, Tak ada yang lebih berat pada timbangan (Mizan, di hari Pembalasan) dari pada akhlak yang baik. Sungguh, orang yang berakhlak baik akan mencapai derajat orang yang berpuasa dan sholat. (Hadits riwayat al-Tirmidzi)',
      },
      {
        'arabic':
            'عَنْ عَبْدِ اللَّهِ بْنِ عَمْرٍو رَضِيَ اللَّهُ عَنْهُمَا عَنْ النَّبِيِّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ قَالَ الْمُسْلِمُ مَنْ سَلِمَ الْمُسْلِمُونَ مِنْ لِسَانِهِ وَيَدِهِ وَالْمُهَاجِرُ مَنْ هَجَرَ مَا نَهَى اللَّهُ عَنْهُ )البخاري',
        'indo':
            'Orang muslim yang baik adalah yang muslim lainnya aman dari ganguan ucapan dan tangannya, dan orang yang Hijrah (tergolong kelompok Muhajirin) adalah yang meninggalkan apa-apa yang dilarang Allah. (Hadits riwayat Bukhari)',
      },
      {
        'arabic':
            'إِنَّ الرِّفْقَ لَا يَكُونُ فِي شَيْءٍ إِلَّا زَانَهُ وَلَا يُنْزَعُ مِنْ شَيْءٍ إِلَّا شَانَهُ',
        'indo':
            'Sesungguhnya kelembutan itu tidak berada pada sesuatu kecuali menghiasinya dan tidak dicabut dari sesuatu kecuali memperburuknya. (HR. Muslim).',
      },
      {
        'arabic':
            'أَنَا زَعِيمٌ بِبَيْتٍ فِي رَبَضِ الْجَنَّةِ لِمَنْ تَرَكَ الْمِرَاءَ وَإِنْ كَانَ مُحِقًّا وَبِبَيْتٍ فِي وَسَطِ الْجَنَّةِ لِمَنْ تَرَكَ الْكَذِبَ وَإِنْ كَانَ مَازِحًا وَبِبَيْتٍ فِي أَعْلَى الْجَنَّةِ لِمَنْ حَسَّنَ خُلُقَهُ',
        'indo':
            'Aku adalah penjamin sebuah rumah di sekitar taman (surga) bagi seseorang yang meninggalkan perdebatan walaupun ia benar, penjamin rumah di tengah surga bagi orang yang meninggalkan dusta walaupun ia bercanda, juga menjadi penjamin sebuah rumah di surga paling atas bagi orang yang memiliki husnul khuluq. (HR. Abu Dawud).',
      },
      {
        'arabic':
            'أَلَا أُخْبِرُكُمْ بِمَنْ يَحْرُمُ عَلَى النَّارِ أَوْ بِمَنْ تَحْرُمُ عَلَيْهِ النَّارُ عَلَى كُلِّ قَرِيبٍ هَيِّنٍ سَهْلٍ',
        'indo':
            'Maukah kalian aku beritahu tentang orang yang diharamkan masuk neraka atau neraka diharamkan terhadap setiap orang yang gampang dekat, lembut perangai, dan mudah. (HR. Tirmidzi)',
      },
      {
        'arabic': 'كاَنَ خُلُقُهُ الْقُرْآنَ',
        'indo': 'Akhlak Rasulullah adalah al-Qur’an. (HR. Muslim)',
      },
      {
        'arabic':
            'إِنَّ اللهَ كَرِيْمٌ يُحِبُ\\ّ الْكَرَمَ وَمَعَالِيَ اْلأَخْلاَقِ وَيُبْغِضُ سِفْسَافَهَا',
        'indo':
            'Sesungguhnya Allah Maha Pemurah menyukai kedermawanan dan akhlak yang mulia serta membenci akhlak yang rendah/hina. [HR. Al-Hakim].',
      },
      {
        'arabic':
            'عَنْ أَبِي هُرَيْرَةَ قَالَ قَالَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ الْإِيمَانُ بِضْعٌ وَسَبْعُونَ أَوْ بِضْعٌ وَسِتُّونَ شُعْبَةً فَأَفْضَلُهَا قَوْلُ لَا إِلَهَ إِلَّا اللَّهُ وَأَدْنَاهَا إِمَاطَةُ الْأَذَى عَنْ الطَّرِيقِ وَالْحَيَاءُ شُعْبَةٌ مِنْ الْإِيمَانِ (مسلم',
        'indo':
            'Iman itu lebih dari 70 atau 60 cabang, cabang iman tertinggi adalah mengucapkan \'La ilaha illallah\’, dan yang terendah adalah membuang gangguan dari jalan, dan rasa malu merupakan sebagian dari iman. (Hadits riwayat Muslim)',
      },
      {
        'arabic':
            'إِنَّ الْمُؤْمِنَ لَيُدْرِكُ بِحُسْنِ خُلُقِهِ دَرَجَةَ الصَّائِمِ الْقَائِمِ',
        'indo':
            'Sesungguhnya seorang mukmin akan mendapatkan kedudukan ahli puasa dan shalat dengan ahlak baiknya. (HR. Abu Daud)',
      },
      {
        'arabic':
            'حَدَّثَنَا قَتَادَةُ عَنْ أَنَسٍ عَنْ النَّبِيِّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ قَالَ لَا يُؤْمِنُ أَحَدُكُمْ حَتَّى يُحِبَّ لِأَخِيهِ مَا يُحِبُّ لِنَفْسِهِ (البخاري',
        'indo':
            'Tidaklah seorang diantara kalian dikatakan beriman hingga ia mencintai untuk saudaranya apa-apa yang ia sukai untuk dirinya sendiri. (Hadits riwayat Bukhari)',
      },
      {
        'arabic':
            'عَنْ أَبِي هُرَيْرَةَ أَنَّ رَسُولَ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ قَالَ لَا يَدْخُلُ الْجَنَّةَ مَنْ لَا يَأْمَنُ جَارُهُ بَوَائِقَهُ (مسلم',
        'indo':
            'Tidak akan masuk surga orang yang tetangganya tidak aman dari gangguannya. (Hadist riwayat Muslim)',
      },
      {
        'arabic':
            'حَدَّثَنَا مُحَمَّدُ بْنُ بَشَّارٍ حَدَّثَنَا عَبْدُ الرَّحْمَنِ بْنُ مَهْدِيٍّ حَدَّثَنَا سُفْيَانُ عَنْ حَبِيبِ بْنِ أَبِي ثَابِتٍ عَنْ مَيْمُونِ بْنِ أَبِي شَبِيبٍ عَنْ أَبِي ذَرٍّ قَالَ قَالَ لِي رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ اتَّقِ اللَّهِ حَيْثُمَا كُنْتَ وَأَتْبِعْ السَّيِّئَةَ الْحَسَنَةَ تَمْحُهَا وَخَالِقِ النَّاسَ بِخُلُقٍ حَسَنٍ قَالَ وَفِي الْبَاب عَنْ أَبِي هُرَيْرَةَ قَالَ أَبُو عِيسَى هَذَا حَدِيثٌ حَسَنٌ صَحِيحٌ حَدَّثَنَا مَحْمُودُ بْنُ غَيْلَانَ حَدَّثَنَا أَبُو أَحْمَدَ وَأَبُو نُعَيْمٍ عَنْ سُفْيَانَ عَنْ حَبِيبٍ بِهَذَا الْإِسْنَادِ نَحْوَهُ قَالَ مَحْمُودٌ حَدَّثَنَا وَكِيعٌ عَنْ سُفْيَانَ عَنْ حَبِيبِ بْنِ أَبِي ثَابِتٍ عَنْ مَيْمُونِ بْنِ أَبِي شَبِيبٍ عَنْ مُعَاذِ بْنِ جَبَلٍ عَنْ النَّبِيِّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ نَحْوَهُ قَالَ مَحْمُودٌ وَالصَّحِيحُ حَدِيثُ أَبِي ذَرٍّ',
        'indo':
            'Dari Abu Dzar ia berkata; Rasulullah shallallahu \'alaihi wasallam pernah bersabda kepadaku: Bertakwalah kamu kepada Allah dimana saja kamu berada dan ikutilah setiap keburukan dengan kebaikan yang dapat menghapuskannya, serta pergauilah manusia dengan akhlak yang baik. (Sunan Tirmidzi)',
      },
      {
        'arabic':
            'حَدَّثَنَا أَحْمَدُ بْنُ الْحَسَنِ بْنِ خِرَاشٍ الْبَغْدَادِيُّ حَدَّثَنَا حَبَّانُ بْنُ هِلَالٍ حَدَّثَنَا مُبَارَكُ بْنُ فَضَالَةَ حَدَّثَنِي عَبْدُ رَبِّهِ بْنُ سَعِيدٍ عَنْ مُحَمَّدِ بْنِ الْمُنْكَدِرِ عَنْ جَابِرٍ أَنَّ رَسُولَ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ قَالَ إِنَّ مِنْ أَحَبِّكُمْ إِلَيَّ وَأَقْرَبِكُمْ مِنِّي مَجْلِسًا يَوْمَ الْقِيَامَةِ أَحَاسِنَكُمْ أَخْلَاقًا وَإِنَّ أَبْغَضَكُمْ إِلَيَّ وَأَبْعَدَكُمْ مِنِّي مَجْلِسًا يَوْمَ الْقِيَامَةِ الثَّرْثَارُونَ وَالْمُتَشَدِّقُونَ وَالْمُتَفَيْهِقُونَ قَالُوا يَا رَسُولَ اللَّهِ قَدْ عَلِمْنَا الثَّرْثَارُونَ وَالْمُتَشَدِّقُونَ فَمَا الْمُتَفَيْهِقُونَ قَالَ الْمُتَكَبِّرُونَ قَالَ أَبُو عِيسَى وَفِي الْبَاب عَنْ أَبِي هُرَيْرَةَ وَهَذَا حَدِيثٌ حَسَنٌ غَرِيبٌ مِنْ هَذَا الْوَجْهِ وَرَوَى بَعْضُهُمْ هَذَا الْحَدِيثَ عَنْ الْمُبَارَكِ بْنِ فَضَالَةَ عَنْ مُحَمَّدِ بْنِ الْمُنْكَدِرِ عَنْ جَابِرٍ عَنْ النَّبِيِّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ وَلَمْ يَذْكُرْ فِيهِ عَنْ عَبْدِ رَبِّهِ بْنِ سَعِيدٍ وَهَذَا أَصَحُّ وَالثَّرْثَارُ هُوَ الْكَثِيرُ الْكَلَامِ وَالْمُتَشَدِّقُ الَّذِي يَتَطَاوَلُ عَلَى النَّاسِ فِي الْكَلَامِ وَيَبْذُو عَلَيْهِمْ',
        'indo':
            'Dari Jabir bahwa Rasulullah shallallahu \'alaihi wasallam bersabda: Sesungguhnya di antara orang yang paling aku cintai dan yang tempat duduknya lebih dekat kepadaku pada hari kiamat ialah orang yang akhlaknya paling bagus. Dan sesungguhnya orang yang paling aku benci dan paling jauh tempat duduknya dariku pada hari kiamat ialah orang yang paling banyak bicara (kata-kata tidak bermanfaat dan memperolok manusia). Para shahabat bertanya, Wahai Rasulullah, siapakah orang yang paling banyak bicara itu? Nabi menjawab: Yaitu orang-orang yang sombong. (Hr Tirmidzi)',
      },
      {
        'arabic':
            'أَنَّ رَجُلًا قَالَ لِلنَّبِيِّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ أَوْصِنِي قَالَ لَا تَغْضَبْ فَرَدَّدَ مِرَارًا قَالَ لَا تَغْضَبْ',
        'indo':
            'Seseorang berkata kepada Rasulullah saw, \'Nasihati aku!\’ Beliau bersabda, \'Jangan marah!\’ beliau mengulang beberapa kali, \'Jangan marah! (Bukhari).',
      },
      {
        'arabic':
            'كَانَ النَّبِيُّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ يَقُولُ اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ مُنْكَرَاتِ الْأَخْلَاقِ وَالْأَعْمَالِ وَالْأَهْوَاءِ',
        'indo':
            'Nabi shallallahu \'alaihi wasallam mengucapkan: ALAAHUMMA INNII A\'UUDZU BIKA MIN MUNKARAATIL AKHLAAQ WAL A\'MAALI WAL AHWAAAI (Ya Allah! Aku berlindung kepada-Mu dari berbagai kemungkaran akhlak, amal maupun hawa nafsu). (Hr Turmidzi)',
      },
      {
        'arabic':
            'سُئِلَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ عَنْ أَكْثَرِ مَا يُدْخِلُ النَّاسَ الْجَنَّةَ فَقَالَ تَقْوَى اللَّهِ وَحُسْنُ الْخُلُقِ وَسُئِلَ عَنْ أَكْثَرِ مَا يُدْخِلُ النَّاسَ النَّارَ فَقَالَ الْفَمُ وَالْفَرْجُ',
        'indo':
            'Dari Abu Hurairah ia berkata; Rasulullah shallallahu \'alaihi wasallam pernah ditanya tentang sesuatu yang paling banyak memasukkan seseorang ke dalam surga, maka beliau pun menjawab: Takwa kepada Allah dan akhlak yang mulia. Dan beliau juga ditanya tentang sesuatu yang paling banyak memasukkan orang ke dalam neraka, maka beliau menjawab: Mulut dan kemaluan. (Tirmidzi)',
      },
      {
        'arabic':
            'أَنَّ النَّبِيَّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ قَالَ مَا شَيْءٌ أَثْقَلُ فِي مِيزَانِ الْمُؤْمِنِ يَوْمَ الْقِيَامَةِ مِنْ خُلُقٍ حَسَنٍ وَإِنَّ اللَّهَ لَيُبْغِضُ الْفَاحِشَ الْبَذِيءَ',
        'indo':
            'Dari Abu Darda` bahwasanya Nabi shallallahu \'alaihi wasallam bersabda: Tidak sesuatu yang lebih berat dalam timbangan seorang mukmin kelak pada hari kiamat daripada akhlak yang baik. Sesungguhnya Allah amatlah murka terhadap seorang yang keji lagi jahat.(Sunan Tirmidzi)',
      },
      {
        'arabic':
            'كَانَ رَسُوْلُ اللهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ أَحْسَنَ النَّاسِ خُلُقاً',
        'indo':
            'Rasulullah Shallallahu \'alaihi wa sallam adalah orang yang paling baik akhlaknya.(Bukhori wa Muslim)',
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
          'Hadist Akhlak',
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
