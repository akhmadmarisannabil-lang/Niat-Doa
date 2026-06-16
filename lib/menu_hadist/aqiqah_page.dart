import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart'; // Sesuaikan dengan jalur file ThemeProvider Anda

class AqiqahPage extends StatelessWidget {
  const AqiqahPage({super.key});

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

    // Data List konten tentang Aqiqah asli sesuai input (tanpa diubah, dipotong, atau ditambah)
    final List<Map<String, String>> kontenAqiqah = [
      {
        'arabic':
            'كُلُّ غُلاَمٍ رَهِيْـنَـةٌ بِـعَـقِـيْقَتِهِ تُذْبَحُ عَـنْـهُ يَـوْمَ سَابِـعِـهِ وَيُـسَـمَّى فِيْـهِ وَيُـحْلَـقُ رَأْسُـهُ ',
        'indo':
            'Setiap anak yang lahir tergadai aqiqahnya yang disembelih pada hari ketujuh, dan pada hari itu ia diberi nama dan digunduli rambutnya. (Hadits Sahih Riwayat Ahmad, Abu Daud, Tirmidzi, Nasa’I, Ibnu Majah, Baihaqi dan Hakim).',
      },
      {
        'arabic':
            'من ولد له ولد فأحب أن ينسك عنه فلينسك عن الغلام شاتان مكافئتان وعن الجارية شاة ',
        'indo':
            'Artinya : Barangsiapa yang anaknya lahir lalu dia ingin menyembelih (aqiqah) untuknya maka hendaknya dia menyembelih dua kambing yang serupa sifatnya untuk anak lelaki dan seekor kambing untuk anak perempuan. [HR Abu Daud (2842). Hadits hasan.]',
      },
      {
        'arabic':
            'عَنِ ابْنِ عَبَّاسٍ أَنَّ رَسُولَ اللَّهِ -صلى الله عليه وسلم- عَقَّ عَنِ الْحَسَنِ وَالْحُسَيْنِ كَبْشًا كَبْشًا. ',
        'indo':
            'Dari Ibnu \'Abbas, ia berkata, Rasulullah shallallahu \'alaihi wa sallam pernah mengaqiqahi Al Hasan dan Al Husain, masing-masing satu ekor kambing kibas. (HR. Abu Daud)',
      },
      {
        'arabic':
            'كُنَّا فِى اْلجَاهِلِيَّةِ اِذَا وُلِدَ ِلاَحَدِنَا غُلاَمٌ ذَبَحَ شَاةً وَ لَطَخَ رَأْسَهُ بِدَمِهَا، فَلَمَّا جَاءَ اللهُ بِاْلاِسْلاَمِ كُنَّا نَذْبَحُ شَاةً وَ نَحْلِقُ رَأْسَهُ وَ نَلْطَخُهُ بزَعْفَرَانٍ. ابو داود',
        'indo':
            'Artinya : Buraidah berkata : Dahulu kami di masa jahiliyah apabila salah seorang diantara kami mempunyai anak, ia menyembelih kambing dan melumuri kepalanya dengan darah kambing itu. Maka setelah Allah mendatangkan Islam, kami menyembelih kambing, mencukur (menggundul) kepala si bayi dan melumurinya dengan minyak wangi. [HR. Abu Dawud]',
      },
      {
        'arabic': 'العقيقة تذبح لسبع ولأربع عشرة وللإحدى وعشرين',
        'indo':
            'Aqiqah itu dilakukan pada hari ketujuh, hari keempat belas, dan kedua puluh satu. [HR Al Baihaqi (9/303). Hadits shahih]',
      },
      {
        'arabic':
            'عَنْ سَمُرَةَ بْنِ جُنْدَبٍ اَنَّ رَسُوْلَ اللهِ ص قَالَ: كُلُّ غُلاَمٍ رَهِيْنَةٌ بِعَقِيْقَتِهِ تُذْبَحُ عَنْهُ يَوْمَ سَابِعِهِ وَ يُحْلَقُ وَ يُسَمَّى. ابو داود 3: 106، رقم: 2838 ',
        'indo':
            'Dari Samurah bin Jundab, bahwasanya Rasulullah SAW bersabda, Tiap-tiap anak tergadai (tergantung) dengan \'aqiqahnya yang disembelih untuknya pada hari ke-7, di hari itu ia dicukur rambutnya dan diberi nama. [HR. Abu Dawud juz 3, hal. 106, no. 2838]',
      },
      {
        'arabic':
            'أَنَّ رَسُولَ اللَّهِ -صلى الله عليه وسلم- أَمَرَهُمْ عَنِ الْغُلاَمِ شَاتَانِ مُكَافِئَتَانِ وَعَنِ الْجَارِيَةِ شَاةٌ ',
        'indo':
            'Rasululllah shallallahu \'alaihi wasallam memerintahkan mereka, untuk anak laki-laki aqiqah dengan dua ekor kambing dan anak perempuan dengan satu ekor kambing. (HR. Tirmidzi)',
      },
      {
        'arabic':
            'مَنْ اَحَبَّ مِنْكُمْ اَنْ يُنْسَكَ عَنِ وَلَدِهِ فَلْيَفْعَلْ عَنِ الْغُلاَمِ شاَتَاَنِ مُكاَفأَ َتاَنِ وَعَنِ الْجاَ رِيَةِ شاَةٌ',
        'indo':
            'Artinya: Barang siapa diantara kamu ingin beribadah tentang anaknya hendaklah dilakukan aqiqah untuk anak laki-laki dua ekor kambing yang sama umurnya dan untuk anak perempuan seekor kambing.(Hadits riwayat Abu Daud dan Nasai)',
      },
      {
        'arabic':
            'عَنْ يُوْسُفَ بْنِ مَاهَكٍ اَنَّهُمْ دَخَلُوْا عَلَى حَفْصَةَ بِنْتِ عَبْدِ الرَّحْمنِ فَسَأَلُوْهَا عَنِ اْلعَقِيْقَةِ، فَاَخْبَرَتْهُمْ اَنَّ عَائِشَةَ اَخْبَرَتْهَا اَنَّ رَسُوْلَ اللهِ ص اَمَرَهُمْ عَنِ اْلغُلاَمِ شَاتَانِ مُكَافِئَتَانِ وَ عَنِ اْلجَارِيَةِ شَاةٌ. الترمذي',
        'indo':
            'Dari Yusuf bin Mahak bahwasanya orang-orang datang kepada Hafshah binti \'Abdur Rahman, mereka menanyakan kepadanya tentang \'aqiqah. Maka Hafshah memberitahukan kepada mereka bahwasanya \'Aisyah memberitahu kepadanya bahwa Rasulullah SAW telah memerintahkan para shahabat (agar menyembelih \'aqiqah) bagi anak laki-laki 2 ekor kambing yang sebanding dan untuk anak perempuan 1 ekor kambing. [HR. Tirmidzi].',
      },
      {
        'arabic':
            'عَنْ سَلْمَانَ بْنِ عَامِرٍ الضَّبِيّ قَالَ: سَمِعْتُ رَسُوْلَ اللهِ ص يَقُوْلُ: مَعَ اْلغُلاَمِ عَقِيْقَةٌ فَاَهْرِيْقُوْا عَنْهُ دَمًا وَ اَمِيْطُوْا عَنْهُ اْلاَذَى. البخارى 6: 217',
        'indo':
            'Dari Salman bin \'Amir Adl-Dlabiy, ia berkata : Saya mendengar Rasulullah SAW bersabda, Tiap-tiap anak itu ada \'aqiqahnya. Maka sembelihlah binatang \'aqiqah untuknya and buanglah kotoran darinya (cukurlah rambutnya). [HR. Bukhari juz 6, hal. 217]',
      },
      {
        'arabic':
            'عَنْ عَائِشَةَ رض قَالَتْ: عَقَّ رَسُوْلُ اللهِ ص عَنِ اْلحَسَنِ وَ اْلحُسَيْنِ يَوْمَ السَّابِعِ وَ سَمَّاهُمَا وَ اَمَرَ اَنْ يُمَاطَ عَنْ رُؤُوْسِهِمَا اْلاَذَى. الحاكم فى المستدرك 4: 264، رقم: 7588',
        'indo':
            'Artinya:Dari \'Aisyah RA, ia berkata, Rasulullah SAW pernah ber’aqiqah untuk Hasan and Husain pada hari ke-7 dari kelahirannya, beliau memberi nama and memerintahkan supaya dihilangkan kotoran dari kepalanya (dicukur). [HR. Hakim]',
      },
      {
        'arabic':
            'وَزَنَتْ فَاطِمَةُ بِنْتُ رَسُولِ اللَّهِ شَعَرَ حَسَنٍ وَحُسَيْنٍ، فَتَصَدَّقَتْ بِزِنَتِهِ فِضَّةً.',
        'indo':
            'Artinya: Fatimah Binti Rasulullah SAW (setelah melahirkan Hasan and Husain) mencukur rambut Hasan and Husain kemudian ia bersedekah dengan perak seberat timbangan rambutnya.(Hadits riwayat Malik and Ahmad)',
      },
      {
        'arabic':
            '(أَنَّ رَسُولَ اَللَّهِ صلى الله عليه وسلم أَمْرَهُمْ أَنْ يُعَقَّ عَنْ اَلْغُلَامِ شَاتَانِ مُكَافِئَتَانِ, وَعَنْ اَلْجَارِيَةِ شَاةٌ)',
        'indo':
            'Artinya: Rasulullah Shallallaahu \'alaihi wa Sallam memerintahkan mereka agar beraqiqah dua ekor kambing yang sepadan (umur and besarnya) untuk bayi laki-laki and seekor kambing untuk bayi perempuan.(Hadits riwayat Abu Daud)',
      },
      {
        'arabic':
            'عَنْ سَمُرَةَ عَنِ النَّبِيّ ص قَالَ: كُلُ غُلاَمٍ مُرْتَهَنٌ بِعَقِيْقَتِهِ. تُذْبَحُ عَنْهُ يَوْمَ السَّابِعِ وَ يُحْلَقُ رَأْسُهُ وَ يُسَمَّى. ابن ماجه 2: 1056، رقم: 3165',
        'indo':
            'Dari Samurah, dari Nabi SAW, beliau bersabda, Setiap anak tergadai dengan \'aqiqahnya, yang disembelih untuknya pada hari ke-7, dicukur rambutnya, and diberi nama. [HR. Ibnu Majah juz 2, hal. 1056, no. 3165]',
      },
      {
        'arabic':
            'عَنْ اُمّ كُرْزٍ اَنَّهَا سَأَلَتْ رَسُوْلَ اللهِ ص عَنِ اْلعَقِيْقَةِ فَقَالَ: نَعَمْ. عَنِ اْلغُلاَمِ شَاتَانِ وَ عَنِ اْلجَارِيَةِ وَاحِدَةٌ، لاَ يَضُرُّكُمْ ذُكْرَانًا كُنَّ اَمْ اِنَاثًا. الترمذى وصححه، 3: 35، رقم: 1550 ',
        'indo':
            'Dari Ummu Kurz (Al-Ka\'biyah), bahwasanya ia pernah bertanya kepada Rasulullah SAW tentang \'aqiqah. Maka jawab beliau SAW, Ya, untuk anak laki-laki dua ekor kambing and untuk anak perempuan satu ekor kambing. Tidak menyusahkanmu baik kambing itu jantan maupun betina. [HR. Tirmidzi]',
      },
      {
        'arabic':
            'حَدَّثَنَا عَبْدُ اللَّهِ بْنُ بَرَّادٍ الْأَشْعَرِيُّ وَمُحَمَّدُ بْنُ الْعَلَاءِ الْهَمْدَانِيُّ قَالَا حَدَّثَنَا أَبُو أُسَامَةَ حَدَّثَنِي بُرَيْدٌ عَنْ أَبِي بُرْدَةَ عَنْ أَبِي مُوسَى قَالَ بَلَغَنَا مَخْرَجُ رَسُولِ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ وَنَحْنُ بِالْيَمَنِ فَخَرَجْنَا مُهَاجِرِينَ إِلَيْهِ أَنَا وَأَخَوَانِ لِي أَنَا أَصْغَرُهُمَا أَحَدُهُمَا أَبُو بُرْدَةَ وَالْآخَرُ أَبُو رُهْمٍ إِمَّا قَالَ بِضْعًا وَإِمَّا قَالَ ثَلَاثَةً وَخَمْسِينَ أَوْ اثْنَيْنِ وَخَمْسِينَ رَجُلًا مِنْ قَوْمِي قَالَ فَرَكِبْنَا سَفِينَةً فَأَلْقَتْنَا سَفِينَتُنَا إِلَى النَّجَاشِيِّ بِالْحَبَشَةِ فَوَافَقْنَا جَعْفَرَ بْنَ أَبِي طَالِبٍ وَأَصْحَابَهُ عِنْدَهُ فَقَالَ جَعْفَرٌ إِنَّ رَسُولَ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ بَعَثَنَا هَاهُنَا وَأَمَرَنَا بِالْإِقَامَةِ فَأَقِيمُوا مَعَنَا فَأَقَمْنَا مَعَهُ حَتَّى قَدِمْنَا جَمِيعًا قَالَ فَوَافَقْنَا رَسُولَ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ حِينَ افْتَتَحَ خَيْبَرَ فَأَسْهَمَ لَنَا أَوْ قَالَ أَعْطَانَا مِنْهَا وَمَا قَسَمَ لِأَحَدٍ غَابَ عَنْ فَتْحِ خَيْبَرَ مِنْهَا شَيْئًا إِلَّا لِمَنْ شَهِدَ مَعَهُ إِلَّا لِأَصْحَابِ سَفِينَتِنَا مَعَ جَعْفَرٍ وَأَصْحَابِهِ قَسَمَ لَهُمْ مَعَهُمْ قَالَ فَكَانَ نَاسٌ مِنْ النَّاسِ يَقُولُونَ لَنَا يَعْنِي لِأَهْلِ السَّفِينَةِ نَحْنُ سَبَقْنَاكُمْ بِالْهِجْرَةِ قَالَ فَدَخَلَتْ أَسْمَاءُ بِنْتُ عُمَيْسٍ وَهِيَ مِمَّنْ قَدِمَ مَعَنَا عَلَى حَفْصَةَ زَوْجِ النَّبِيِّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ زَائِرَةً وَقَدْ كَانَتْ هَاجَرَتْ إِلَى النَّجَاشِيِّ فِيمَنْ هَاجَرَ إِلَيْهِ فَدَخَلَ عُمَرُ عَلَى حَفْصَةَ وَأَسْمَاءُ عِنْدَهَا فَقَالَ عُمَرُ حِينَ رَأَى أَسْمَاءَ مَنْ هَذِهِ قَالَتْ أَسْمَاءُ بِنْتُ عُمَيْسٍ قَالَ عُمَرُ الْحَبَشِيَّةُ هَذِهِ الْبَحْرِيَّةُ هَذِهِ فَقَالَتْ أَسْمَاءُ نَعَمْ فَقَالَ عُمَرُ سَبَقْنَاكُمْ بِالْهِجْرَةِ فَنَحْنُ أَحَقُّ بِرَسُولِ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ مِنْكُمْ فَغَضِبَتْ وَقَالَتْ كَلِمَةً كَذَبْتَ يَا عُمَرُ كَلَّا وَاللَّهِ كُنْتُمْ مَعَ رَسُولِ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ يُطْعِمُ جَائِعَكُمْ وَيَعِظُ جَاهِلَكُمْ وَكُنَّا فِي دَارِ أَوْ فِي أَرْضِ الْبُعَدَاءِ الْبُغَضَاءِ فِي الْحَبَشَةِ وَذَلِكَ فِي اللَّهِ وَفِي رَسُولِهِ وَايْمُ اللَّهِ لَا أَطْعَمُ طَعَامًا وَلَا أَشْرَبُ شَرَابًا حَتَّى أَذْكُرَ مَا قُلْتَ لِرَسُولِ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ وَنَحْنُ كُنَّا نُؤْذَى وَنُخَافُ وَسَأَذْكُرُ ذَلِكَ لِرَسُولِ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ وَأَسْأَلُهُ وَ وَاللَّهِ لَا أَكْذِبُ وَلَا أَزِيغُ وَلَا أَزِيدُ عَلَى ذَلِكَ قَالَ فَلَمَّا جَاءَ النَّبِيُّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ قَالَتْ يَا نَبِيَّ اللَّهِ إِنَّ عُمَرَ قَالَ كَذَا وَكَذَا فَقَالَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ لَيْسَ بِأَحَقَّ بِي مِنْكُمْ وَلَهُ وَلِأَصْحَابِهِ هِجْرَةٌ وَاحِدَةٌ وَلَكُمْ أَنْتُمْ أَهْلَ السَّفِينَةِ هِجْرَتَانِ قَالَتْ فَلَقَدْ رَأَيْتُ أَبَا مُوسَى وَأَصْحَابَ السَّفِينَةِ يَأْتُونِي أَرْسَالًا يَسْأَلُونِي عَنْ هَذَا الْحَدِيثِ مَا مِنْ الدُّنْيَا شَيْءٌ هُمْ بِهِ أَفْرَحُ وَلَا أَعْظَمُ فِي أَنْفُسِهِمْ مِمَّا قَالَ لَهُمْ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ قَالَ أَبُو بُرْدَةَ فَقَالَتْ أَسْمَاءُ فَلَقَدْ رَأَيْتُ أَبَا مُوسَى وَإِنَّهُ لَيَسْتَعِيدُ هَذَا الْحَدِيثَ مِنِّي',
        'indo':
            'Dari \'Aisyah, ia berkata, Dahulu orang-orang pada masa jahiliyah apabila mereka ber’aqiqah untuk seorang bayi, mereka melumuri kapas dengan darah \'aqiqah, lalu ketika mencukur rambut si bayi mereka melumurkan pada kepalanya. Maka Nabi SAW bersabda, Gantilah darah itu dengan minyak wangi. [HR. Ibnu Hibban]',
      },
      {
        'arabic':
            'قَالَ أَبُوْ هُرَيْرَةَ رَضِيَ اللهُ عَنْهُ: قَالَ رَسُوْلُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ : اَلْـعَـقِـيْقَتةُ تُـذْبَحُ لِسَـبْعٍ وَلِأَرْبَعَ عَشَرَةَ وَلِإِحْدَى وَعِشْرِيْنَ',
        'indo':
            'Kata Abu Hurairah r.a., Nabi saw. bersabda, Aqiqah itu disembelih pada hari ketujuh, atau keempat belas , atau keduapuluh satunya. (HR. Baihaqi and Thabrani).',
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
          'Hadist Tentang Aqiqah',
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
            children: [
              ...kontenAqiqah.asMap().entries.map((entry) {
                final int idx = entry.key;
                final Map<String, String> item = entry.value;
                final bool hasArabic = item['arabic']!.isNotEmpty;

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Merender widget Text Arab hanya jika string tidak kosong
                    if (hasArabic) ...[
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
                    // Teks Indonesia atau penjelasan (selalu muncul)
                    Text(
                      item['indo']!,
                      style: TextStyle(
                        color: subTextColor,
                        fontSize: 14,
                        height: 1.5,
                      ),
                    ),
                    // Pembatas Antar Elemen
                    if (idx < kontenAqiqah.length - 1) ...[
                      const SizedBox(height: 24),
                      Divider(color: dividerColor, thickness: 1),
                      const SizedBox(height: 24),
                    ],
                  ],
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
