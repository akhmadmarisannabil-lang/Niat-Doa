import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';

class FitnahPage extends StatelessWidget {
  const FitnahPage({super.key});

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
            'أَنَّ أَبَا هُرَيْرَةَ قَالَ قَالَ رَسُولُ اللَّهِ -صلى الله عليه وسلم- « يَتَقَارَبُ الزَّمَانُ وَيُقْبَضُ الْعِلْمُ وَتَظْهَرُ الْفِتَنُ وَيُلْقَى الشُّحُّ وَيَكْثُرُ الْهَرْجُ ». قَالُوا وَمَا الْهَرْجُ قَالَ « الْقَتْلُ »',
        'indo':
            'Artinya: "Zaman akan semakin dekat, dicabutnya ilmu, akan timbul fitnah-fitnah, dimasukkan (ke dalam hati) sifat kikir dan akan banyak al harj", mereka (para shahabat) bertanya: "Apakah al harj,wahai Rasulullah?", beliau menjawab: "Pembunuhan". HR. Bukhari dan Muslim.',
      },
      {
        'arabic':
            'مَا أَنْتَ بِمُحَدِّثٍ قَوْمًا حَدِيثًا لاَ تَبْلُغُهُ عُقُولُهُمْ إِلاَّ كَانَ لِبَعْضِهِمْ فِتْنَةً.',
        'indo':
            'Artinya: "Tidak anda berbicara dengan suatu kaum sebuah pembicaraan yang tidak bisa dipahami oleh akal mereka kecuali akan menjadi fitnah bagi sebagian dari mereka". HR.Muslim.',
      },
      {
        'arabic': 'لَمْ يَبْقَ مِنَ الدُّنْيَا إِلَّا بَلَاءٌ وَفِتْنَةٌ',
        'indo':
            '"Tidaklah akan tersisa dari dunia ini melainkan cobaan dan fitnah." (HR. Ibnu Majah)',
      },
      {
        'arabic':
            'قَالَ رَسُوْلُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ سَيَأْتِيْ عَلَى النَّاسِ سَنَوَاتٌ خَدَّاعَاتُ يُصَدَّقُ فِيْهَا الْكَاذِبُ وَيُكَذَّبُ فِيْهَا الصَّادِقُ وَيُؤْتَمَنُ فِيْهَا الْخَائِنُ وَيُخَوَّنُ فِيْهَا الْأَمِيْنُ وَيَنْطِقُ فِيْهَا الرُّوَيْبِضَةُ قِيْلَ وَمَا الرُّوَيْبِضَةُ قَالَ الرَّجُلُ التَّافِهُ فِى أَمْرِ الْعَامَّةِ',
        'indo':
            'Rasulullah saw. bersabda: "Akan datang tahun-tahun penuh dengan kedustaan yang menimpa manusia. Pendusta dipercaya, orang yang jujur didustakan, amanat diberikan kepada pengkhianat, orang yang jujur dikhianati, dan Ruwaibidlah turut bicara." Lalu beliau ditanya, "Apakah Ruwaibidlah itu?" beliau menjawab: "Orang-orang bodoh yang mengurusi urusan orang banyak (umat)." (HR. Ibnu Majah)',
      },
      {
        'arabic':
            'سَتَكُوْنَ فِتَنٌ القاعِدُ فِيْها خَيْرٌ مِنَ الْقَائِمِ والقائمُ فيها خيرٌ من المَاشِي والماشِي فيها خير من السَّاعِي. مَنْ تَشَرَّفَ لَها تَسْتَشْرِفْهُ وَمَنْ وَجَدَ مَلْجَأً أَوْ مَعَاذاً فَلْيَعِذْ بِهِ',
        'indo':
            '“Kelak akan ada banyak kekacauan dimana di dalamnya orang yang duduk lebih baik daripada yang berdiri, yang berdiri lebih baik daripada yang berjalan, dan yang berjalan lebih baik daripada yang berusaha (dalam fitnah). Siapa yang menghadapi kekacauan tersebut maka hendaknya dia menghindarinya dan siapa yang mendapati tempat kembali atau tempat berlindung darinya maka hendaknya dia berlindung.” (HR. Al-Bukhari no. 3601 dan Muslim no. 2886)',
      },
      {
        'arabic':
            'سَتَكُوْنُ فِتَنُ وَفِرْقَةٌ فَإِذَا كَانَ كَذَلِكَ فَاكْسِرْ سَيِفَكَ وَاتَّخِذْ سَيْفاً مِنْ خَشَبٍ',
        'indo':
            '“Kelak akan ada banyak kekacauan dan perpecahan. Jika sudah seperti itu maka patahkanlah pedangmu dan pakailah pedang dari kayu.” (HR. Ahmad no. 20622)',
      },
      {
        'arabic': 'ما تركت بعدي فتنة هي أضر على الرجال من النساء',
        'indo':
            '“Tidak aku tinggalkan di masa setelah aku nanti fitnah yang lebih memadharati kaum lelaki dari pada fitnah wanita.” (HR Bukhari 5096, Muslim 2740).',
      },
      {
        'arabic':
            'تَعَوَّذُوا بِاللهِ مِنْ الْفِتَنِ  مَا ظَهَرَ مِنْهَا وَمَا بَطَنَ',
        'indo':
            '“Berlindunglah kalian kepada Allah dari segala fitnah, baik yang tampak ataupun yang tersembunyi” (HR Muslim : 2867).',
      },
      {
        'arabic':
            'لاَ تَقُوْمُ السَّاعَةُ حَتَّى تَقْتَتِلَ فِئَتَانِ عَظِيْمَتَانِ يَكُوْنُ بَيْنَهُمَا مَقْتَلَةٌ عَظِيْمَةٌ دَعْوَتُهُمَا وَاحِدَةٌ وَحَتَّى يُبْعَثَ دَجَّالُوْنَ كَذَّابُوْنَ قَرِيْبٌ مِنْ ثَلاَثِيْنَ كُلُّهُمْ يَزْعُمُ أَنَّهُ رَسُوْلُ اللهِ وَحَتَّى يُقْبَضَ الْعِلْمُ وَتَكْثُرَ الزَّلاَزِلُ وَيَتَقَارَبَ الزَّمَانُ وَتَظْهَرَ الْفِتَنُ وَيَكْثُرَ الْهَرْجُ وَهُوَ الْقَتْلُ وَحَتَّى يَكْثُرَ فِيْكُمُ الْمَالُ فَيَفِيْضَ حَتَّى يُهِمَّ رَبَّ الْمَالِ مَنْ يَقْبَلُ صَدَقَتَهُ وَحَتَّى يَعْرِضَهُ عَلَيْهِ فَيَقُوْلَ الَّذِي يَعْرِضُهُ عَلَيْهِ: لاَ أَرَبَ لِي بِهِ؛ وَحَتَّى يَتَطَاوَلَ النَّاسُ فِي الْبُنْيَانِ وَحَتَّى يَمُرَّ الرَّجُلُ بِقَبْرِ الرَّجُلِ فَيَقُوْلُ: يَا لَيْتَنِي مَكَانَهُ؛ وَحَتَّى تَطْلُعَ الشَّمْسُ مِنْ مَغْرِبِهَا فَإِذَا طَلَعَتْ وَرَآهَا النَّاسُ يَعْنِي آمَنُوا أَجْمَعُوْنَ فَذَلِكَ حِيْنَ لاَ يَنْفَعُ نَفْسًا إِيْمَانُهَا لَمْ تَكُنْ آمَنَتْ مِنْ قَبْلُ أَوْ كَسَبَتْ فِي إِيْمَانِهَا خَيْرًا',
        'indo':
            '“Tidak akan terjadi hari kiamat sehingga dua kelompok besar saling berperang dan banyak terbunuh di antara dua kelompok tersebut, yang seruan mereka adalah satu. Dan hingga dibangkitkannya para Dajjal lagi pendusta hampir 30 orang, semuanya mengaku bahwa dirinya Rasulullah, dicabutnya ilmu, banyak terjadi gempa, zaman berdekatan, fitnah menjadi muncul, banyak terjadi pembunuhan, berlimpah ruahnya harta di tengah kalian sehingga para pemilik harta bingung terhadap orang yang akan menerima shadaqahnya. Sampai dia berusaha menawarkannya kepada seseorang namun orang tersebut berkata: ‘Saya tidak membutuhkannya’; orang berlomba-lomba dalam meninggikan bangunan. Ketika seseorang lewat pada sebuah kuburan dia berkata: ‘Aduhai jika saya berada di sana’; terbitnya matahari dari sebelah barat dan apabila terbit dari sebelah barat di saat orang-orang melihatnya, mereka beriman seluruhnya (maka itulah waktu yang tidak bermanfaat keimanan bagi setiap orang yang sebelumnya dia tidak beriman atau dia tidak berbuat kebaikan dengan keimanannya).',
      },
      {
        'arabic':
            'عَنْ أَبِي هُرَيْرَةَ أَنَّ رَسُولَ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ قَالَ أَتَدْرُونَ مَا الْمُفْلِسُ قَالُوا الْمُفْلِسُ فِينَا مَنْ لاَ دِرْهَمَ لَهُ وَلاَ مَتَاعَ، فَقَالَ إِنَّ الْمُفْلِسَ مِنْ أُمَّتِي يَأْتِي يَوْمَ الْقِيَامَةِ بِصَلاَةٍ وَصِيَامٍ وَزَكَاةٍ وَيَأْتِي قَدْ شَتَمَ هَذَا وَقَذَفَ هَذَا وَأَكَلَ مَالَ هَذَا وَسَفَكَ دَمَ هَذَا وَضَرَبَ هَذَا فَيُعْطَى هَذَا مِنْ حَسَنَاتِهِ وَهَذَا مِنْ حَسَنَاتِهِ فَإِنْ فَنِيَتْ حَسَنَاتُهُ قَبْلَ أَنْ يُقْضَى مَا عَلَيْهِ أُخِذَ مِنْ خَطَايَاهُمْ فَطُرِحَتْ عَلَيْهِ ثُمَّ طُرِحَ فِي النَّار',
        'indo':
            'Dari Abu Hurairah ra berkata, bahwasanya Rasulullah SAW bersabda, ‘Tahukah kalian siapakah orang yang muflis (bankrap) itu? Para sahabat menjawab, ‘Orang yang muflis (bankrap) diantara kami adalah orang yang tidak punya dirham dan tidak punya harta.’ Rasulullah SAW bersabda, ‘Orang yang muflis (bankrap) dari umatku adalah orang yang datang pada hari kiamat dengan (pahala) melaksanakan shalat, menjalankan puasa dan menunaikan zakat, namun ia juga datang (membawa dosa) dengan mencela si ini, menuduh si ini (memfitnah), memakan harta ini dan menumpahkan darah si ini serta memukul si ini. Maka akan diberinya orang-orang tersebut dari kebaikan-kebaikannya. Dan jika kebaikannya telah habis sebelum ia menunaikan kewajibannya, diambillah keburukan dosa-dosa mereka, lalu dicampakkan padanya dan ia dilemparkan ke dalam neraka. [HR: Muslim No. 2581]',
      },
      {
        'arabic':
            'عَصَمَنِي اللَّهُ بِشَيْءٍ سَمِعْتُهُ مِنْ رَسُولِ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ لَمَّا هَلَكَ كِسْرَى، قَالَ: “مَنْ اسْتَخْلَفُوا؟ ” قَالُوا: ابْنَتَهُ، فَقَالَ النَّبِيُّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ: “لَنْ يُفْلِحَ قَوْمٌ وَلَّوْا أَمْرَهُمْ امْرَأَةً”، قَالَ: فَلَمَّا قَدِمَتْ عَائِشَةُ يَعْنِي البَصْرَةَ ذَكَرْتُ قَوْلَ رَسُولِ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ فَعَصَمَنِي اللَّهُ بِهِ: هَذَا حَدِيثٌ صَحِيحٌ',
        'indo':
            'Allah telah menjaga ku dari fitnah (perang jamal) berkat sesuatu (satu hadits) yang aku dengar dari Rasulullah shalallahu alaihi wasallam ketika Kisra (raja Persia) meninggal, beliau bersabda, “siapa penggantinya?” Para Sahabat menjawab, “putrinya”, maka beliau pun bersabda, “Tidak akan sukses selamanya sebuah kaum, yang menyerahkan urusan mereka (pemimpin) kepada seorang perempuan”. Abu Bakrah radhiyallahu anhu berkata, “Ketika Aisyah radhiyallahu berangkat ke Bashrah, aku ingat hadits Rasulullah tersebut, maka Allah pun menyelamatkan aku (dengan tidak ikut ikutan fitnah yaitu peperangan jamal)” (HR Tirmidzi : 2262)',
      },
      {
        'arabic': '',
        'indo':
            'Dari Abu Hurairah, bahwa Rasulullah (shallallahu ‘alaihi wa sallam) bersabda, “Bersegeralah untuk mengerjakan amalan-amalan shaleh sebelum datang berbagai fitnah seperti potongan-potongan kegelapan malam, di mana seseorang beriman di waktu pagi hari, kemudian menjadi kafir di sore hari, ataupun beriman di sore hari, kemudian menjadi kafir di pagi hari. Dia menjual agamanya demi kepentingan dunia.” (HR. Muslim).',
      },
      {
        'arabic': '',
        'indo':
            'Dari Abu Musa Al-Asy’ari, dia berkata, Rasulullah (shallallahu ‘alaihi wa sallam) bersabda, “Sesungguhnya menjelang terjadinya hari kiamat, akan terjadi berbagai macam fitnah seperti potongan-potongan kegelapan malam, di mana seseorang beriman di waktu pagi hari kemudian menjadi kafir di sore hari, ataupun beriman di sore hari kemudian menjadi kafir di pagi hari. Ketika itu, orang yang duduk lebih baik daripada orang yang berdiri, orang yang berdiri lebih baik dari orang yang berjalan, dan orang yang berjalan lebih baik daripada orang yang berlari, maka hancurkanlah busur-busur kalian, putuskanlah tali-tali busur kalian, serta pukulkanlah pedang-pedang kalian kepada bebatuan, dan jika fitnah tersebut memasuki kediamannya, hendaklah dia menjadi sebaik-baik anak Adam.” (HR. Abu Dawud).',
      },
      {
        'arabic': '',
        'indo':
            'Tidak akan terjadi hari kiamat sampai ada seseorang melewati kuburan lalu berkata, “Seandainya aku berada di tempatnya.” (HR. Bukhari dan Muslim).',
      },
      {
        'arabic': '',
        'indo':
            'Hadis Rasulullah SAW diriwayatkan dari Hudzaifah ra berkata: Aku telah mendengar Rasulullah SAW bersabda: "Tidak akan masuk surga orang yang suka menebar fitnah."',
      },
      {
        'arabic': '',
        'indo':
            'Hudzaifah berkata, “Saya mendengar Rasulullah shallalluhu ‘alaihi wa sallam bersabda, “Fitnah dibentangkan di atas hati-hati seperti tikar, berulang-ulang. Hati yang menyerap fitnah tersebut disematkan di dalamnya titik hitam, sedangkan hati yang menolak fitnah tersebut disematkan titik putih, sampai memenuhi dua hati itu. Hati yang pertama putih bersih, tidak akan terganggu oleh fitnah sedikitpun selama langit dan bumi masih tegak. Sedangkan hati yang kedua hitam pekat, seperti cangkir terbalik, tidak mengenal yang ma’ruf dan tidak mampu mengingkari kemungkaran, hanya mengikuti hawa nafsunya.” ( HR. Muslim).',
      },
      {
        'arabic': '',
        'indo':
            'Dari Abdullah bin Umar radliyallahu anhuma berkata, aku pernah mendengar Rosulullah Shallallahu alaihi wa sallam bersabda, “Barangsiapa yang berkata mengenai seorang mukmin yang tidak ada padanya, maka Allah akan menempatkannya pada “rodghah al-Khabal” sehingga ia keluar dari apa yang ia katakan”',
      },
      {
        'arabic': '',
        'indo':
            '“Sesungguhnya di antara yang aku takutkan atas kamu adalah syahwat mengikuti nafsu pada perut kamu dan pada kemaluan kamu serta fitnah-fitnah yang menyesatkan.” (H. R. Ahmad).',
      },
      {
        'arabic': '',
        'indo':
            'Dalam hadist yang diriwayatkan oleh Hudzaifah RA, Rasulullah SAW bersabda yang artinya;  “Tidak akan masuk surga orang yang suka menebar fitnah.”',
      },
      {
        'arabic': '',
        'indo':
            'Telah menceritakan kami \'Ali bin \'Abdullah telah menceritakan kami Azhar bin Sa\'d dari Ibnu \'Aun dari Nafi\' dari Ibnu Umar mengatakan, Nabi shallallahu \'alaihi wasallam pernah memanjatkan doa; "Ya Allah, berilah kami barakah dalam Syam kami, ya Allah, berilah kami barakah dalam Yaman kami." Para sahabat berkata; \'ya Rasulullah, dan juga dalam Nejed kami! \' Rasulullah Shallallahu\'alaihiwasallam membaca doa: "Ya Allah, berilah kami barakah dalam Syam kami, ya Allah, berilah kami barakah dalam Yaman kami." Para sahabat berkata; \'Ya Rasulullah, juga dalam Nejed kami! \' dan seingatku, pada kali ketiga, beliau bersabda; "Disanalah muncul keguncangan dan fitnah, dan disanalah tanduk setan muncul."',
      },
      {
        'arabic': '',
        'indo':
            'Dari ‘Abdullah bin ‘Amr bin Al-Ash berkata, “Sesungguhnya seluruh nabi sebelumku pasti telah menunjukkan semua kebaikan yang ia ketahui kepada umatnya, dan memperingatkan mereka dari semua keburukan yang ia ketahui. Dan sesungguhnya, kebaikan umat ini terletak pada generasi pertama, adapun generasi belakangan, they akan tertimpa cobaan dan perkara-perkara yang kalian ingkari, fitnah datang silih berganti, ketika fitnah itu menimpa, orang yang beriman berkata, ‘Kebinasaanku telah tiba!’ Kemudian fitnah itu berlalu. Lalu muncul fitnah  lagi, orang yang beriman berkata, ‘Inilah saatnya, inilah saatnya!’ Barangsiapa yang ingin dijauhkan dari neraka dan masuk surge, maka hendaknya dia berusaha mati dalam keadaan beriman kepada Allah dan hari akhir, dan hendaklah dia bergaul dengan manusia dengan baik, sebagaimana dia senang jika manusia bersikap baik kepadanya. dan barangsiapa yang berbaiat untuk menaati seorang pemimpin, dia mengikrarkan perjanjian dengan sepenuh hatinya, maka hendaklah dia menaatinya semaksimal mungkin. Jika ada orang yang berusaha menyelisihinya, maka penggallah leher orang tersebut.” (HR. Muslim).',
      },
      {
        'arabic': '',
        'indo':
            'Telah menceritakan kepada kami Musa bin Isma’il berkata, Telah menceritakan kepada kami Wuhaib berkata, Telah menceritakan kepada kami Hisyam dari Fatimah dari Asma’ berkata: Aku menemui Aisyah saat dia sedang shalat. Setelah itu aku tanyakan kepadanya: Apa yang sedang dilakukan orang-orang? Aisyah memberi isyarat ke langit. Ternyata orang-orang sedang melaksanakan shalat (gerhana matahari). Maka Aisyah berkata: Maha suci Allah. Aku tanyakan lagi: Satu tanda saja? Lalu dia memberi isyarat dengan kepalanya, maksudnya mengangguk tanda mengiyakan. Maka akupun ikut shalat namun timbul perasaan yang membingungkanku, hingga aku siram kepalaku dengan air. Dalam khutbahnya, Nabi shallallahu ‘alaihi wasallam memuji Allah dan mensucikan-Nya, lalu bersabda: Tidak ada sesuatu yang belum diperlihatkan kepadaku, kecuali aku sudah melihatnya dari tempatku ini hingga surga dan neraka, lalu diwahyukan kepadaku: bahwa kalian akan terkena fitnah dalam kubur kalian seperti -atau hampir berupa- fitnah -yang aku sendiri tidak tahu apa yang diucapkan Asma’ diantaranya adalah fitnah Al Masihud dajjal-; akan ditanyakan kepada seseorang (didalam kuburnya); Apa yang kamu ketahui tentang laki-laki ini? Adapun orang beriman atau orang yang yakin, -Asma’ kurang pasti mana yang dimaksud diantara keduanya- akan menjawab: ‘Dia adalah Muhammad Rasulullah telah datang kepada kami membawa penjelasan dan petunjuk. Maka kami sambut dan kami ikuti. Dia adalah Muhammad, ‘ diucapkannya tiga kali. Maka kepada orang itu dikatakan: ‘Tidurlah dengan tenang, sungguh kami telah mengetahui bahwa kamu adalah orang yang yakin’. Adapun orang Munafiq atau orang yang ragu, -Asma’ kurang pasti mana yang dimaksud diantara keduanya-, akan menjawab; aku tidak tahu siapa dia, aku mendengar manusia membicarakan sesuatu maka akupun mengatakannya. (hr. Bukhari)',
      },
      {
        'arabic': '',
        'indo':
            'Telah menceritakan kepada kami Abdullah bin Yusuf Telah mengabarkan kepada kami Malik dari Abdurrahman bin Abdullah bin Abi Sha\'Sha\'ah dari ayahnya dari Abu Sa\'id Al Khudzri radliallahu \'anhu, bahwasanya ia menuturkan, Rasulullah shallallahu \'alaihi wasallam bersabda: "tak lama lagi sebaik-baik harta seorang muslim adalah kambing yang ia gembalakan di lereng-lereng gunung dan tempat-tempat hujan turun, ia lari untuk menyelamatkan agamanya dari gelombang fitnah."',
      },
      {
        'arabic': '',
        'indo':
            'Telah menceritakan kepada kami Shadaqah telah mengabarkan kepada kami Ibnu ‘Uyainah dari Ma’mar dari Az Zuhri dari Hind dari Ummu Salamah dan ‘Amru. Dan dari Yahya bin Sa’id dari Az Zuhri dari Hind dari Ummu Salamah berkata, “Pada suatu malam Nabi shallallahu ‘alaihi wasallam terbangun lalu bersabda: “Subhaanallah (Maha suci Allah), fitnah apakah yang diturunkan pada malam ini? Dan apa yang dibuka dari dua perbendaharaan (Ramawi dan Parsi)? Bangunlah wahai orang-orang yang ada di balik dinding (kamar-kamar), karena betapa banyak orang hidup menikmati nikmat-nikmat dari Allah di dunia ini namun akan telanjang nanti di akhirat (tidak mendapatkan kebaikan).” (Hr. Bukhari)',
      },
      {
        'arabic': '',
        'indo':
            'Hudzaifah ra berkata: Saat itu kami sedang duduk-duduk bersama Umar. Maka berkatalah Umar, “Siapakah di antara kalian yang tahu betul terhadap sabda Rasulullah Shallallahu ‘Alaihi Wasallam yang berkaitan dengan fitnah?” Maka aku pun menjawab, “Akulah orangnya.” Maka, Umar berkara, “Sungguh, engkau terhadap masalah ini termasuk orang yang berani.” Maka aku pun langsung mengatakan permasalah itu di hadapannya, “(Ketahuilah), fitnah yang menimpa seorang laki-laki terkait keluarga, harta, anak, atau tetangganya dapat dilebur dengan shalat, puasa, sedekah, dan melakukan amar makruf dan nahi munkar.” Umar berkata, “Bukan itu yang aku maksudkan, tetapi fitnah yang menerpa (umat Islam) laksana gelombang samudera.” Maka Hudzaifah berkata, “(Tenang saja) engkau tidak akan mengalami pedihnya fitnah itu, wahai Amirul Mukminin, karena antara fitnah itu dan diri Anda terdapat pintu yang tertutup (yang menghalanginya).” Umar balik bertanya, “Apakah pintu tersebut akan terbuka atau didobrak?’ Hudzaifah menjawab, “Pintu tersebut akan didobrak secara paksa.” Kami (perawi) pun berkata, “Apakah Umar juga mengetahui ‘pintu’ itu?” Hudzaifah menjawab, “Iya, dia pun juga mengetahuinya seperti siang yang akan mendahului malam. Ketahuilah, aku tidak menceritakan hal ini dengan mengada-ada. Biarkan aku pergi untuk bertanya langsung kepada Hudzaifah. Maka kami pun menyuruh Masruq untuk menanyakannya, maka Hudzaifah pun menjawab, ‘Pintu itu adalah Umar’.” [HR. Al-Bukhari]',
      },
      {
        'arabic': '',
        'indo':
            'Dari Abu Hurairah radliyallahu anhu bahwasanya pernah ditanyakan, “Wahai Rasulullah, apakah ghibah itu?”. Beliau menjawab, “Kamu menceritakan saudaramu apa yang dia tidak suka”. Ditanyakan lagi, “Bagaimana pendapatmu, jika pada saudaraku itu seperti apa yang aku katakan?”. Beliau menjawab, “Jika ada padanya sebagaimana yang kamu katakan berarti kamu telah meng-ghibahnya, tetapi jika tidak ada padanya, maka bererti kamu telah mem-buhtannya(membuat kebohongan/fitnah)”.',
      },
      {
        'arabic': '',
        'indo':
            'Dari Ibnu Abbas r.a, bahwa sesungguhnya Rasulullah saw pernah berjalan melewati 2 (dua) kuburan, kemudian beliau bersabda : “Sesungguhnya 2 (dua) orang ahli kubur itu disiksa dan keduanya tidak disiksa karena dosa besar. Ya, benar. Sesungguhnya dosa itu adalah besar. Salah seorang di antara keduanya adalah berjalan di muka bumi dengan menyebarkan fitnah (mengumpat). Sedang salah seorang yang lain tidak bertirai ketika kencing”. (H.R. Bukhari dan Muslim).',
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
          'Hadist Tentang Fitnah',
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
