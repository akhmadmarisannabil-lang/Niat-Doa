import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart'; // Sesuaikan dengan jalur file ThemeProvider Anda

class MunafikPage extends StatelessWidget {
  const MunafikPage({super.key});

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

    // Data List konten tentang Munafik asli sesuai input (tanpa diubah, dipotong, atau ditambah)
    final List<Map<String, String>> kontenMunafik = [
      {
        'arabic':
            'آيَةُ الْمُنَافِقِ ثَلَاثٌ إِذَا حَدَّثَ كَذَبَ وَإِذَا وَعَدَ أَخْلَفَ وَإِذَا اؤْتُمِنَ خَانَ',
        'indo':
            'Artinya :Tanda-tanda orang munafik itu ada tiga. jika berbicara ia berbohong, jika berjanji ia ingkar, dan jika dipercaya ia berkhianat. (HR Bukhari)',
      },
      {'arabic': '', 'indo': 'dalam riwayat lain,'},
      {
        'arabic':
            'آيَةُ الْمُنَافِقِ ثَلاَثٌ وَإِنْ صَامَ وَصَلَّى وَزَعَمَ أَنَّهُ مُسْلِمٌ',
        'indo':
            '“Tanda munafik itu ada tiga, walaupun orang tersebut puasa dan mengerjakan shalat, lalu ia mengklaim dirinya muslim.” (HR. Muslim no. 59)',
      },
      {
        'arabic': '',
        'indo':
            'Dari ‘Abdullah bin ‘Amr radhiyallahu ‘anhu, ia berkata bahwa Rasulullah shallallahu ‘alaihi wa sallam bersabda,',
      },
      {
        'arabic':
            'أَرْبَعٌ مَنْ كُنَّ فِيهِ كَانَ مُنَافِقًا خَالِصًا ، وَمَنْ كَانَتْ فِيهِ خَصْلَةٌ مِنْهُنَّ كَانَتْ فِيهِ خَصْلَةٌ مِنَ النِّفَاقِ حَتَّى يَدَعَهَا إِذَا اؤْتُمِنَ خَانَ وَإِذَا حَدَّثَ كَذَبَ وَإِذَا عَاهَدَ غَدَرَ ، وَإِذَا خَاصَمَ فَجَرَ',
        'indo':
            '“Ada empat tanda, jika seseorang memiliki empat tanda ini, maka ia disebut munafik sejati/tulen. Jika ia memiliki salah satu tandanya, maka dalam dirinya ada tanda kemunafikan sampai ia meninggalkan perilaku tersebut, yaitu: (1) jika diberi amanat, khianat; (2) jika berbicara, dusta; (3) jika membuat perjanjian, tidak dipenuhi; (4) jika berselisih, dia akan berbuat zalim.” (HR. Muslim no. 58)',
      },
      {
        'arabic':
            'عَلَيْكُمْ بِالصِّدْقِ فَإِنَّ الصِّدْقَ يَهْدِى إِلَى الْبِرِّ وَإِنَّ الْبِرَّ يَهْدِى إِلَى الْجَنَّةِ وَمَا يَزَالُ الرَّجُلُ يَصْدُقُ وَيَتَحَرَّى الصِّدْقَ حَتَّى يُكْتَبَ عِنْدَ اللَّهِ صِدِّيقًا وَإِيَّاكُمْ وَالْكَذِبَ فَإِنَّ الْكَذِبَ يَهْدِى إِلَى الْفُجُورِ وَإِنَّ الْفُجُورَ يَهْدِى إِلَى النَّارِ وَمَا يَزَالُ الرَّجُلُ يَكْذِبُ وَيَتَحَرَّى الْكَذِبَ حَتَّى يُكْتَبَ عِنْدَ اللَّهِ كَذَّابًا',
        'indo':
            '“Hendaklah kalian senantiasa berlaku jujur, karena sesungguhnya kejujuran akan megantarkan pada kebaikan dan sesungguhnya kebaikan akan mengantarkan pada surga. Jika seseorang senantiasa berlaku jujur dan berusaha untuk jujur, maka dia akan dicatat di sisi Allah sebagai orang yang jujur. Hati-hatilah kalian dari berbuat dusta, karena sesungguhnya dusta akan mengantarkan kepada kejahatan dan kejahatan akan mengantarkan pada neraka. Jika seseorang sukanya berdusta dan berupaya untuk berdusta, maka ia akan dicatat di sisi Allah sebagai pendusta.” (HR. Bukhari no. 6094 dan Muslim no. 2607)',
      },
      {
        'arabic':
            'أَدِّ الأَمَانَةَ إِلَى مَنِ ائْتَمَنَكَ وَلاَ تَخُنْ مَنْ خَانَكَ',
        'indo':
            '“Tunaikanlah amanat pada orang yang memberikan amanat padamu dan janganlah mengkhianati orang yang mengkhianatimu” (HR. Abu Daud no. 3535, Tirmidzi no. 1264 dann Ahmad 3: 414)',
      },
      {
        'arabic':
            'وقال ابنُ أبي مُلَيْكَة : أَدْرَكْتُ ثَلاَثِيْنَ مِنْ أَصْحَابِ النَّبيِّ – صلى الله عليه وسلم – كُلُّهُمْ يَخَافُ النِّفَاقَ عَلَى نَفْسِهِ .',
        'indo':
            '“Ibnu Abi Mulaikah pernah berkata: Aku telah mendapati 30 orang sahabat Nabi shallallahu ‘alaihi wa sallam, semuanya khawatir pada dirinya tertimpa kemunafikan.” (HR. Bukhari no. 36)',
      },
      {
        'arabic':
            'حَدَّثَنَا قُتَيْبَةُ بْنُ سَعِيدٍ وَأَبُو كَامِلٍ الْجَحْدَرِيُّ كِلَاهُمَا عَنْ أَبِي عَوَانَةَ قَالَ قُتَيْبَةُ حَدَّثَنَا أَبُو عَوَانَةَ عَنْ قَتَادَةَ عَنْ أَنَسٍ عَنْ أَبِي مُوسَى الْأَشْعَرِيِّ قَالَ\nقَالَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ مَثَلُ الْمُؤْمِنِ الَّذِي يَقْرَأُ الْقُرْآنَ مَثَلُ الْأُتْرُجَّةِ رِيحُهَا طَيِّبٌ وَطَعْمُهَا طَيِّبٌ وَمَثَلُ الْمُؤْمِنِ الَّذِي لَا يَقْرَأُ الْقُرْآنَ مَثَلُ التَّمْرَةِ لَا رِيحَ لَهَا وَطَعْمُهَا حُلْوٌ وَمَثَلُ الْمُنَافِقِ الَّذِي يَقْرَأُ الْقُرْآنَ مَثَلُ الرَّيْحَانَةِ رِيحُهَا طَيِّبٌ وَطَعْمُهَا مُرٌّ وَمَثَلُ الْمُنَافِقِ الَّذِي لَا يَقْرَأُ الْقُرْآنَ كَمَثَلِ الْحَنْظَلَةِ لَيْسَ لَهَا رِيحٌ وَطَعْمُهَا مُرٌّ \nو حَدَّثَنَا هَدَّابُ بْنُ خَالِدٍ حَدَّثَنَا هَمَّامٌ ح و حَدَّثَنَا مُحَمَّدُ بْنُ الْمُثَنَّى حَدَّثَنَا يَحْيَى بْنُ سَعِيدٍ عَنْ شُعْبَةَ كِلَاهُمَا عَنْ قَتَادَةَ بِهَذَا الْإِسْنَادِ مِثْلَهُ غَيْرَ أَنَّ فِي حَدِيثِ هَمَّامٍ بَدَلَ الْمُنَافِقِ الْفَاجِرِ',
        'indo':
            "Artinya : Hadis riwayat Abu Musa Al-Asy'ari Radhiyallahu 'anhu , ia berkata:Rasulullah Shallallahu 'alaihi wa sallam bersabda: Perumpamaan orang mukmin yang membaca Alquran adalah seperti perumpamaan buah utrujah, baunya harum dan rasanya enak. Perumpamaan orang mukmin yang tidak membaca Alquran adalah seperti buah kurma, tidak ada baunya sama sekali namun rasanya manis. Perumpamaan orang munafik yang membaca Alquran adalah seperti buah raihanah, baunya harum namun rasanya pahit. Sedangkan perumpamaan orang munafik yang tidak membaca Alquran adalah seperti buah peria, tidak ada baunya sama sekali dan rasanya pahit(HR Muslim).",
      },
      {
        'arabic':
            'حَدَّثَنَا الْحَسَنُ بْنُ عَلِيِّ الْحُلْوَانِيُّ وَمُحَمَّدُ بْنُ سَهْلٍ التَّمِيمِيُّ قَالَا حَدَّثَنَا ابْنُ أَبِي مَرْيَمَ أَخْبَرَنَا مُحَمَّدُ بْنُ جَعْفَرٍ أَخْبَرَنِي زَيْدُ بْنُ أَسْلَمَ عَنْ عَطَاءِ بْنِ يَسَارٍ عَنْ أَبِي سَعِيدٍ الْخُدْرِيِّ\nأَنَّ رِجَالًا مِنْ الْمُنَافِقِينَ فِي عَهْدِ رَسُولِ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ كَانُوا إِذَا خَرَجَ النَّبِيُّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ إِلَى الْغَزْوِ تَخَلَّفُوا عَنْهُ وَفَرِحُوا بِمَقْعَدِهِمْ خِلَافَ رَسُولِ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ فَإِذَا قَدِمَ النَّبِيُّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ اعْتَذَرُوا إِلَيْهِ وَحَلَفُوا وَأَحَبُّوا أَنْ يُحْمَدُوا بِمَا لَمْ يَفْعَلُوا فَنَزَلَتْ\n[ لَا تَحْسَبَنَّ الَّذِينَ يَفْرَحُونَ بِمَا أَتَوْا وَيُحِبُّونَ أَنْ يُحْمَدُوا بِمَا لَمْ يَفْعَلُوا فَلَا تَحْسَبَنَّهُمْ بِمَفَازَةٍ مِنْ الْعَذَابِ ]',
        'indo':
            "Hadis riwayat Abu Said Al-Khudri Radhiyallahu 'anhu : ia berkata:Bahwa beberapa orang munafik pada masa Rasulullah Shallallahu 'alaihi wa sallam selalu tidak ikut serta bila Nabi Shallallahu 'alaihi wa sallam pergi berperang. Mereka bergembira-ria dengan ketidakikutsertaan mereka bersama Rasulullah Shallallahu 'alaihi wa sallam Lalu apabila Nabi Shallallahu 'alaihi wa sallam telah kembali, mereka mengemukakan alasan kepada beliau sambil bersumpah dan berharap mendapatkan pujian dengan apa yang tidak mereka perbuat. Maka turunlah ayat: Janganlah sekali-kali kamu menyangka, bahwa orang-orang yang gembira dengan apa yang telah mereka kerjakan dan mereka suka supaya dipuji terhadap perbuatan yang belum mereka kerjakan, janganlah kamu menyangka mereka akan terlepas dari siksa. (HR Muslim).",
      },
      {
        'arabic':
            'قِيلَ لِرَسُولِ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ أَيَكُونُ الْمُؤْمِنُ جَبَانًا فَقَالَ نَعَمْ فَقِيلَ لَهُ أَيَكُونُ الْمُؤْمِنُ بَخِيلًا فَقَالَ نَعَمْ فَقِيلَ لَهُ أَيَكُونُ الْمُؤْمِنُ كَذَّابًا فَقَالَ لَاََََ',
        'indo':
            'Ditanyakan kepada Rasulullah Saw: “Apakah seorang mukmin bisa menjadi penakut?” Beliau menjawab: ‘Ya.” Lalu ditanya lagi: “Apakah seorang mukmin bisa menjadi bakhil?” Beliau menjawab: “Ya.” Lalu ditanyakan lagi: “Apakah seorang mukmin bisa menjadi pembohong?” Beliau menjawab: “Tidak!” (HR. Malik dari Sofwan bin Sulaim dalam Al-Muwatha\')',
      },
      {
        'arabic':
            'حَدَّثَنَا قُتَيْبَةُ بْنُ سَعِيدٍ حَدَّثَنَا عَبْدُ الْعَزِيزِ يَعْنِي الدَّرَاوَرْدِيَّ عَنْ الْعَلَاءِ عَنْ أَبِيهِ عَنْ أَبِي هُرَيْرَةَ\nأَنَّ رَسُولَ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ قَالَ يَأْتِي عَلَى النَّاسِ زَمَانٌ يَدْعُو الرَّجُلُ ابْنَ عَمِّهِ وَقَرِيبَهُ هَلُمَّ إِلَى الرَّخَاءِ هَلُمَّ إِلَى الرَّخَاءِ وَالْمَدِينَةُ خَيْرٌ لَهُمْ لَوْ كَانُوا يَعْلَمُونَ وَالَّذِي نَفْسِي بِيَدِهِ لَا يَخْرُجُ مِنْهُمْ أَحَدٌ رَغْبَةً عَنْهَا إِلَّا أَخْلَفَ اللَّهُ فِيهَا خَيْرًا مِنْهُ أَلَا إِنَّ الْمَدِينَةَ كَالْكِيرِ تُخْرِجُ الْخَبِيثَ لَا تَقُومُ السَّاعَةُ حَتَّى تَنْفِيَ الْمَدِينَةُ شِرَارَهَا كَمَا يَنْفِي الْكِيرُ خَبَثَ الْحَدِيدِ',
        'indo':
            "Artinya : Hadis riwayat Abu Hurairah Radhiyallahu 'anhu : ia berkata:Bahwa Rasulullah Shallallahu 'alaihi wa sallam bersabda: Akan datang suatu zaman di mana seorang lelaki mengajak saudara sepupunya atau kerabatnya yang lain: Marilah bersenang-senang! Marilah bersenang-senang! Padahal Madinah itu lebih baik bagi mereka seandainya mereka mengetahui. Demi Tuhan yang jiwaku berada dalam genggaman tangan-Nya, setiap orang dari mereka yang meninggalkan Madinah karena tidak menyukainya, maka Allah akan menggantikan dengan orang yang lebih baik daripadanya. Ketahuilah, sesungguhnya Madinah itu seperti alat peniup api yang akan mengeluarkan segala yang kotor (orang kafir dan munafik). Kiamat tidak akan terjadi sebelum Madinah mengeluarkan orang-orang jahat yang berada di dalamnya seperti alat peniup api yang menyisihkan kotoran besi.(HR Muslim).",
      },
      {
        'arabic':
            'و حَدَّثَنِي زُهَيْرُ بْنُ حَرْبٍ قَالَ حَدَّثَنِي مُعَاذُ بْنُ مُعَاذٍ ح و حَدَّثَنَا عُبَيْدُ اللَّهِ بْنُ مُعَاذٍ وَاللَّفْظُ لَهُ حَدَّثَنَا أَبِي حَدَّثَنَا شُعْبَةُ عَنْ عَدِيِّ بْنِ ثَابِتٍ قَالَ سَمِعْتُ الْبَرَاءَ\nيُحَدِّثُ عَنْ النَّبِيِّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ أَنَّهُ قَالَ فِي الْأَنْصَارِ لَا يُحِبُّهُمْ إِلَّا مُؤْمِنٌ وَلَا يُبْغِضُهُمْ إِلَّا مُنَافِقٌ مَنْ أَحَبَّهُمْ أَحَبَّهُ اللَّهُ وَمَنْ أَبْغَضَهُمْ أَبْغَضَهُ اللَّهُ\nقَالَ شُعْبَةُ قُلْتُ لِعَدِيٍّ سَمِعْتَهُ مِنْ الْبَرَاءِ قَالَ إِيَّايَ حَدَّثَ',
        'indo':
            "Hadis riwayat Barra' Radhiyallahu 'anhu , ia berkata:Nabi Shallallahu 'alaihi wa sallam bersabda tentang kaum Ansar: Yang mencintai mereka hanyalah orang yang beriman dan yang membenci mereka hanyalah orang munafik. Barang siapa yang mencintai mereka, maka Allah mencintainya. Dan Barang siapa yang membenci mereka, maka Allah membencinya. (HR Muslim)",
      },
      {
        'arabic': '',
        'indo':
            'Hadis riwayat Zaid bin Tsabit ra.: Bahwa Nabi saw. berangkat untuk berperang di bukit Uhud lalu kembalilah sebagian dari mereka yang ikut bersama beliau sehingga terpecahlah para pengikut Nabi saw. menjadi dua bagian. Sebagian mereka mengatakan kita akan bunuh mereka dan sebagian lagi berpendapat tidak. Lalu turunlah ayat: Maka mengapa kamu terpecah menjadi dua golongan dalam menghadapi orang-orang munafik.(HR Muslim)',
      },
      {
        'arabic': '',
        'indo':
            'Hadis riwayat Anas bin Malik ra., ia berkata: Di antara kami terdapat seorang lelaki dari Bani Najjar yang telah membaca surat Al-Baqarah dan surat Ali Imran serta pernah menjadi penulis wahyu Rasulullah saw. lalu dia melarikan diri dan bergabung dengan Ahli Kitab yang menyanjung-nyanjungnya. Kata mereka: Orang ini pernah menjadi penulis wahyu Muhammad. Sehingga mereka pun terkagum dengannya. Tidak berapa lama berada di antara Ahli Kitab, Allah menimpakan bencana kepada orang itu sehingga binasalah ia. Orang-orang Ahli Kitab segera menggalikan kuburan untuknya lalu menimbunkan tanah ke atas jasadnya. Keesokan harinya, bumi telah memuntahkan jasadnya ke atas permukaan. Mereka pun kembali menggali kubur dan menimbun tetapi keesokan paginya bumi telah memuntahkannya lagi ke atas permukaan. Kemudian mereka menggali dan menguburnya lagi. Namun keesokan paginya bumi kembali memuntahkannya ke atas permukaan lalu mereka pun membiarkan jasadnya terbuang. (HR Muslim)',
      },
      {
        'arabic': '',
        'indo':
            'Hadis riwayat Abu Said Al-Khudri ra.: Bahwa beberapa orang munafik pada masa Rasulullah saw. selalu tidak ikut serta bila Nabi saw. pergi berperang. Mereka bergembira-ria dengan ketidakikutsertaan mereka bersama Rasulullah saw. Lalu apabila Nabi saw. telah kembali, mereka mengemukakan alasan kepada beliau sambil bersumpah dan berharap mendapatkan pujian dengan apa yang tidak mereka perbuat. Maka turunlah ayat: Janganlah sekali-kali kamu menyangka, bahwa orang-orang yang gembira dengan apa yang telah mereka kerjakan dan mereka suka supaya dipuji terhadap perbuatan yang belum mereka kerjakan, janganlah kamu menyangka mereka akan terlepas dari siksa.(HR Muslim)',
      },
      {
        'arabic': '',
        'indo':
            'Imam Muslim menceritakan dari Abu Musa Al-Asy’ari, Rasulullah shallalahu ‘alaihi wa sallam bersabda, “Siapa yang mati dalam keadaan tidak pernah berperang dan tidak pernah terbetik dalam dirinya, maka ia mati di atas cabang kemunafikan.',
      },
      {
        'arabic': '',
        'indo':
            'Rasulullah shallallahu ‘alaihi wa sallam bersabda, “Ada dua sifat yang tidak akan pernah tergabung dalam hati orang munafik: perilaku luhur dan pemahaman dalam agama” (HR At-Tirmidzi).',
      },
      {
        'arabic': '',
        'indo':
            'Rasulullah shallallahu ‘alaihi wa sallam bersabda, “Siapa yang menunaikan shalat berjama’ah selama 40 dengan memperoleh takbiratul ihram imam, maka ia akan ditetapkan terbebas dari dua hal, yakni terbebas dari neraka dan terbebas dari kenifakan” (HR At-Tirmidzi).',
      },
      {
        'arabic': '',
        'indo':
            '"Tanda iman adalah mencintai orang-orang Anshar dan tanda munafik adalah membenci orang-orang Anshar"(HR Bukhori dan Muslim).',
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
          'Hadist Tentang Munafik',
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
              ...kontenMunafik.asMap().entries.map((entry) {
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
                    // Teks Indonesia (selalu muncul)
                    Text(
                      item['indo']!,
                      style: TextStyle(
                        color: subTextColor,
                        fontSize: 14,
                        height: 1.5,
                      ),
                    ),
                    // Pembatas Antar Elemen
                    if (idx < kontenMunafik.length - 1) ...[
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
