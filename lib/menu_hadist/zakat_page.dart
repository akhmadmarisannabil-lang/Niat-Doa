import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';

class ZakatPage extends StatelessWidget {
  const ZakatPage({super.key});

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
            'فَرَضَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ زَكَاةَ الْفِطْرِ طُهْرَةَ لِلصَّائِمِ مِنْ الَّغْوِ وَالرَّفَثِ وَطُعْمَةَ لِلْمَسَاكِيْنَ',
        'indo':
            'Rasulullah Saw mewajibkan zakat fitrah untuk mensucikan diri orang puasa dari perbuatan sia-sia (al-laghw) dan perkataan kotor (ar-rafats), sekaligus untuk memberi makan orang-orang miskin.',
      },
      {
        'arabic':
            'عَنِ اِبْنِ عَبَّاسٍ رَضِيَ اَللَّهُ عَنْهُمَا: ( أَنَّ اَلنَّبِيَّ صلى الله عليه وسلم بَعَثَ مُعَاذًا رضي الله عنه إِلَى اَلْيَمَنِ )  فَذَكَرَ اَلْحَدِيثَ, وَفِيهِ: ( أَنَّ اَللَّهَ قَدِ اِفْتَرَضَ عَلَيْهِمْ صَدَقَةً فِي أَمْوَالِهِمْ, تُؤْخَذُ مِنْ أَغْنِيَائِهِمْ, فَتُرَدُّ فِي فُقَرَائِهِمْ )  مُتَّفَقٌ عَلَيْهِ, وَاللَّفْظُ لِلْبُخَارِيّ ِ',
        'indo':
            'Dari Ibnu Abbas r. bahwa Nabi Shallallaahu \'alaihi wa Sallam mengutus Mu\'adz ke negeri Yaman --ia meneruskan hadits itu-- dan didalamnya (beliau bersabda): "Sesungguhnya Allah telah mewajibkan mereka zakat dari harta mereka yang diambil dari orang-orang kaya di antara mereka dan dibagikan kepada orang-orang fakir di antara mereka." Muttafaq Alaihi dan lafadznya menurut Bukhari.',
      },
      {
        'arabic': 'أَغْنِمُوْا عَنِ السُؤَالِ فِى ذَلِكَ اليَوْمِ .',
        'indo':
            'Rasulullah Saw bersabda: Buatlah mereka tidak perlu meminta-minta pada hari itu.',
      },
      {
        'arabic':
            'صَوْمُ رَمَضَانَ مُعَلَّقٌ بَيْنَ السَّمَاءِ وَالأَرْضِ لاَيَرْفَعَ إِلاَّ بِزَكَاَةِ الفِطْرِ',
        'indo':
            'Beliau juga bersabda, Puasa Ramadhan menggantung antara langit dan bumi, tidak akan naik kecuali dengan ditunaikannya zakat fitrah.',
      },
      {
        'arabic':
            'أَنَّ رَسُوْلُ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ فَرَضَ زَكَاةَ الْفِطْرِ صَاعَا مِنْ تَمْرِ أَوْ صَاعَا مِنْ شَعِيْرٍ عَلَى كُلِّ حُرِّ أَوْ عَبْدٍ ذَكَرٍ أَوْ أُنْثَى مِنْ الْمُسْلِمِيْنَ .',
        'indo':
            'Bahwa Rasulullah Saw mewajibkan zakat fitrah dari Ramadhan sebesar satu sha’ kurma, atau sha’ gandum, atas setiap orang merdeka maupun budak, laki-laki maupun perempuan, dari kalangan kaum muslimin.',
      },
      {
        'arabic': 'وكانوا يعطونها قبل الفطر بيوم او يومين',
        'indo':
            '“adalah para sahabat Nabi SAW., mengeluarkan zakat fitri sehari atau dua hari sebelum hari raya.” (HR. Bukhori)',
      },
      {
        'arabic':
            'وَعَنْ سَالِمِ بْنِ عَبْدِ اَللَّهِ, عَنْ أَبِيهِ, عَنْ اَلنَّبِيِّ صلى الله عليه وسلم قَالَ: ( فِيمَا سَقَتِ اَلسَّمَاءُ وَالْعُيُون , أَوْ كَانَ عَثَرِيًّا: اَلْعُشْرُ, وَفِيمَا سُقِيَ بِالنَّضْحِ: نِصْفُ اَلْعُشْرِ. )  رَوَاهُ اَلْبُخَارِيّ ُ. وَلِأَبِي دَاوُدَ: ( أَوْ كَانَ بَعْلًا: اَلْعُشْرُ, وَفِيمَا سُقِيَ بِالسَّوَانِي أَوِ اَلنَّضْحِ: نِصْفُ اَلْعُشْرِ )',
        'indo':
            'Dari Salim Ibnu Abdullah, dari ayahnya r.a, bahwa Nabi Shallallaahu \'alaihi wa Sallam bersabda: "Tanaman yang disiram dengan air hujan atau dengan sumber air atau dengan pengisapan air dari tanah, zakatnya sepersepuluh, dan tanaman yang disiram dengan tenaga manusia, zakatnya seperduapuluh." Riwayat Bukhari. Menurut riwayat Abu Dawud: "Bila tanaman ba\'al (tanaman yang menyerap air dari tanah), zakatnya sepersepuluh, dan tanaman yang disiram dengan tenaga manusia atau binatang, zakatnya setengah dari sepersepuluh (1/20)."',
      },
      {
        'arabic':
            'وَعَنْ أَبِي مُوسَى اَلْأَشْعَرِيِّ; وَمُعَاذٍ رَضِيَ اَللَّهُ عَنْهُمَا; أَنَّ اَلنَّبِيَّ صلى الله عليه وسلم قَالَ لَهُمَا: ( لَا تَأْخُذَا فِي اَلصَّدَقَةِ إِلَّا مِنْ هَذِهِ اَلْأَصْنَافِ اَلْأَرْبَعَةِ: اَلشَّعِيرِ, وَالْحِنْطَةِ, وَالزَّبِيبِ, وَالتَّمْرِ )  رَوَاهُ اَلطَّبَرَانِيُّ, وَالْحَاكِم ُ',
        'indo':
            'Dari Abu Musa al-Asy\'ary dan Mu\'adz Radliyallaahu \'anhu bahwa Rasulullah Shallallaahu \'alaihi wa Sallam bersabda kepada keduanya: "Jangan mengambil zakat kecuali dari keempat jenis ini, yakni: sya\'ir, gandum, anggur kering, dan kurma." Riwayat Thabrani dan Hakim.',
      },
      {
        'arabic':
            'وَعَنْ عَلِيٍّ رضي الله عنه أَنَّ اَلْعَبَّاسَ رضي الله عنه ( سَأَلَ اَلنَّبِيَّ صلى الله عليه وسلم فِي تَعْجِيلِ صَدَقَتِهِ قَبْلَ أَنْ تَحِلَّ, فَرَخَّصَ لَهُ فِي ذَلِكَ )  رَوَاهُ اَلتِّرْمِذِيُّ, وَالْحَاكِم ُ',
        'indo':
            'Dari Ali bahwa Abbas bertanya kepada Nabi Shallallaahu \'alaihi wa Sallam penyegeraan pengeluaran zakat sebelum waktunya, lalu beliau mengizinkannya. Riwayat Tirmidzi dan Hakim',
      },
      {
        'arabic':
            'حَدِيْثُ أبِي سَعِيدٍ الْخُدْرِيّ رَضِيَ اللهُ عَنْهُ : عَنِ النَّبِيِّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ قَالَ لَيْسَ فِيمَا دُوْنَ خَمْسَةِ أوْسُقٍ صَدَقَةٌ وَلاَ فِيمَا دُوْنَ خَمْسِ ذَوْدٍ صَدَقَةٌ وَلاَ فِيمََا دُونَ خَمْسِ أوَاقٍ  صَدَقَةٌ ﴿ متفق عليه ﴾',
        'indo':
            'Diriwayatkan dari Abi Sa’id Al-Khudri r.a, dia telah berkata: Nabi SAW telah bersabda: “Hasil bumi yang kurang dari lima wasaq (gantang), tidak diwajibkan zakat. Unta yang kurang dari lima ekor, tidak diwajibkan zakat. Perak  yang kurang dari lima uqiah (satu uqiah adalah sama dengan empat puluh dirham perak), tidak diwajibkan zakat. (Muttafaq ‘Alaih)',
      },
      {
        'arabic':
            'وَلَهُ مِنْ حَدِيثِ أَبِي سَعِيدٍ: ( لَيْسَ فِيمَا دُونَ خَمْسَةِ أَوْسَاقٍ مِنْ تَمْرٍ وَلَا حَبٍّ صَدَقَةٌ ). وَأَصْلُ حَدِيثِ أَبِي سَعِيدٍ مُتَّفَقٌ عَلَيْه',
        'indo':
            'Menurut riwayatnya dari hadits Abu Said r.a: "Tidak ada zakat pada kurma dan biji-bijian yang kurang dari 5 ausaq (1050 liter)." Asal hadits dari Abu Said itu Muttafaq Alaihi.',
      },
      {
        'arabic':
            'عَنِ اِ بْنِ عَبَاسٍ قَالَ لَمَّا نَزَلَتْ وَالَّذِيْنَ يَكْنِزُوْنَ الذَّهَبِ وَ الْفِضَّةَ كَبُرَ ذَلِكَ عَلَى الْمُسْلِمِيْنَ فَقَالَ عُمَرُ اَنَا اُفَرِّجُ عَنْكُمْ فَانْطَلَقَ فَقَالَ يَابِيَ اللهِ اَنَّهُ كَبِرَ عَلَى اَصْحَابِكَ هَذِهِ الأَيَةِ فَقَالَ إِنَّ اللهَ لَمْ يَفْرِضِ الزَّكوةَ اِلاَّ لِيُصَيِّبَا مَا بَقِيَ مِنْ اَمْوَالَكُمْ وَاِنَّمَا فَرَضَ الْمُوَازِيْثَ وَذَكَرَ كَلِمَةً لِتَكُوْنَ لِمَنْ بَعْدَكُمْ . ( رواه ابوداود و كذا الشكوة )',
        'indo':
            'Ibnu Abbas ra. berkata, “Ketika ayat, dan mereka yang menimbun emas dan perak diwahyukan , kaum muslimin merasa sangat susah.maka Umar ra. berkata, “Aku akan mencari jalan keluar bagi kalian.” Iapun pergi dan berkata kepada Nabi saw, “Wahai Nabiyullah, sesungguhnya ayat ini terasa berat bagi sahabatmu.” Nabi Saw. bersabda, “Sesungguhnya Allah tidak mewajibkan zakat kecuali untuk menyucikan harta yang tersisa padamu, sesungguhnya mewajib waris agar kamu dijaga oleh orang-orang setelahmu.(HR. Abu Daud)',
      },
      {
        'arabic':
            'لازكاة فى مال حتّى يحول عليه الحول (رواه ابن ماجه عن عائيشة)',
        'indo':
            '“tak ada zakat pada harta kecuali cukup satahun harta itu dimilikinya”',
      },
      {
        'arabic':
            'وَعَنْ أَنَسٍ رضي الله عنه أَنَّ أَبَا بَكْرٍ اَلصِّدِّيقَ رضي الله عنه كَتَبَ لَه ُ ( هَذِهِ فَرِيضَةُ اَلصَّدَقَةِ اَلَّتِي فَرَضَهَا رَسُولُ اَللَّهِ صلى الله عليه وسلم عَلَى اَلْمُسْلِمِينَ, وَاَلَّتِي أَمَرَ اَللَّهُ بِهَا رَسُولَه ُ فِي أَرْبَعٍ وَعِشْرِينَ مِنَ اَلْإِبِلِ فَمَا دُونَهَا اَلْغَنَم ُ فِي كُلِّ خَمْسٍ شَاةٌ, فَإِذَا بَلَغَتْ خَمْسًا وَعِشْرِينَ إِلَى خَمْسٍ وَثَلَاثِينَ فَفِيهَا بِنْتُ مَخَاضٍ أُنْثَى فَإِنْ لَمْ تَكُنْ فَابْنُ لَبُونٍ ذَكَر ٍ فَإِذَا بَلَغَتْ سِتًّا وَثَلَاثِينَ إِلَى خَمْسٍ وَأَرْبَعِينَ فَفِيهَا بِنْتُ لَبُون ٍ أُنْثَى, فَإِذَا بَلَغَتْ سِتًّا وَأَرْبَعِينَ إِلَى سِتِّينَ فَفِيهَا حِقَّةٌ طَرُوقَةُ اَلْجَمَل ِ فَإِذَا بَلَغَتْ وَاحِدَةً وَسِتِّينَ إِلَى خَمْسٍ وَسَبْعِينَ فَفِيهَا جَذَعَة ٌ فَإِذَا بَلَغَتْ سِتًّا وَتِسْعِينَ إِلَى تِسْعِينَ فَفِيهَا بِنْتَا لَبُونٍ, فَإِذَا بَلَغَتْ إِحْدَى وَتِسْعِينَ إِلَى عِشْرِينَ وَمِائَةٍ فَفِيهَا حِقَّتَانِ طَرُوقَتَا اَلْجَمَلِ, فَإِذَا زَادَتْ عَلَى عِشْرِينَ وَمِائَةٍ فَفِي كُلِّ أَرْبَعِينَ بِنْتُ لَبُونٍ, وَفِي كُلِّ خَمْسِينَ حِقَّةٌ, وَمَنْ لَمْ يَكُنْ مَعَهُ إِلَّا أَرْبَعٌ مِنَ اَلْإِبِلِ فَلَيْسَ فِيهَا صَدَقَةٌ إِلَّا أَنْ يَشَاءَ رَبُّهَا وَفِي صَدَقَةِ اَلْغَنَمِ سَائِمَتِهَا إِذَا كَانَتْ أَرْبَعِينَ إِلَى عِشْرِينَ وَمِائَةِ شَاة ٍ شَاةٌ, فَإِذَا زَادَتْ عَلَى عِشْرِينَ وَمِائَةٍ إِلَى مِائَتَيْنِ فَفِيهَا شَاتَانِ, فَإِذَا زَادَتْ عَلَى مِائَتَيْنِ إِلَى ثَلَاثمِائَةٍ فَفِيهَا ثَلَاثُ شِيَاه ٍ فَإِذَا زَادَتْ عَلَى ثَلَاثِمِائَةٍ فَفِي كُلِّ مِائَةٍ شَاةٌ، فَإِذَا كَانَتْ سَائِمَةُ اَلرَّجُلِ نَاقِصَةً مِنْ أَرْبَعِينَ شَاة ٍ شَاةً وَاحِدَةً فَلَيْسَ فِيهَا صَدَقَةٌ, إِلَّا أَنْ يَشَاءَ رَبُّهَا. وَلَا يُجْمَعُ بَيْنَ مُتَفَرِّقٍ وَلَا يُفَرَّقُ بَيْنَ مُجْتَمِعٍ خَشْيَةَ اَلصَّدَقَةِ, وَمَا كَانَ مِنْ خَلِيطَيْنِ فَإِنَّهُمَا يَتَرَاجَعَانِ بَيْنَهُمَا بِالسَّوِيَّةِ, وَلَا يُخْرَجُ فِي اَلصَّدَقَةِ هَرِمَة ٌ وَلَا ذَاتُ عَوَارٍ, إِلَّا أَنْ يَشَاءَ اَلْمُصَّدِّقُ، وَفِي اَلرِّقَة ِ رُبُعُ اَلْعُشْرِ, فَإِنْ لَمْ تَكُن ْ إِلَّا تِسْعِينَ وَمِائَةً فَلَيْسَ فِيهَا صَدَقَةٌ إِلَّا أَنْ يَشَاءَ رَبُّهَا, وَمَنْ بَلَغَتْ عِنْدَهُ مِنَ اَلْإِبِلِ صَدَقَةُ اَلْجَذَعَةِ وَلَيْسَتْ عِنْدَهُ جَذَعَةٌ وَعِنْدَهُ حِقَّةٌ, فَإِنَّهَا تُقْبَلُ مِنْهُ اَلْحِقَّةُ, وَيَجْعَلُ مَعَهَا شَاتَيْنِ إِنِ اِسْتَيْسَرَتَا لَهُ, أَوْ عِشْرِينَ دِرْهَمًا, وَمَنْ بَلَغَتْ عِنْدَهُ صَدَقَةُ اَلْحِقَّةِ وَلَيْسَتْ عِنْدَهُ اَلْحِقَّةُ, وَعِنْدَهُ اَلْجَذَعَة...ُ, فَإِنَّهَا تُقْبَلُ مِنْهُ اَلْجَذَعَةُ, وَيُعْطِيهِ اَلْمُصَّدِّقُ عِشْرِينَ دِرْهَمًا أَوْ شَاتَيْنِ )  رَوَاهُ اَلْبُخَارِيّ',
        'indo':
            '“Dari Anas bahwa Abu Bakar ash-Shiddiq Radliyallaahu \'anhu menulis surat kepadanya: Ini adalah kewajiban zakat yang diwajibkan oleh Rasulullah Shallallaahu \'alaihi wa Sallam atas kaum muslimin. Yang diperintahkan Allah atas rasul-Nya ialah setiap 24 ekor unta ke bawah wajib mengeluarkan kambing, yaitu setiap kelipatan lima ekor unta zakatnya seekor kambing. Jika mencapai 25 hingga 35 ekor unta, zakatnya seekor anak unta betina yang umurnya telah menginjak tahun kedua, jika tidak ada zakatnya seekor anak unta jantan yang umurnya telah menginjak tahun ketiga. Jika mencapai 36 hingga 45 ekor unta, zakatnya seekor anak unta betina yang umurnya telah menginjak tahun ketiga. Jika mencapai 46 hingga 60 ekor unta, zakatnya seekor anak unta betina yang umurnya telah masuk tahun keempat dan bisa dikawini unta jantan. Jika mencapai 61 hingga 75 ekor unta, zakatnya seekor unta betina yang umurnya telah masuk tahun kelima. Jika mencapai 79 hingga 90 ekor unta, zakatnya dua ekor anak unta betina yang umurnya telah menginjak tahun kedua. Jika mencapai 91 hingga 120 ekor unta, maka setiap 40 ekor zakatnya seekor anak unta betina yang umurnya masuk tahun ketiga dan setiap 50 ekor zakatnya seekor unta betina yang umurnya masuk tahun keempat. Bagi yang hanya memiliki 4 ekor unta, tidak wajib atasnya zakat kecuali bila pemiliknya menginginkan. Mengenai zakat kambing yang dilepas mencari makan sendiri, jika mencapai 40 hingga 120 ekor kambing, zakatnya seekor kambing. Jika lebih dari 120 hingga 200 ekor kambing, zakatnya dua ekor kambing. Jika lebih dari 200 hingga 300 kambing, zakatnya tiga ekor kambing. Jika lebih dari 300 ekor kambing, maka setiap 100 ekor zakatnya seekor kambing. Apabila jumlah kambing yang dilepas mencari makan sendiri kurang dari 40 ekor, maka tidak wajib atasnya zakat kecuali jika pemiliknya menginginkan. Tidak boleh dikumpulkan antara hewan-hewan ternak terpisah dan tidak boleh dipisahkan antara hewan-hewan ternak yang terkumpul karena takut mengeluarkan zakat. Hewan ternak kumpulan dari dua orang, pada waktu zakat harus kembali dibagi rata antara keduanya. Tidak boleh dikeluarkan untuk zakat hewan yang tua dan yang cacat, dan tidak boleh dikeluarkan yang jantan kecuali jika pemiliknya menghendaki. Tentang zakat perak, setiap 200 dirham zakatnya seperempatnya (2 1/2%). Jika hanya 190 dirham, tidak wajib atasnya zakat kecuali bila pemiliknya menghendaki. Barangsiapa yang jumlah untanya telah wajib mengeluarkan seekor unta betina yang seumurnya masuk tahun kelima, padahal ia tidak memilikinya dan ia memiliki unta betina yang umurnya masuk tahun keempat, maka ia boleh mengeluarkannya ditambah dua ekor kambing jika tidak keberatan, atau 20 dirham. Barangsiapa yang sudah wajib mengeluarkan seekor anak unta betina yang umurnya masuk tahun keempat, padahal ia tidak memilikinya dan ia memiliki unta betina yang umurnya masuk tahun kelima, maka ia boleh mengeluarkannya ditambah 20 dirham atau dua ekor kambing. Riwayat Bukhari.',
      },
      {
        'arabic':
            'وَعَنِ اِ بْنِ عَبَّاسٍ رَضِيَ اَللَّهُ عَنْهُمَا قَالَ: ( فَرَضَ رَسُولُ اَللَّهِ صلى الله عليه وسلم زَكَاةَ اَلْفِطْرِ; طُهْرَةً لِلصَّائِمِ مِنَ اَللَّغْوِ, وَالرَّفَثِ, وَطُعْمَةً لِلْمَسَاكِينِ, فَمَنْ أَدَّاهَا قَبْلَ اَلصَّلَاةِ فَهِيَ زَكَاةٌ مَقْبُولَةٌ, وَمَنْ أَدَّاهَا بَعْدَ اَلصَّلَاةِ فَهِيَ صَدَقَةٌ مِنَ اَلصَّدَقَاتِ. )  رَوَاهُ أَبُو دَاوُدَ, وَابْنُ مَاجَهْ, وَصَحَّحَهُ اَلْحَاكِم ُ',
        'indo':
            'Artinya : Dari Ibnu Abbas Radliyallaahu \'anhu bahwa Rasulullah Shallallaahu \'alaihi wa Sallam mewajibkan zakat fitrah sebagai pembersih bagi orang yang berpuasa dari perkataan yang tidak berguna dan kotor, dan sebagai makanan bagi orang-orang miskin. Maka barangsiapa yang mengeluarkannya sebelum sholat, ia menjadi zakat yang diterima dan barangsiapa mengeluarkannya setelah sholat, ia menjadi sedekah biasa. Riwayat Abu Dawud dan Ibnu Majah',
      },
      {
        'arabic':
            'وَعَنْ أَبِي هُرَيْرَةَ رضي الله عنه ( أَنَّ رَسُولُ اَللَّهِ صلى الله عليه وسلم قَالَ: "وَفِي اَلرِّكَازِ: اَلْخُمُسُ" )  مُتَّفَقٌ عَلَيْه ِ',
        'indo':
            'Dari Abu Hurairah Radliyallaahu \'anhu bahwa Rasulullah Shallallaahu \'alaihi wa Sallam bersabda: "Zakat rikaz (harta peninggalan purbakala) adalah seperlima." Muttafaq Alaihi.',
      },
      {
        'arabic':
            'وَعَنْ عَمْرِو بْنِ شُعَيْبٍ, عَنْ أَبِيهِ, عَنْ جَدِّهِ; ( أَنَّ اَلنَّبِيَّ صلى الله عليه وسلم قَالَ -فِي كَنْزٍ وَجَدَهُ رَجُلٌ فِي خَرِبَةٍ-: إِنْ وَجَدْتَهُ فِي قَرْيَةٍ مَسْكُونَةٍ, فَعَرِّفْهُ, وَإِنْ وَجَدْتَهُ فِي قَرْيَةٍ غَيْرِ مَسْكُونَةٍ, فَفِيهِ وَفِي اَلرِّكَازِ: اَلْخُمُسُ  )  أَخْرَجَهُ اِبْنُ مَاجَهْ بِإِسْنَادٍ حَسَن ٍ',
        'indo':
            'Dari Amar Ibnu Syu\'aib dari ayahnya, dari kakeknya Radliyallaahu \'anhu bahwa Rasulullah Shallallaahu \'alaihi wa Sallam bersabda: "Tentang harta simpanan yang ditemukan seseorang di suatu tempat yang tidak berpenghuni. Jika engkau menemukannya pada kampung yang dihuni orang, maka umumkan. Jika engkau menemukannya pada kampung yang tidak dihuni orang, maka zakatnya sebagai rikaz itu seperlima." Dikeluarkan oleh Ibnu Majah dengan sanad hasan',
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
          'Hadist Tentang Zakat',
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
