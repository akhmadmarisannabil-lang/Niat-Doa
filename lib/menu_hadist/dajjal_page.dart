import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart'; // Sesuaikan dengan jalur file ThemeProvider Anda

class DajjalPage extends StatelessWidget {
  const DajjalPage({super.key});

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

    // Data List konten tentang Dajjal asli sesuai input (tanpa diubah, dipotong, atau ditambah)
    final List<Map<String, String>> kontenDajjal = [
      {
        'arabic':
            'يَخْرُجُ الدَّجَّالُ فَيَتَوَجَّهُ قِبَلَهُ رَجُلٌ مِنَ الْمُؤْمِنِينَ فَتَلْقَاهُ الْمَسَالِحُ مَسَالِحُ الدَّجَّالِ فَيَقُولُونَ لَهُ أَيْنَ تَعْمِدُ فَيَقُولُ أَعْمِدُ إِلَى هَذَا الَّذِى خَرَجَ – قَالَ – فَيَقُولُونَ لَهُ أَوَمَا تُؤْمِنُ بِرَبِّنَا فَيَقُولُ مَا بِرَبِّنَا خَفَاءٌ. فَيَقُولُونَ اقْتُلُوهُ . فَيَقُولُ بَعْضُهُمْ لِبَعْضٍ أَلَيْسَ قَدْ نَهَاكُمْ رَبُّكُمْ أَنْ تَقْتُلُوا أَحَدًا دُونَهُ – قَالَ – فَيَنْطَلِقُونَ بِهِ إِلَى الدَّجَّالِ فَإِذَا رَآهُ الْمُؤْمِنُ قَالَ يَا أَيُّهَا النَّاسُ هَذَا الدَّجَّالُ الَّذِى ذَكَرَ رَسُولُ اللَّهِ -صلى الله عليه وسلم- قَالَ فَيَأْمُرُ الدَّجَّالُ بِهِ فَيُشَبَّحُ فَيَقُولُ خُذُوهُ وَشُجُّوهُ. فَيُوسَعُ ظَهْرُهُ وَبَطْنُهُ ضَرْبًا – قَالَ – فَيَقُولُ أَوَمَا تُؤْمِنُ بِى قَالَ فَيَقُولُ أَنْتَ الْمَسِيحُ الْكَذَّابُ – قَالَ – فَيُؤْمَرُ بِهِ فَيُؤْشَرُ بِالْمِئْشَارِ مِنْ مَفْرِقِهِ حَتَّى يُفَرَّقَ بَيْنَ رِجْلَيْهِ – قَالَ – ثُمَّ يَمْشِى الدَّجَّالُ بَيْنَ الْقِطْعَتَيْنِ ثُمَّ يَقُولُ لَهُ قُمْ. فَيَسْتَوِى قَائِمًا – قَالَ – ثُمَّ يَقُولُ لَهُ أَتُؤْمِنُ بِى فَيَقُولُ مَا ازْدَدْتُ فِيكَ إِلاَّ بَصِيرَةً – قَالَ – ثُمَّ يَقُولُ يَا أَيُّهَا النَّاسُ إِنَّهُ لاَ يَفْعَلُ بَعْدِى بِأَحَدٍ مِنَ النَّاسِ – قَالَ – فَيَأْخُذُهُ الدَّجَّالُ لِيَذْبَحَهُ فَيُجْعَلَ مَا بَيْنَ رَقَبَتِهِ إِلَى تَرْقُوَتِهِ نُحَاسًا فَلاَ يَسْتَطِيعُ إِلَيْهِ سَبِيلاً – قَالَ – فَيَأْخُذُ بِيَدَيْهِ وَرِجْلَيْهِ فَيَقْذِفُ بِهِ فَيَحْسِبُ النَّاسُ أَنَّمَا قَذَفَهُ إِلَى النَّارِ وَإِنَّمَا أُلْقِىَ فِى الْجَنَّةِ ». فَقَالَ رَسُولُ اللَّهِ -صلى الله عليه وسلم- « هَذَا أَعْظَمُ النَّاسِ شَهَادَةً عِنْدَ رَبِّ الْعَالَمِينَ',
        'indo':
            '“Dajjal muncul lalu seseorang dari kalangan kaum mu`minin menuju ke arahnya lalu bala tentara Dajjal yang bersenjata menemuinya, mereka bertanya, ‘Kau mau kemana? ‘ Mu`min itu menjawab, ‘Hendak ke orang yang muncul itu.’ Mereka bertanya, ‘Apa kau tidak beriman ada tuhan kami? ‘ Mu`min itu menjawab: ‘Rabb kami tidaklah samar.’ Mereka berkata, ‘Bunuh dia.’ Lalu mereka saling berkata satu sama lain, ‘Bukankah tuhan kita melarang kalian membunuh seorang pun selain dia.’ Mereka membawanya menuju Dajjal. Saat orang mu`min melihatnya, ia berkata, ‘Wahai sekalian manusia, inilah Dajjal yang disebut oleh Rasulullah shallallahu ‘alaihi wa sallam.’ Lalu Dajjal memerintahkan agar dibelah. Ia berkata, ‘Ambil dan belahlah dia.’ Punggung dan perutnya dipenuhi pukulan lalu Dajjal bertanya, ‘Apa kau tidak beriman padaku? ‘ Mu`min itu menjawab, ‘Kau adalah Al Masih pendusta? ‘ Lalu Dajjal memerintahkannya digergaji dari ujung kepala hingga pertengahan antara kedua kaki. Setelah itu Dajjal berjalan di antara dua potongan tubuh itu lalu berkata, ‘Berdirilah!’ Tubuh itu pun berdiri. Selanjutnya Dajjal bertanya padanya, ‘Apa kau beriman padaku?’ Ia menjawab, ‘Aku semakin mengetahuimu.’ Setelah itu Dajjal berkata, ‘Wahai sekalian manusia, sesungguhnya tidak ada seorang pun yang dilakukan seperti ini setelahku.’ Lalu Dajjal mengambilnya untuk disembelih, kemudian antara leher dan tulang selangkanya diberi perak, tapi Dajjal tidak mampu membunuhnya. Kemudian kedua tangan dan kaki orang itu diambil lalu dilemparkan, orang-orang mengiranya dilempari ke neraka, tapi sesungguhnya ia dilemparkan ke surga.” Setelah itu Rasulullah shallallahu ‘alaihi wa sallam bersabda, “Dia adalah manusia yang kesaksiannya paling agung di sisi Rabb seluruh alam.(Hr Muslim)',
      },
      {
        'arabic':
            'عن أَنَس بْن مَالِكٍ قَالَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ لَيْسَ مِنْ بَلَدٍ إِلَّا سَيَطَؤُهُ الدَّجَّالُ إِلَّا مَكَّةَ وَالْمَدِينَةَ وَلَيْسَ نَقْبٌ مِنْ أَنْقَابِهَا إِلَّا عَلَيْهِ الْمَلَائِكَةُ صَافِّينَ تَحْرُسُهَا فَيَنْزِلُ بِالسِّبْخَةِ فَتَرْجُفُ الْمَدِينَةُ ثَلَاثَ رَجَفَاتٍ يَخْرُجُ إِلَيْهِ مِنْهَا كُلُّ كَافِرٍ وَمُنَافِقٍ.',
        'indo':
            'Artinya:Dari Anas bin Malik RA, dia berkata, "Rasulullah SAW telah bersabda, \'Kelak, tidak ada satu negeripun di dunia ini yang tidak dimasuki Dajjal, kecuali kota Makkah dan Madinah. Pada setiap jalan masuk ke kota Makkah dan Madinah terdapat beberapa malaikat yang berbaris menjaga kedua kota tersebut. Kemudian Dajjal akan singgah di Sibkhah. Tak lama kemudian, kota Madinah akan berguncang tiga kali hingga setiap orang kafir dan munafik akan keluar dari Madinah untuk mengikuti Dajjal.'
            '" (Muslim 8/206)',
      },
      {
        'arabic':
            'عَنْ أَبِي هُرَيْرَةَ أَنَّ رَسُولَ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ قَالَ لَا تَقُومُ السَّاعَةُ حَتَّى يَنْزِلَ الرُّومُ بِالْأَعْمَاقِ أَوْ بِدَابِقٍ فَيَخْرُجُ إِلَيْهِمْ جَيْشٌ مِنْ الْمَدِينَةِ مِنْ خِيَارِ أَهْلِ الْأَرْضِ يَوْمَئِذٍ فَإِذَا تَصَافُّوا قَالَتْ الرُّومُ خَلُّوا بَيْنَنَا وَبَيْنَ الَّذِينَ سَبَوْا مِنَّا نُقَاتِلْهُمْ فَيَقُولُ الْمُسْلِمُونَ لَا وَاللَّهِ لَا نُخَلِّي بَيْنَكُمْ وَبَيْنَ إِخْوَانِنَا فَيُقَاتِلُونَهُمْ فَيَنْهَزِمُ ثُلُثٌ لَا يَتُوبُ اللَّهُ عَلَيْهِمْ أَبَدًا وَيُقْتَلُ ثُلُثُهُمْ أَفْضَلُ الشُّهَدَاءِ عِنْدَ اللَّهِ وَيَفْتَتِحُ الثُّلُثُ لَا يُفْتَنُونَ أَبَدًا فَيَفْتَتِحُونَ قُسْطَنْطِينِيَّةَ فَبَيْنَمَا هُمْ يَقْتَسِمُونَ الْغَنَائِمَ قَدْ عَلَّقُوا سُيُوفَهُمْ بِالزَّيْتُونِ إِذْ صَاحَ فِيهِمْ الشَّيْطَانُ إِنَّ الْمَسِيحَ قَدْ خَلَفَكُمْ فِي أَهْلِيكُمْ فَيَخْرُجُونَ وَذَلِكَ بَاطِلٌ فَإِذَا جَاءُوا الشَّأْمَ خَرَجَ فَبَيْنَمَا هُمْ يُعِدُّونَ لِلْقِتَالِ يُسَوُّونَ الصُّفُوفَ إِذْ أُقِيمَتْ الصَّلَاةُ فَيَنْزِلُ عِيسَى ابْنُ مَرْيَمَ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ فَأَمَّهُمْ فَإِذَا رَآهُ عَدُوُّ اللَّهِ ذَابَ كَمَا يَذُوبُ الْمِلْحُ فِي الْمَاءِ فَلَوْ تَرَكَهُ لَانْذَابَ حَتَّى يَهْلِكَ وَلَكِنْ يَقْتُلُهُ اللَّهُ بِيَدِهِ فَيُرِيهِمْ دَمَهُ فِي حَرْبَتِهِ.',
        'indo':
            'Artinya:Dari Abu Hurairah RA, bahwasanya Rasulullah SAW telah bersabda, "Sesungguhnya kiamat itu tidak akan terjadi sebelum orang-orang Romawi memasuki daerah A\'mak atau Dabik. Setelah itu, pasukan kaum muslimin dari kota Madinah, yaitu orang-orang yang terbaik pada saat itu, mulai mengejar mereka. Ketika mereka berbaris, orang-orang Romawi berkata, \'Lepaskanlah kemari orang-orang yang pernah menawan sebagian pasukan kami untuk kami perangi sekarang!\' Mendengar penyataan itu, pasukan kaum muslimin pun menjawab, "Tidak. Demi Allah, kami tidak akan melepaskan saudara-saudara kami kepada kalian." Lalu pasukan kaum muslimin mulai memerangi mereka. Setelah itu sepertiga dari pasukan kaum muslimin mundur dan melarikan diri dari pasukan inti. Mereka itulah orang-orang yang tidak akan diampuni Allah untuk selama-lamanya. Sementara itu, sepertiga pasukan kaum muslimin lainnya terbunuh dan mereka itulah para syuhada yang paling utama di sisi Allah. Sedangkan sepertiga pasukan kaum muslimin lainnya bertempur hingga berhasil menaklukkan kota Konstantinopel. Ketika mereka sedang membagi-bagikan harta rampasan perang sedangkan mereka telah menggantungkan pedang mereka pada pohon zaitun, tiba-tiba syetan berteriak, "Sungguh Dajjal telah mendatangi keluarga kalian sehingga keluarga kalian keluar semua." Ternyata teriakan syetan itu bohong. Ketika pasukan kaum muslimin mendatangi negeri Syam, tiba-tiba syetan muncul lagi. Lalu pada saat mereka mempersiapkan peralatan untuk berperang dan merapikan barisan untuk melaksanakan shalat, tiba-tiba Nabi Isa bin Maryam alaihi salam turun untuk mengimami mereka. Manakala musuh-musuh Allah melihat Nabi Isa bin Maryam, maka mereka pun meleleh seperti mencairnya garam dalam air. Seandainya ia biarkan musuh-musuh Allah tersebut seperti itu, niscaya Allah akan meleburkannya hingga hancur. Namun Allah membunuh mereka dengan tangan-Nya. Setelah itu, Dia tunjukkan darahnya kepada mereka di ujung tombak. {Muslim 8/175-176}',
      },
      {
        'arabic':
            'عَنْ جَابِرِ بْنِ سَمُرَةَ قَالَ سَمِعْتُ رَسُولَ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ يَقُولُ إِنَّ بَيْنَ يَدَيْ السَّاعَةِ كَذَّابِينَ. وَ في رواية: قَالَ جَابِرٌ فَاحْذَرُوهُمْ ',
        'indo':
            'Dari Jabir bin Samurah RA, dia berkata, "Saya pernah mendengar Rasulullah SAW bersabda, \'Sesungguhnya akan muncul para pendusta menjelang kiamat kelak\' Menurut riwayat yang lain dikatakan, Jabir berkata, "Rasulullah bersabda, \'Oleh karena itu, waspadalah kamu terhadap mereka\' {Muslim 8/189}',
      },
      {
        'arabic':
            'فَيَأْتِى عَلَى الْقَوْمِ فَيَدْعُوهُمْ فَيُؤْمِنُونَ بِهِ وَيَسْتَجِيبُونَ لَهُ فَيَأْمُرُ السَّمَاءَ فَتُمْطِرُ وَالأَرْضَ فَتُنْبِتُ فَتَرُوحُ عَلَيْهِمْ سَارِحَتُهُمْ أَطْوَلَ مَا كَانَتْ ذُرًا وَأَسْبَغَهُ ضُرُوعًا وَأَمَدَّهُ خَوَاصِرَ ثُمَّ يَأْتِى الْقَوْمَ فَيَدْعُوهُمْ فَيَرُدُّونَ عَلَيْهِ قَوْلَهُ فَيَنْصَرِفُ عَنْهُمْ فَيُصْبِحُونَ مُمْحِلِينَ لَيْسَ بِأَيْدِيهِمْ شَىْءٌ مِنْ أَمْوَالِهِمْ وَيَمُرُّ بِالْخَرِبَةِ فَيَقُولُ لَهَا أَخْرِجِى كُنُوزَكِ. فَتَتْبَعُهُ كُنُوزُهَا كَيَعَاسِيبِ النَّحْلِ',
        'indo':
            '“Ia mendatangi kaum dan menyeru mereka, mereka menerimanya. Ia memerintahkan langit agar menurunkan hujan, lalu langit menurunkan hujan. Ia memerintahkan bumi agar mengeluarkan tumbuh-tumbuhan, lalu bumi mengeluarkan tumbuh-tumbuhan. Lalu binatang ternak mereka pergi dengan punuk yang panjang, lambung yang lebar dan kantong susu yang berisi lalu kehancuran datang lalu ia berkata padanya: ‘Keluarkan harta simpananmu.’ Lalu harta simpanannya mengikutinya seperti lebah-lebah jantan.”(HR Muslim)',
      },
      {
        'arabic':
            'عَنْ صَالِحٍ عَنْ ابْنِ شِهَابٍ أَخْبَرَنِي عُبَيْدُ اللَّهِ بْنُ عَبْدِ اللَّهِ بْنِ عُتْبَةَ أَنَّ أَبَا سَعِيدٍ الْخُدْرِيَّ قَالَ حَدَّثَنَا رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ يَوْمًا حَدِيثًا طَوِيلًا عَنْ الدَّجَّالِ فَكَانَ فِيمَا حَدَّثَنَا قَالَ يَأْتِي وَهُوَ مُحَرَّمٌ عَلَيْهِ أَنْ يَدْخُلَ نِقَابَ الْمَدِينَةِ فَيَنْتَهِي إِلَى بَعْضِ السِّبَاخِ الَّتِي تَلِي الْمَدِينَةَ فَيَخْرُجُ إِلَيْهِ يَوْمَئِذٍ رَجُلٌ هُوَ خَيْرُ النَّاسِ أَوْ مِنْ خَيْرِ النَّاسِ فَيَقُولُ لَهُ أَشْهَدُ أَنَّكَ الدَّجَّالُ الَّذِي حَدَّثَنَا رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ حَدِيثَهُ فَيَقُولُ الدَّجَّالُ أَرَأَيْتُمْ إِنْ قَتَلْتُ هَذَا ثُمَّ أَحْيَيْتُهُ أَتَشُكُّونَ فِي الْأَمْرِ فَيَقُولُونَ لَا قَالَ فَيَقْتُلُهُ ثُمَّ يُحْيِيهِ فَيَقُولُ حِينَ يُحْيِيهِ وَاللَّهِ مَا كُنْتُ فِيكَ قَطُّ أَشَدَّ بَصِيرَةً مِنِّي الْآنَ قَالَ فَيُرِيدُ الدَّجَّالُ أَنْ يَقْتُلَهُ فَلَا يُسَلَّطُ عَلَيْهِ',
        'indo':
            'Abu Said Al-Khudri RA, ia berkata: Suatu hari Rasulullah SAW pernah bercerita kepada kami suatu cerita panjang tentang Dajjal. Di antara yang beliau ceritakan kepada kami adalah: Ia akan datang tetapi ia diharamkan memasuki jalan-jalan Madinah, kemudian ia tiba di tanah lapang tandus yang berada di dekat Madinah. Lalu pada hari itu keluarlah seorang lelaki yang terbaik di antara manusia atau termasuk manusia terbaik menemuinya dan berkata: Aku bersaksi bahwa kamu adalah Dajjal yang telah diceritakan Rasulullah SAW kepada kami. Dajjal berkata: Bagaimana pendapat kalian jika aku membunuh orang ini lalu menghidupkannya lagi, apakah kamu masih meragukan perihalku? Mereka berkata: Tidak! Maka Dajjal membunuhnya lalu menghidupkannya kembali. Ketika telah dihidupkan, lelaki itu berkata: Demi Allah, aku sekarang lebih yakin tentang dirimu dari sebelumnya. Maka Dajjal itu hendak membunuhnya kembali, namun ia tidak kuasa melakukannya. (Hadis riwayat Muslim).',
      },
      {
        'arabic':
            'عَنْ النُّعْمَانِ بْنِ سَالِمٍ قَالَ سَمِعْتُ يَعْقُوبَ بْنَ عَاصِمِ بْنِ عُرْوَةَ بْنِ مَسْعُودٍ الثَّقَفِيَّ يَقُولُ سَمِعْتُ عَبْدَ اللَّهِ بْنَ عَمْرٍو وَجَاءَهُ رَجُلٌ فَقَالَ مَا هَذَا الْحَدِيثُ الَّذِي تُحَدِّثُ بِهِ تَقُولُ إِنَّ السَّاعَةَ تَقُومُ إِلَى كَذَا وَكَذَا فَقَالَ سُبْحَانَ اللَّهِ أَوْ لَا إِلَهَ إِلَّا اللَّهُ أَوْ كَلِمَةً نَحْوَهُمَا لَقَدْ هَمَمْتُ أَنْ لَا أُحَدِّثَ أَحَدًا شَيْئًا أَبَدًا إِنَّمَا قُلْتُ إِنَّكُمْ سَتَرَوْنَ بَعْدَ قَلِيلٍ أَمْرًا عَظِيمًا يُحَرَّقُ الْبَيْتُ وَيَكُونُ وَيَكُونُ ثُمَّ قَالَ قَالَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ يَخْرُجُ الدَّجَّالُ فِي أُمَّتِي فَيَمْكُثُ أَرْبَعِينَ لَا أَدْرِي أَرْبَعِينَ يَوْمًا أَوْ أَرْبَعِينَ شَهْرًا أَوْ أَرْبَعِينَ عَامًا فَيَبْعَثُ اللَّهُ عِيسَى ابْنَ مَرْيَمَ كَأَنَّهُ عُرْوَةُ بْنُ مَسْعُودٍ فَيَطْلُبُهُ فَيُهْلِكُهُ ثُمَّ يَمْكُثُ النَّاسُ سَبْعَ سِنِينَ لَيْسَ بَيْنَ اثْنَيْنِ عَدَاوَةٌ ثُمَّ يُرْسِلُ اللَّهُ رِيحًا بَارِدَةً مِنْ قِبَلِ الشَّأْمِ فَلَا يَبْقَى عَلَى وَجْهِ الْأَرْضِ أَحَدٌ فِي قَلْبِهِ مِثْقَالُ ذَرَّةٍ مِنْ خَيْرٍ أَوْ إِيمَانٍ إِلَّا قَبَضَتْهُ حَتَّى لَوْ أَنَّ أَحَدَكُمْ دَخَلَ فِي كَبِدِ جَبَلٍ لَدَخَلَتْهُ عَلَيْهِ حَتَّى تَقْبِضَهُ قَالَ سَمِعْتُهَا مِنْ رَسُولِ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ قَالَ فَيَبْقَى شِرَارُ النَّاسِ فِي خِفَّةِ الطَّيْرِ وَأَحْلَامِ السِّبَاعِ لَا يَعْرِفُونَ مَعْرُوفًا وَلَا يُنْكِرُونَ مُنْكَرًا فَيَتَمَثَّلُ لَهُمْ الشَّيْطَانُ فَيَقُولُ أَلَا تَسْتَجِيبُونَ فَيَقُولُونَ فَمَا تَأْمُرُنَا فَيَأْمُرُهُمْ بِعِبَادَةِ الْأَوْثَانِ وَهُمْ فِي ذَلِكَ دَارٌّ رِزْقُهُمْ حَسَنٌ عَيْشُهُمْ ثُمَّ يُنْفَخُ فِي الصُّورِ فَلَا يَسْمَعُهُ أَحَدٌ إِلَّا أَصْغَى لِيتًا وَرَفَعَ لِيتًا قَالَ وَأَوَّلُ مَنْ يَسْمَعُهُ رَجُلٌ يَلُوطُ حَوْضَ إِبِلِهِ قَالَ فَيَصْعَقُ وَيَصْعَقُ النَّاسُ ثُمَّ يُرْسِلُ اللَّهُ أَوْ قَالَ يُنْزِلُ اللَّهُ مَطَرًا كَأَنَّهُ الطَّلُّ أَوْ الظِّلُّ نُعْمَانُ الشَّاكُّ فَتَنْبُتُ مِنْهُ أَجْسَادُ النَّاسِ ثُمَّ يُنْفَخُ فِيهِ أُخْرَى فَإِذَا هُمْ قِيَامٌ يَنْظُرُونَ ثُمَّ يُقَالُ يَا أَيُّهَا النَّاسُ هَلُمَّ إِلَى رَبِّكُمْ وَقِفُوهُمْ إِنَّهُمْ مَسْئُولُونَ قَالَ ثُمَّ يُقَالُ أَخْرِجُوا بَعْثَ النَّارِ فَيُقَالُ مِنْ كَمْ فَيُقَالُ مِنْ كُلِّ أَلْفٍ تِسْعَ مِائَةٍ وَتِسْعَةً وَتِسْعِينَ قَالَ فَذَاكَ يَوْمَ يَجْعَلُ الْوِلْدَانَ شِيبًا وَذَلِكَ يَوْمَ يُكْشَفُ عَنْ سَاقٍ.',
        'indo':
            'Artinya : Dari An-Nu\'man bin Salim, dia berkata, "Saya pernah mendengar Ya\'kub bin Ashim bin Urwah bin Mas\'ud Ats-Tsaqafi berkata, \'Saya pernah mendengar Abdullah bin Amr yang pada saat itu didatangi seseorang yang bertanya kepadanya, \'Apakah yang sedang kamu bicarakan hai Abdullah? Apakah kamu mengatakan bahwa kiamat itu akan terjadi setelah ada ini dan itu?\' Abdullah bin Amr menjawab, "Subhaanallaah {atau Laa ilaaha illallaah atau ia mengucapkan kalimat lain untuk mengungkapkan perasaan terkejut}, saya tidak ingin memberitahukan sesuatu kepada siapapun untuk selama-lamanya. Saya hanya menyatakan bahwa tidak lama lagi kalian akan mengalami peristiwa besar, yaitu bahwasanya Baitullah akan terbakar. Setelah itu, akan ada peristiwa ini dan peristiwa itu." Kemudian Abdullah bin Amr berkata, "Rasulullah SAW telah bersabda, "Suatu saat kelak Dajjal pasti akan keluar di tengah-tengah umatku. Setelah itu, ia akan menetap selama empat puluh {saya tidak tahu apakah menetap selama empat puluh hari, empat puluh bulan, ataupun empat puluh tahun}. Tak lama kemudian, Allah pun akan mengutus Isa bin Maryam yang tampangnya mirip dengan Urwah bin Mas\'ud. Kemudian ia pergi mencari Dajjal untuk dihancurkannya. Setelah itu, selama tujuh tahun, manusia akan hidup aman dan tentram tanpa adanya permusuhan di antara mereka. Setelah itu Allah Subhanahu wa Ta\'ala akan mengutus angin dingin dari arah Syam yang merenggut nyawa setiap orang yang di dalam hatinya terdapat kebaikan atau iman seberat biji sawi sekalipun, hingga seandainya ada seorang mukmin masuk ke dalam perut gunung, niscaya ia akan dikejar oleh angin tersebut dan terenggutlah nyawanya.\' Abdullah bin Amr berkata, "Saya pernah mendengar sabda Rasulullah SAW selanjutnya, \'Maka tinggallah orang-orang jahat yang bertingkah laku seperti binatang dan hewan buas yang tidak mengenal kebaikan dan tidak mengingkari kemungkaran. Setelah itu, syetan yang menjelma sebagai manusia akan mendatangi mereka. Syetan tersebut berkata, \'Apakah kalian tidak menjawab seruan?\' Mereka menjawab, \'Apakah yang akan kamu perintahkan kepada kami?" Akhirnya syetan yang menjelma menjadi manusia itu mengajak mereka untuk menyembah berhala hingga rezeki mereka melimpah ruah dan kehidupan mereka penuh dengan kenikmatan duniawi. Setelah itu, ditiuplah sangkakala yang mengejutkan setiap orang yang mendengarnya. Rasulullah SAW bersabda, "Orang yang pertama kali mendengarnya adalah seorang laki-laki yang berada di dekat tempat minum unta. Akhirnya orang laki-laki tersebut pingsan. Setelah itu, ia meninggal dunia. Kemudian semua manusia akan menyusulnya. Setelah itu, Allah akan menurunkan hujan seperti gerimis {atau hujan terus menerus} hingga semua jasad manusia akan bermunculan. Lalu sangkakala ditiup lagi, tiba-tiba mereka bangkit dan hidup kembali." Tiba-tiba ada seseorang yang berseru, "Hai umat manusia, datanglah kemari untuk menghadap ke hadirat Tuhan kalian!" Kemudian Allah berfirman kepada para malaikat, "Hentikan mereka di tempat pemberhentian karena mereka akan ditanya." (Qs. Ash-Shaffaat{37}:24) Allah berfirman kepada para malaikat, "Siapkanlah calon-calon penghuni neraka!" Seorang malaikat bertanya kepada Allah, "berapa?" Allah menjawab, "Siapkan sembilan ratus sembilan puluh sembilan orang dari tiap seribu orang." Rasulullah SAW bersabda, "Itulah hari yang dapat membuat anak-anak beruban dan betispun disingkapkan." (Muslim 8/201-202)',
      },
      {
        'arabic':
            'عَنْ أَبِي زُرْعَةَ قَالَ قَالَ أَبُو هُرَيْرَةَ لَا أَزَالُ أُحِبُّ بَنِي تَمِيمٍ مِنْ ثَلَاثٍ سَمِعْتُهُنَّ مِنْ رَسُولِ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ سَمِعْتُ رَسُولَ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ يَقُولُ هُمْ أَشَدُّ أُمَّتِي عَلَى الدَّجَّالِ قَالَ وَجَاءَتْ صَدَقَاتُهُمْ فَقَالَ النَّبِيُّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ هَذِهِ صَدَقَاتُ قَوْمِنَا قَالَ وَكَانَتْ سَبِيَّةٌ مِنْهُمْ عِنْدَ عَائِشَةَ فَقَالَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ أَعْتِقِيهَا فَإِنَّهَا مِنْ وَلَدِ إِسْمَعِيلَ',
        'indo':
            'Dari Abu Zur\'ah, dia berkata, "Abu Hurairah RA pernah berkata, \'Saya akan senantiasa cinta kepada Bani Tamim, karena saya pernah mendengar tiga hal langsung dari Rasulullah: Pertama, saya pernah mendengar Rasulullah SAW bersabda, \'Mereka {Bani Tamim} adalah umatku yang paling gigih melawan Dajjal. Kedua, Rasulullah SAW pernah bersabda ketika ada zakat dari Bani Tamim,\'Ini adalah zakat kaum kami.\' Ketiga, ada seorang tawanan perempuan dari Bani Tamim di rumah Aisyah RA. Kemudian Rasulullah bersabda, "Hai Aisyah, bebaskanlah ia! Karena ia adalah keturunan Ismail\'" {Muslim 7/181}',
      },
      {
        'arabic':
            'عَنْ أَبِي الدَّرْدَاءِ أَنَّ النَّبِيَّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ قَالَ مَنْ حَفِظَ عَشْرَ آيَاتٍ مِنْ أَوَّلِ سُورَةِ الْكَهْف عُصِمَ مِنْ الدَّجَّالِ. و في رواية: مِنْ آخِرِ الْكَهْفِ',
        'indo':
            'Dari Abu Darda\' RA, dari Rasulullah SAW, beliau bersabda, "Barang siapa menghafal sepuluh ayat di awal surah Al Kahfi, maka ia akan terjaga dari fitnah Dajjal." Menurut suatu riwayat, "Sepuluh ayat di akhir surah Al Kahfi." {Muslim 2/199}',
      },
      {
        'arabic':
            'لأَنَا أَعْلَمُ بِمَا مَعَ الدَّجَّالِ مِنْهُ مَعَهُ نَهْرَانِ يَجْرِيَانِ أَحَدُهُمَا رَأْىَ الْعَيْنِ مَاءٌ أَبْيَضُ وَالآخَرُ رَأْىَ الْعَيْنِ نَارٌ تَأَجَّجُ فَإِمَّا أَدْرَكَنَّ أَحَدٌ فَلْيَأْتِ النَّهْرَ الَّذِى يَرَاهُ نَارًا وَلْيُغَمِّضْ ثُمَّ لْيُطَأْطِئْ رَأْسَهُ فَيَشْرَبَ مِنْهُ فَإِنَّهُ مَاءٌ بَارِدٌ وَإِنَّ الدَّجَّالَ مَمْسُوحُ الْعَيْنِ عَلَيْهَا ظَفَرَةٌ غَلِيظَةٌ مَكْتُوبٌ بَيْنَ عَيْنَيْهِ كَافِرٌ يَقْرَؤُهُ كُلُّ مُؤْمِنٍ كَاتِبٍ وَغَيْرِ كَاتِبٍ',
        'indo':
            '“Sungguh aku tahu apa yang ada bersama Dajjal, bersamanya ada dua sungai yang mengalir. Salah satunya secara kasat mata berupa air putih dan yang lainnya secara kasat mata berupa api yang bergejolak. Bila ada yang menjumpainya, hendaklah mendatangi surga yang ia lihat berupa api dan hendaklah menutup mata, kemudian hendaklah menundukkan kepala lalu meminumnya karena sesungguhnya itu adalah air dingin.”(HR. Muslim no. 2934)',
      },
      {
        'arabic': 'فَيَطْلُبُهُ حَتَّى يُدْرِكَهُ بِبَابِ لُدٍّ فَيَقْتُلُهُ',
        'indo':
            '“Dajjal dikejar oleh Nabi ‘Isa ‘alaihissalam hingga mendapatkannya di Bab Ludd (satu negeri dekat Baitul Maqdis –Palestina, red.). Beliau pun membunuhnya.” (HR. Muslim no. 2937)',
      },
      {
        'arabic':
            'فَإِذَا رَآهُ عَدُوُّ اللهِ ذَابَ كَمَا يَذُوْبُ الْمِلْحُ فِي الْمَاءِ فَلَوْ تَرَكَهُ لَانْذَابَ حَتَّى يَهْلِكَ وَلَكِنْ يَقْتُلُهُ اللهُ بِيَدِهِ فَيُرِيْهِمْ دَمَهُ فِي حَرْبَتِهِ',
        'indo':
            '“Ketika musuh Allah Subhanahu wa Ta’ala (yakni Dajjal, -pen.) melihat Nabi ‘Isa ‘alaihissalam, melelehlah (tubuhnya) sebagaimana garam meleleh di air. Seandainya dibiarkan niscaya akan meleleh hingga binasa, akan tetapi Allah membunuhnya melalui tangan ‘Isa ‘alaihissalam, memperlihatkan darahnya kepada mereka di tombak Nabi ‘Isa ‘alaihissalam.” (HR. Muslim 2897)',
      },
      {
        'arabic':
            'قُلْنَا: يَا رَسُوْلَ اللهِ وَمَا لَبْثُهُ فِي اْلأَرْضِ؟ قَالَ: أَرْبَعُوْنَ يَوْمًا، يَوْمٌ كَسَنَةٍ وَيَوْمٌ كَشَهْرٍ وَيَوْمٌ كَجُمُعَةٍ وَسَائِرُ أَيَّامِهِ كَأَيَّامِكُمْ',
        'indo':
            '“…Kami berkata: ‘Ya Rasulullah, berapa lama Dajjal tinggal di bumi?’ Rasulullah berkata: ‘40 hari. Satu harinya seperti satu tahun, kemudian seperti sebulan, kemudian seperti sepekan, kemudian hari-hari lainnya seperti hari kalian sekarang…’.” (HR. Muslim no. 2937)',
      },
      {
        'arabic':
            'اطَّلَعَ النَّبِيُّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ عَلَيْنَا وَنَحْنُ نَتَذَاكَرُ. فَقَالَ: مَا تَذَاكَرُوْنَ؟ قَالُوا: نَذْكُرُ السَّاعَةَ. قَالَ: إِنَّهَا لَنْ تَقُوْمَ حَتَّى تَرَوْنَ قَبْلَهَا عَشْرَ آيَاتٍ. فَذَكَرَ الدُّخَانَ وَالدَّجَّالَ وَالدَّابَّةَ وَطُلُوْعَ الشَّمْسِ مِنْ مَغْرِبِهَا وَنُزُوْلَ عِيْسَى ابْنِ مَرْيَمَ عَلَيْهِ السَّلاَمُ وَيَأَجُوْجَ وَمَأْجُوْجَ وَثَلاَثَةَ خُسُوْفٍ خَسْفٌ بِالْمَشْرِقِ وَخَسْفٌ بِالْمَغْرِبِ وَخَسْفٌ بِجَزِيْرَةِ الْعَرَبِ وَآخِرُ ذَلِكَ نَارٌ تَخْرُجُ مِنْ الْيَمَنِ تَطْرُدُ النَّاسَ إِلَى مَحْشَرِهِمْ',
        'indo':
            'Rasulullah melihat kami ketika kami tengah berbincang-bincang. Beliau berkata: “Apa yang kalian perbincangkan?” Kami menjawab: “Kami sedang berbincang-bincang tentang hari kiamat.” Beliau berkata: “Tidak akan terjadi hari kiamat hingga kalian lihat sebelumnya sepuluh tanda.” Beliau menyebutkan: “Dukhan (asap), Dajjal, Daabbah, terbitnya matahari dari barat, turunnya ‘Isa ‘alaihissalam, Ya’juj dan Ma’juj, dan tiga khusuf (dibenamkan ke dalam bumi) di timur, di barat, dan di jazirah Arab, yang terakhir adalah api yang keluar dari Yaman mengusir (menggiring) mereka ke tempat berkumpulnya mereka.” (HR. Muslim no. 2901)',
      },
      {
        'arabic':
            'مَا بُعِثَ نَبِىٌّ إِلاَّ أَنْذَرَ أُمَّتَهُ الأَعْوَرَ الْكَذَّابَ ، أَلاَ إِنَّهُ أَعْوَرُ ، وَإِنَّ رَبَّكُمْ لَيْسَ بِأَعْوَرَ ، وَإِنَّ بَيْنَ عَيْنَيْهِ مَكْتُوبٌ كَافِرٌ',
        'indo':
            '“Tidaklah seorang Nabi pun diutus selain telah memperingatkan kaumnya terhadap yang buta sebelah lagi pendusta. Ketahuilah bahwasanya dajjal itu buta sebelah, sedangkan Rabb kalian tidak buta sebelah. Tertulis di antara kedua matanya “KAAFIR”.” (HR. Bukhari no. 7131)',
      },
      {
        'arabic':
            'يا أيها الناس ! إنها لم تكن فتنة على وجه الأرض منذ ذرأ الله ذرية آدم أعظم من فتنة الدجال و إن الله عز و جل لم يبعث نبيا إلا حذر أمته الدجال و أنا آخر الأنبياء و أنتم آخر الأمم و هو خارج فيكم لا محالة',
        'indo':
            '“Wahai sekalian manusia, sungguh tidak ada fitnah yang lebih besar dari fitnah Dajjal di muka bumi ini semenjak Allah menciptakan anak cucu Adam. Tidak ada satu Nabi pun yang diutus oleh Allah melainkan ia akan memperingatkan kepada umatnya mengenai fitnah Dajjal. Sedangkan Aku adalah Nabi yang paling terakhir dan kalian juga ummat yang paling terakhir, maka tidak dapat dipungkiri lagi bahwa Dajjal akan muncul di tengah-tengah kalian.” (Dikeluarkan dalam Shahih Al Jaami’ Ash Shoghir no. 13833).',
      },
      {
        'arabic':
            'ثَلاَثٌ إِذَا خَرَجْنَ (لَمْ يَنْفَعْ نَفْسًا إِيمَانُهَا لَمْ تَكُنْ آمَنَتْ مِنْ قَبْلُ) الآيَةَ الدَّجَّالُ وَالدَّابَّةُ وَطُلُوعُ الشَّمْسِ مِنَ الْمَغْرِبِ أَوْ مِنْ مَغْرِبِهَا',
        'indo':
            '“Tiga tanda, jika semuanya telah terjadi, maka tidak akan berguna lagi keimanan seseorang sebelumnya, yaitu; keluarnya Dajjal, binatang melata, dan terbitnya matahari dari barat atau dari tempat terbenamnya” (HR. Tirmidzi dan Ahmad).',
      },
      {
        'arabic':
            'عَنْ حُذَيْفَةَ بْنِ أَسِيدٍ الْغِفَارِيِّ قَالَ اطَّلَعَ النَّبِيُّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ عَلَيْنَا وَنَحْنُ نَتَذَاكَرُ فَقَالَ مَا تَذَاكَرُونَ قَالُوا نَذْكُرُ السَّاعَةَ قَالَ إِنَّهَا لَنْ تَقُومَ حَتَّى تَرَوْنَ قَبْلَهَا عَشْرَ آيَاتٍ فَذَكَرَ الدُّخَانَ وَالدَّجَّالَ وَالدَّابَّةَ وَطُلُوعُ الشَّمْسِ مِنْ مَغْرِبِهَا وَنُزُولَ عِيسَى ابْنِ مَرْيَمَ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ وَيَأَجُوجَ وَمَأْجُوجَ وَثَلَاثَةَ خُسُوفٍ خَسْفٌ بِالْمَشْرِقِ وَخَسْفٌ بِالْمَغْرِبِ وَخَسْفٌ بِجَزِيرَةِ الْعَرَبِ وَآخِرُ ذَلِكَ نَارٌ تَخْرُجُ مِنْ الْيَمَنِ تَطْرُدُ النَّاسَ إِلَى مَحْشَرِهِمْ.',
        'indo':
            'Dari Hudzaifah bin Usaid Al Ghifari RA, dia berkata, "Pada suatu ketika, secara tiba-tiba, Rasulullah SAW mendatangi kami yang sedang berbincang-bincang sambil bertanya, \'Apa yang sedang kalian perbincangkan?\' Para sahabat menjawab, "Kami berbincang-bincang tentang kiamat." Rasulullah SAW bersabda, "Sesungguhnya kiamat tidak akan terjadi hingga kalian akan melihat sepuluh tanda sebelumnya, {Rasululah menyebutkannya} 1. Asap 2. Dajjal 3. Makhluk yang melata 4. Munculnya matahari dari barat 5. Turunnya Isa bin Maryam 6. Ya\'juj dan Ma\'juj, serta tiga gerhana, yaitu 7. Gerhana di timur 8. Gerhana di barat dan 9. Gerhana di jazirah Arab. Akhir semuanya itu adalah Api yang keluar dari arah Yaman yang menghalau umat manusia ke mahsyar." (HR Muslim)',
      },
      {
        'arabic':
            'إِنِّى قَدْ حَدَّثْتُكُمْ عَنِ الدَّجَّالِ حَتَّى خَشِيتُ أَنْ لاَ تَعْقِلُوا إِنَّ مَسِيحَ الدَّجَّالِ رَجُلٌ قَصِيرٌ أَفْحَجُ جَعْدٌ أَعْوَرُ مَطْمُوسُ الْعَيْنِ لَيْسَ بِنَاتِئَةٍ وَلاَ جَحْرَاءَ فَإِنْ أُلْبِسَ عَلَيْكُمْ فَاعْلَمُوا أَنَّ رَبَّكُمْ لَيْسَ بِأَعْوَرَ',
        'indo':
            '“Sungguh, aku telah menceritakan perihal Dajjal kepada kalian, hingga aku khawatir kalian tidak lagi mampu memahaminya. Sesungguhnya Al Masih Dajjal adalah seorang laki-laki yang pendek, berkaki bengkok, berambut keriting, buta sebelah, matanya tidak terlalu menonjol dan tidak pula terlalu tenggelam. Jika kalian merasa bingung, maka ketahuilah bahwa Rabb kalian tidak buta sebelah.”',
      },
      {
        'arabic':
            'إِنَّ اللَّهَ لَيْسَ بِأَعْوَرَ ، أَلاَ إِنَّ الْمَسِيحَ الدَّجَّالَ أَعْوَرُ الْعَيْنِ الْيُمْنَى ، كَأَنَّ عَيْنَهُ عِنَبَةٌ طَافِيَةٌ',
        'indo':
            '“Sesungguhnya Allah tidak buta sebelah. Ingatlah bahwa Al Masih Ad Dajjal buta sebelah kanan, seakan matanya seperti buah anggur yang menjorok.',
      },
      {
        'arabic':
            'لَيْسَ مِنْ بَلَدٍ إِلاَّ سَيَطَؤُهُ الدَّجَّالُ ، إِلاَّ مَكَّةَ وَالْمَدِينَةَ ، لَيْسَ لَهُ مِنْ نِقَابِهَا نَقْبٌ إِلاَّ عَلَيْهِ الْمَلاَئِكَةُ صَافِّينَ ، يَحْرُسُونَهَا ، ثُمَّ تَرْجُفُ الْمَدِينَةُ بِأَهْلِهَا ثَلاَثَ رَجَفَاتٍ ، فَيُخْرِجُ اللَّهُ كُلَّ كَافِرٍ وَمُنَافِقٍ',
        'indo':
            '“Tidak ada suatu negeri pun yang tidak akan dimasuki Dajjal kecuali Makkah dan Madinah, karena tidak ada satu pintu masuk pun dari pintu-pintu gerbangnya kecuali ada para malaikat yang berbaris menjaganya. Kemudian Madinah akan berguncang sebanyak tiga kali sehingga Allah mengeluarkan orang-orang kafir dan munafiq daripadanya.',
      },
      {
        'arabic':
            'عَنْ أَبِي هُرَيْرَةَ عَنْ النَّبِيِّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ قَالَ لَا تَقُومُ السَّاعَةُ حَتَّى يُبْعَثَ دَجَّالُونَ كَذَّابُونَ قَرِيبٌ مِنْ ثَلَاثِينَ كُلُّهُمْ يَزْعُمُ أَنَّهُ رَسُولُ اللَّهِ',
        'indo':
            '“Kiamat tidak akan terjadi sebelum dibangkitkan dajjal-dajjal pendusta yang berjumlah sekitar tiga puluh, semuanya mengaku bahwa ia adalah utusan Allah.” (H.R Muslim).',
      },
      {
        'arabic':
            'عَنْ أَبِي سَعِيدٍ الْخُدْرِيِّ قَالَ صَحِبْتُ ابْنَ صَائِدٍ إِلَى مَكَّةَ فَقَالَ لِي أَمَا قَدْ لَقِيتُ مِنْ النَّاسِ يَزْعُمُونَ أَنِّي الدَّجَّالُ أَلَسْتَ سَمِعْتَ رَسُولَ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ يَقُولُ إِنَّهُ لَا يُولَدُ لَهُ قَالَ قُلْتُ بَلَى قَالَ فَقَدْ وُلِدَ لِي أَوَلَيْسَ سَمِعْتَ رَسُولَ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ يَقُولُ لَا يَدْخُلُ الْمَدِينَةَ وَلَا مَكَّةَ قُلْتُ بَلَى قَالَ فَقَدْ وُلِدْتُ بِالْمَدِينَةِ وَهَذَا أَنَا أُرِيدُ مَكَّةَ قَالَ ثُمَّ قَالَ لِي فِي آخِرِ قَوْلِهِ أَمَا وَاللَّهِ إِنِّي لَأَعْلَمُ مَوْلِدَهُ وَمَكَانَهُ وَأَيْنَ هُوَ قَالَ فَلَبَسَنِي',
        'indo':
            'Dari Abu Said Al-Khudri RA, ia berkata: Aku menemani Ibnu Shaid pergi ke Mekah, ia berkata kepadaku: Aku telah bertemu dengan beberapa orang yang menganggap bahwa aku adalah seorang Dajjal. Apakah kamu pernah mendengar Rasulullah SAW bersabda: Sesungguhnya Dajjal itu tidak mempunyai anak. Aku jawab: Ya! Ia berkata lagi: Dan aku telah mempunyai anak. Bukankah kamu telah mendengar Rasulullah SAW bersabda: Dajjal itu tidak akan memasuki Madinah dan Mekah. Aku menjawab: Ya! Ia berkata lagi: Dan aku telah dilahirkan di Madinah dan sekarang aku sedang menuju ke Mekah. Kemudian di akhir pertanyaannya dia berkata kepadaku: Demi Allah, sesungguhnya aku tahu waktu kelahirannya, tempatnya dan di mana dia. Ia berkata: Ia telah mengaburkanku tentang perkara itu. (HR Muslim)',
      },
      {
        'arabic':
            'عَنْ أَبِي سَعِيدٍ الْخُدْرِيِّ قَالَ خَرَجْنَا حُجَّاجًا أَوْ عُمَّارًا وَمَعَنَا ابْنُ صَائِدٍ قَالَ فَنَزَلْنَا مَنْزِلًا فَتَفَرَّقَ النَّاسُ وَبَقِيتُ أَنَا وَهُوَ فَاسْتَوْحَشْتُ مِنْهُ وَحْشَةً شَدِيدَةً مِمَّا يُقَالُ عَلَيْهِ قَالَ وَجَاءَ بِمَتَاعِهِ فَوَضَعَهُ مَعَ مَتَاعِي فَقُلْتُ إِنَّ الْحَرَّ شَدِيدٌ فَلَوْ وَضَعْتَهُ تَحْتَ تِلْكَ الشَّجَرَةِ قَالَ فَفَعَلَ قَالَ فَرُفِعَتْ لَنَا غَنَمٌ فَانْطَلَقَ فَجَاءَ بِعُسٍّ فَقَالَ اشْرَبْ أَبَا سَعِيدٍ فَقُلْتُ إِنَّ الْحَرَّ شَدِيدٌ وَاللَّبَنُ حَارٌّ مَا بِي إِلَّا أَنِّي أَكْرَهُ أَنْ أَشْرَبَ عَنْ يَدِهِ أَوْ قَالَ آخُذَ عَنْ يَدِهِ فَقَالَ أَبَا سَعِيدٍ لَقَدْ هَمَمْتُ أَنْ آخُذَ حَبْلًا فَأُعَلِّقَهُ بِشَجَرَةٍ ثُمَّ أَخْتَنِقَ مِمَّا يَقُولُ لِي النَّاسُ يَا أَبَا سَعِيدٍ مَنْ خَفِيَ عَلَيْهِ حَدِيثُ رَسُولِ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ مَا خَفِيَ عَلَيْكُمْ مَعْشَرَ الْأَنْصَارِ أَلَسْتَ مِنْ أَعْلَمِ النَّاسِ بِحَدِيثِ رَسُولِ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ أَلَيْسَ قَدْ قَالَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ هُوَ كَافِرٌ وَأَنَا مُسْلِمٌ أَوَلَيْسَ قَدْ قَالَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ هُوَ عَقِيمٌ لَا يُولَدُ لَهُ وَقَدْ تَرَكْتُ وَلَدِي بِالْمَدِينَةِ أَوَلَيْسَ قَدْ قَالَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ لَا يَدْخُلُ الْمَدِينَةَ وَلَا مَكَّةَ وَقَدْ أَقْبَلْتُ مِنْ الْمَدِينَةِ وَأَنَا أُرِيدُ مَكَّةَ قَالَ أَبُو سَعِيدٍ الْخُدْرِيُّ حَتَّى كِدْتُ أَنْ أَعْذِرَهُ ثُمَّ قَالَ أَمَا وَاللَّهِ إِنِّي لَأَعْرِفُهُ وَأَعْرِفُ مَوْلِدَهُ وَأَيْنَ هُوَ الْآنَ قَالَ قُلْتُ لَهُ تَبًّا لَكَ سَائِرَ الْيَوْمِ',
        'indo':
            'Dari Abu Sa\'id Al Khudri RA, dia berkata, "Kami pernah pergi haji atau umrah, sementara Ibnu Shaid bersama kami. Lalu kami singgah di suatu tempat. Setelah itu orang-orang berpencar dan meninggalkan saya dan Ibnu Shaid. Sungguh, saya tidak dapat ramah kepadanya karena ia disebut-sebut sebagai Dajjal. Abu Sa\'id berkata, "Ibnu Shaid membawa barang-barangnya dan saya pun berkata kepadanya, \'Hai Ibnu Shaid, cuaca pada hari ini cukup panas, oleh karena itu, maka sebaiknya letakkanlah barang-barangmu di bawah pohon sana!\' Abu Sa\'id berkata, "Ibnu Shaid membawa barang-barangnya dan ia pun meletakkan barang-barang saya. Setelah itu saya berkata, \'Cuaca sungguh panas. Sebaiknya kamu letakkan barang-barangmu di bawah pohon sana.\' Abu Sa\'id berkata, "Ternyata ia, Ibnu Shaid, menuruti ucapan saya." Abu Sa\'id berkata, "Lalu saya disuguhi kambing. Kemudian Ibnu Shaid pergi dan setelah itu kembali dengan membawa segelas susu seraya berkata, \'Minumlah hai Abu Sa\'id!\' Saya, Abu Sa\'id berkata, "Pada hari ini cuaca sungguh panas dan susu yang kamu hidangkan juga panas." Sebenarnya ucapan saya ini hanya merupakan penolakan halus, karena saya tidak ingin meminum sesuatu dari tangannya {atau saya meraih dari tangannya}. Ibnu Shaid berkata, "Hai Abu Sa\'id, sebenarnya saya ingin mengambil seutas tali dan mengikatkannya pada sebuah pohon. Setelah itu, saya akan pergunakan tali tersebut untuk mencekik orang-orang yang menuduhku. Hai Abu Sa\'id, apabila ada orang yang tidak mengetahui hadits Rasulullah SAW, maka hadits tersebut pasti telah diketahui oleh orang- orang Anshar. Bukankah kamu hai Abu Sa\'id termasuk salah seorang yang paling tahu tentang hadits Rasulullah SAW? Bukankah Rasulullah SAW telah bersabda bahwa Dajjal itu kafir sedangkan saya adalah muslim? Bukankah Rasulullah SAW telah bersabda, \'Dajjal itu mandul tanpa anak, sedangkan saya mempunyai anak di Madinah.\' Bukankah Rasulullah SAW pernah bersabda bahwa Dajjal tidak dapat memasuki Madinah dan Makkah, sementara saya berangkat dari Madinah menuju Makkah." Abu Sa\'id berkata, "Hampir saja saya menerima alasannya. Setelah itu ia berkata, \'Demi Allah, saya mengetahuinya, mengetahui tempat kelahirannya, dan mengetahui di mana sekarang ia berada.\' Abu Sa\'id berkata, "Saya berkata kepadanya, \'Celakalah kamu pada sisa hidupmu.\'" {Muslim 8/191}',
      },
      {
        'arabic':
            'عَنْ مُحَمَّدِ بْنِ الْمُنْكَدِرِ قَالَ رَأَيْتُ جَابِرَ بْنَ عَبْدِ اللَّهِ يَحْلِفُ بِاللَّهِ أَنَّ ابْنَ صَائِدٍ الدَّجَّالُ فَقُلْتُ أَتَحْلِفُ بِاللَّهِ قَالَ إِنِّي سَمِعْتُ عُمَرَ يَحْلِفُ عَلَى ذَلِكَ عِنْدَ النَّبِيِّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ فَلَمْ يُنْكِرْهُ النَّبِيُّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ',
        'indo':
            'Dari Muhammad bin Al Munkadir, dia berkata, "Saya pernah melihat Jabir bin Abdullah bersumpah dengan nama Allah bahwasanya Ibnu Shaid itu adalah Dajjal." Lalu saya bertanya, "Maukah kamu bersumpah dengan nama Allah?" Ia menjawab, "Sesungguhnya saya pernah mendengar Umar RA bersumpah di sisi Rasulullah SAW mengenai hal itu dan beliau tidak mengingkarinya." {Muslim 8/192}',
      },
      {
        'arabic':
            'عن عَبْد اللَّهِ بْن عُمَرَ أَخْبَرَهُ أَنَّ عُمَرَ بْنَ الْخَطَّابِ انْطَلَقَ مَعَ رَسُولِ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ فِي رَهْطٍ قِبَلَ ابْنِ صَيَّادٍ حَتَّى وَجَدَهُ يَلْعَبُ مَعَ الصِّبْيَانِ عِنْدَ أُطُمِ بَنِي مَغَالَةَ وَقَدْ قَارَبَ ابْنُ صَيَّادٍ يَوْمَئِذٍ الْحُلُمَ فَلَمْ يَشْعُرْ حَتَّى ضَرَبَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ ظَهْرَهُ بِيَدِهِ ثُمَّ قَالَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ لِابْنِ صَيَّادٍ أَتَشْهَدُ أَنِّي رَسُولُ اللَّهِ فَنَظَرَ إِلَيْهِ ابْنُ صَيَّادٍ فَقَالَ أَشْهَدُ أَنَّكَ رَسُولُ الْأُمِّيِّينَ فَقَالَ ابْنُ صَيَّادٍ لِرَسُولِ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ أَتَشْهَدُ أَنِّي رَسُولُ اللَّهِ فَرَفَضَهُ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ وَقَالَ آمَنْتُ بِاللَّهِ وَبِرُسُلِهِ ثُمَّ قَالَ لَهُ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ مَاذَا تَرَى قَالَ ابْنُ صَيَّادٍ يَأْتِينِي صَادِقٌ وَكَاذِبٌ فَقَالَ لَهُ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ خُلِّطَ عَلَيْكَ الْأَمْرُ ثُمَّ قَالَ لَهُ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ إِنِّي قَدْ خَبَأْتُ لَكَ خَبِيئًا فَقَالَ ابْنُ صَيَّادٍ هُوَ الدُّخُّ فَقَالَ لَهُ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ اخْسَأْ فَلَنْ تَعْدُوَ قَدْرَكَ فَقَالَ عُمَرُ بْنُ الْخَطَّابِ ذَرْنِي يَا رَسُولَ اللَّهِ أَضْرِبْ عُنُقَهُ فَقَالَ لَهُ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ إِنْ يَكُنْهُ فَلَنْ تُسَلَّطَ عَلَيْهِ وَإِنْ لَمْ يَكُنْهُ فَلَا خَيْرَ لَكَ فِي قَتْلِهِ وَقَالَ سَالِمُ بْنُ عَبْدِ اللَّهِ سَمِعْتُ عَبْدَ اللَّهِ بْنَ عُمَرَ يَقُولُ انْطَلَقَ بَعْدَ ذَلِكَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ وَأُبَيُّ بْنُ كَعْبٍ الْأَنْصَارِيُّ إِلَى النَّخْلِ الَّتِي فِيهَا ابْنُ صَيَّادٍ حَتَّى إِذَا دَخَلَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ النَّخْلَ طَفِقَ يَتَّقِي بِجُذُوعِ النَّخْلِ وَهُوَ يَخْتِلُ أَنْ يَسْمَعَ مِنْ ابْنِ صَيَّادٍ شَيْئًا قَبْلَ أَنْ يَرَاهُ ابْنُ صَيَّادٍ فَرَآهُ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ وَهُوَ مُضْطَجِعٌ عَلَى فِرَاشٍ فِي قَطِيفَةٍ لَهُ فِيهَا زَمْزَمَةٌ فَرَأَتْ أُمُّ ابْنِ صَيَّادٍ رَسُولَ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ وَهُوَ يَتَّقِي بِجُذُوعِ النَّخْلِ فَقَالَتْ لِابْنِ صَيَّادٍ يَا صَافِ وَهُوَ اسْمُ ابْنِ صَيَّادٍ هَذَا مُحَمَّدٌ فَثَارَ ابْنُ صَيَّادٍ فَقَالَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ لَوْ تَرَكَتْهُ بَيَّنَ قَالَ سَالِمٌ قَالَ عَبْدُ اللَّهِ بْنُ عُمَرَ فَقَامَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ فِي النَّاسِ فَأَثْنَى عَلَى اللَّهِ بِمَا هُوَ أَهْلُهُ ثُمَّ ذَكَرَ الدَّجَّالَ فَقَالَ إِنِّي لَأُنْذِرُكُمُوهُ مَا مِنْ نَبِيٍّ إِلَّا وَقَدْ أَنْذَرَهُ قَوْمَهُ لَقَدْ أَنْذَرَهُ نُوحٌ قَوْمَهُ وَلَكِنْ أَقُولُ لَكُمْ فِيهِ قَوْلًا لَمْ يَقُلْهُ نَبِيُّ لِقَوْمِهِ تَعَلَّمُوا أَنَّهُ أَعْوَرُ وَأَنَّ اللَّهَ تَبَارَكَ وَتَعَالَى لَيْسَ بِأَعْوَرَ قَالَ ابْنُ شِهَابٍ وَأَخْبَرَنِي عُمَرُ بْنُ ثَابِتٍ الْأَنْصَارِيُّ أَنَّهُ أَخْبَرَهُ بَعْضُ أَصْحَابِ رَسُولِ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ أَنَّ رَسُولَ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ قَالَ يَوْمَ حَذَّرَ النَّاسَ الدَّجَّالَ إِنَّهُ مَكْتُوبٌ بَيْنَ عَيْنَيْهِ كَافِرٌ يَقْرَؤُهُ مَنْ كَرِهَ عَمَلَهُ أَوْ يَقْرَؤُهُ كُلُّ مُؤْمِنٍ وَقَالَ تَعَلَّمُوا أَنَّهُ لَنْ يَرَى أَحَدٌ مِنْكُمْ رَبَّهُ عَزَّ وَجَلَّ حَتَّى يَمُوتَ',
        'indo':
            'Dari Abdullah bin Umar, bahwasanya Umar bin Khaththab RA pernah pergi bersama Rasululullah SAW dalam suatu rombongan menuju rumah Ibnu Shayyad. Ketika tiba di tempat tujuan, Rasulullah dan para sahabat menjumpainya sedang bermain bersama anak-anak lain di dekat benteng Bani Maghalah di mana pada saat itu Ibnu Shayyad hampir dewasa. Rupanya Ibnu Shayyad tidak menyadari kehadiran Rasulullah di tempat itu hingga Rasululah menepuk punggungnya dan berkata, "Apakah kamu bersaksi bahwasanya aku ini adalah utusan Allah?" Ibnu Shayyad memandang kepada Rasulullah SAW dan selanjutnya menjawab, "Saya bersaksi bahwasanya engkau adalah seorang utusan yang ummi {tidak bisa membaca dan menulis}." Lalu Ibnu Shayyad balik bertanya, "Apakah engkau bersaksi bahwasanya saya adalah utusan Allah?" Mendengar pertanyaan itu, Rasulullah SAW menekannya, maka ibnu Shayyad berkata, "Saya beriman kepada Allah dan Rasul-Nya." Setelah itu, Rasulullah SAW bertanya lagi kepadanya, "Apa yang kamu lihat dalam mimpimu?" Ibnu Shayyad menjawab, "Datang khabar yang benar dan kabar bohong kepadaku." Rasulullah SAW berkata kepadanya, "Kabar itu samar bagi kamu." Kemudian Rasulullah bertanya lagi kepadanya, "Sesungguhnya aku telah menyembunyikan sesuatu darimu, apakah itu?" Ibnu Shayyad menjawab, "Asap." Kemudian Rasulullah pun berseru kepadanya, "Enyalah kamu. Sesungguhnya kamu tidak akan dapat menjawab" Umar bin Khaththab berkata, "Ya Rasulullah, izinkanlah saya memenggal batang lehernya!" Rasulullah SAW menjawab, "Jika benar ia adalah Dajjal, maka kamu tidak akan mampu untuk melawannya ya Umar. Tetapi sebaliknya, jika ia bukan Dajjal sang pendusta, maka percuma saja kamu membunuhnya." Salim bin Abdullah berkata, "Saya pernah mendengar..."',
      },
      {
        'arabic':
            'عَنْ حُذَيْفَةَ قَالَ قَالَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ لَأَنَا أَعْلَمُ بِمَا مَعَ الدَّجَّالِ مِنْهُ مَعَهُ نَهْرَانِ يَجْرِيَانِ أَحَدُهُمَا رَأْيَ الْعَيْنِ مَاءٌ أَبْيَضُ وَالْآخَرُ رَأْيَ الْعَيْنِ نَارٌ تَأَجَّجُ فَإِمَّا أَدْرَكَنَّ أَحَدٌ فَلْيَأْتِ النَّهْرَ الَّذِي يَرَاهُ نَارًا وَلْيُغَمِّضْ ثُمَّ لْيُطَأْطِئْ رَأْسَهُ فَيَشْرَبَ مِنْهُ فَإِنَّهُ مَاءٌ بَارِدٌ وَإِنَّ الدَّجَّالَ مَمْسُوحُ الْعَيْنِ عَلَيْهَا ظَفَرَةٌ غَلِيظَةٌ مَكْتُوبٌ بَيْنَ عَيْنَيْهِ كَافِرٌ يَقْرَؤُهُ كُلُّ مُؤْمِنٍ كَاتِبٍ وَغَيْرِ كَاتِبٍ',
        'indo':
            'Dari Hudzaifah RA, dia berkata, "Rasulullah SAW telah bersabda, \'Sesungguhnya aku lebih tahu tentang ciri-ciri Dajjal daripada dirinya sendiri. Ia membawa dua sungai yang mengalir, yang satu tampak berair bening dan yang lain tampak berisi api yang menyala-nyala. Barang siapa menemuinya, maka hendaklah ia mendekati sungai yang tampak berisi air. Setelah itu, pejamkanlah mata dan tundukkanlah kepala serta minumlah air dari sungai tersebut. Karena pada hakikatnya sungai tersebut berisi air yang sangat sejuk dan dingin. Sesungguhnya mata Dajjal itu tertutup oleh selaput kulit keras dan di antara kedua matanya tertulis "kafir ". Tulisan tersebut — sebenarnya — dapat dibaca oleh setiap mukmin, baik yang mengerti tulisan ataupun yang tidak mengerti tulisan."\' {Muslim 8/195}',
      },
      {
        'arabic':
            'عَنْ حُذَيْفَةَ قَالَ قَالَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ الدَّجَّالُ أَعْوَرُ الْعَيْنِ الْيُسْرَى جُفَالُ الشَّعَرِ مَعَهُ جَنَّةٌ وَنَارٌ فَنَارُهُ جَنَّةٌ وَجَنَّتُهُ نَارٌ',
        'indo':
            'Dari Hudzaifah RA, dia berkata, "Rasulullah SAW telah bersabda, \'Mata Dajjal yang kiri buta, rambutnya lebat, dan membawa surga serta neraka. Sesungguhnya nerakanya itu adalah surga Allah dan surganya adalah neraka Allah." {Muslim 8/195}',
      },
      {
        'arabic':
            'عن النَّوَّاس بْن سَمْعَان الْكِلَابِيَّ ح و حَدَّثَنِي مُحَمَّدُ بْنُ مِهْرَانَ الرَّازِيُّ وَاللَّفْظُ لَهُ حَدَّثَنَا الْوَلِيدُ بْنُ مُسْلِمٍ حَدَّثَنَا عَبْدُ الرَّحْمَنِ بْنُ يَزِيدَ بْنِ جَابِرٍ عَنْ يَحْيَى بْنِ جَابِرٍ الطَّائِيِّ عَنْ عَبْدِ الرَّحْمَنِ بْنُ جُبَيْرِ بْنِ نُفَيْرٍ عَنْ أَبِيهِ جُبَيْرِ بْنِ نُفَيْرٍ عَنْ النَّوَّاسِ بْنِ سَمْعَانَ قَالَ ذَكَرَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ الدَّجَّالَ ذَاتَ غَدَاةٍ فَخَفَّضَ فِيهِ وَرَفَّعَ حَتَّى ظَنَنَّاهُ فِي طَائِفَةِ النَّخْلِ فَلَمَّا رُحْنَا إِلَيْهِ عَرَفَ ذَلِكَ فِينَا فَقَالَ مَا شَأْنُكُمْ قُلْنَا يَا رَسُولَ اللَّهِ ذَكَرْتَ الدَّجَّالَ غَدَاةً فَخَفَّضْتَ فِيهِ وَرَفَّعْتَ حَتَّى ظَنَنَّاهُ فِي طَائِفَةِ النَّخْلِ فَقَالَ غَيْرُ الدَّجَّالِ أَخْوَفُنِي عَلَيْكُمْ إِنْ يَخْرُجْ وَأَنَا فِيكُمْ فَأَنَا حَجِيجُهُ دُونَكُمْ وَإِنْ يَخْرُجْ وَلَسْتُ فِيكُمْ فَامْرُؤٌ حَجِيجُ نَفْسِهِ وَاللَّهُ خَلِيفَتِي عَلَى كُلِّ مُسْلِمٍ إِنَّهُ شَابٌّ قَطَطٌ عَيْنُهُ طَافِئَةٌ كَأَنِّي أُشَبِّهُهُ بِعَبْدِ الْعُزَّى بْنِ قَطَنٍ فَمَنْ أَدْرَكَهُ مِنْكُمْ فَلْيَقْرَأْ عَلَيْهِ فَوَاتِحَ سُورَةِ الْكَهْفِ إِنَّهُ خَارِجٌ خَلَّةً بَيْنَ الشَّأْمِ وَالْعِرَاقِ فَعَاثَ يَمِينًا وَعَاثَ شِمَالًا يَا عِبَادَ اللَّهِ فَاثْبُتُوا قُلْنَا يَا رَسُولَ اللَّهِ وَمَا لَبْثُهُ فِي الْأَرْضِ قَالَ أَرْبَعُونَ يَوْمًا يَوْمٌ كَسَنَةٍ وَيَوْمٌ كَشَهْرٍ وَيَوْمٌ كَجُمُعَةٍ وَسَائِرُ أَيَّامِهِ كَأَيَّامِكُمْ قُلْنَا يَا رَسُولَ اللَّهِ فَذَلِكَ الْيَوْمُ الَّذِي كَسَنَةٍ أَتَكْفِينَا فِيهِ صَلَاةُ يَوْمٍ قَالَ لَا اقْدُرُوا لَهُ قَدْرَهُ قُلْنَا يَا رَسُولَ اللَّهِ وَمَا إِسْرَاعُهُ فِي الْأَرْضِ قَالَ كَالْغَيْثِ اسْتَدْبَرَتْهُ الرِّيحُ فَيَأْتِي عَلَى الْقَوْمِ فَيَدْعُوهُمْ فَيُؤْمِنُونَ بِهِ وَيَسْتَجِيبُونَ لَهُ فَيَأْمُرُ السَّمَاءَ فَتُمْطِرُ وَالْأَرْضَ فَتُنْبِتُ فَتَرُوحُ عَلَيْهِمْ سَارِحَتُهُمْ أَطْوَلَ مَا كَانَتْ ذُرًا وَأَسْبَغَهُ ضُرُوعًا وَأَمَدَّهُ خَوَاصِرَ ثُمَّ يَأْتِي الْقَوْمَ فَيَدْعُوهُمْ فَيَرُدُّونَ عَلَيْهِ قَوْلَهُ فَيَنْصَرِفُ عَنْهُمْ فَيُصْبِحُونَ مُمْحِلِينَ لَيْسَ بِأَيْدِيهِمْ شَيْءٌ مِنْ أَمْوَالِهِمْ وَيَمُرُّ بِالْخَرِبَةِ فَيَقُولُ لَهَا أَخْرِجِي كُنُوزَكِ فَتَتْبَعُهُ كُنُوزُهَا كَيَعَاسِيبِ النَّحْلِ ثُمَّ يَدْعُو رَجُلًا مُمْتَلِئًا شَبَابًا فَيَضْرِبُهُ بِالسَّيْفِ فَيَقْطَعُهُ جَزْلَتَيْنِ رَمْيَةَ الْغَرَضِ ثُمَّ يَدْعُوهُ فَيُقْبِلُ وَيَتَهَلَّلُ وَجْهُهُ يَضْحَكُ فَبَيْنَمَا هُوَ كَذَلِكَ إِذْ بَعَثَ اللَّهُ الْمَسِيحَ ابْنَ مَرْيَمَ فَيَنْزِلُ عِنْدَ الْمَنَارَةِ الْبَيْضَاءِ شَرْقِيَّ دِمَشْقَ بَيْنَ مَهْرُودَتَيْنِ وَاضِعًا كَفَّيْهِ عَلَى أَجْنِحَةِ مَلَكَيْنِ إِذَا طَأْطَأَ رَأْسَهُ قَطَرَ وَإِذَا رَفَعَهُ تَحَدَّرَ مِنْهُ جُمَانٌ كَاللُّؤْلُؤِ فَلَا يَحِلُّ لِكَافِرٍ يَجِدُ رِيحَ نَفَسِهِ إِلَّا مَاتَ وَنَفَسُهُ يَنْتَهِي حَيْثُ يَنْتَهِي طَرْفُهُ فَيَطْلُبُهُ حَتَّى يُدْرِكَهُ بِبَابِ لُدٍّ فَيَقْتُلُهُ ثُمَّ يَأْتِي عِيسَى ابْنَ مَرْيَمَ قَوْمٌ قَدْ عَصَمَهُمْ اللَّهُ مِنْهُ فَيَمْسَحُ عَنْ وُجُوهِهِمْ وَيُحَدِّثُهُمْ بِدَرَجَاتِهِمْ فِي الْجَنَّةِ فَبَيْنَمَا هُوَ كَذَلِكَ إِذْ أَوْحَى اللَّهُ إِلَى عِيسَى إِنِّي قَدْ أَخْرَجْتُ عِبَادًا لِي لَا يَدَانِ لِأَحَدٍ بِقِتَالِهِمْ فَحَرِّزْ عِبَادِي إِلَى الطُّورِ وَيَبْعَثُ اللَّهُ يَأْجُوجَ وَمَأْجُوجَ وَهُمْ مِنْ كُلِّ حَدَبٍ يَنْسِلُونَ فَيَمُرُّ أَوَائِلُهُمْ عَلَى بُحَيْرَةِ طَبَرِيَّةَ فَيَشْرَبُونَ مَا فِيهَا وَيَمُرُّ آخِرُهُمْ فَيَقُولُونَ لَقَدْ كَانَ بِهَذِهِ مَرَّةً مَاءٌ وَيُحْصَرُ نَبِيُّ اللَّهِ عِيسَى وَأَصْحَابُهُ حَتَّى يَكُونَ رَأْسُ الثَّوْرِ لِأَحَدِهِمْ خَيْرًا مِنْ مِائَةِ دِينَارٍ لِأَحَدِكُمْ الْيَوْمَ فَيَرْغَبُ نَبِيُّ اللَّهِ عِيسَى وَأَصْحَابُهُ فَيُرْسِلُ اللَّهُ عَلَيْهِمْ النَّغَفَ فِي رِقَابِهِمْ فَيُصْبِحُونَ فَرْسَى كَمَوْتِ نَفْسٍ وَاحِدَةٍ ثُمَّ يَهْبِطُ نَبِيُّ اللَّهِ عِيسَى وَأَصْحَابُهُ إِلَى الْأَرْضِ فَلَا يَجِدُونَ فِي الْأَرْضِ مَوْضِعَ شِبْرٍ إِلَّا مَلَأَهُ زَهَمُهُمْ وَنَتْنُهُمْ فَيَرْغَبُ نَبِيُّ اللَّهِ عِيسَى وَأَصْحَابُهُ إِلَى اللَّهِ فَيُرْسِلُ اللَّهُ طَيْرًا كَأَعْنَاقِ الْبُخْتِ فَتَحْمِلُهُمْ فَتَطْرَحُهُمْ حَيْثُ شَاءَ اللَّهُ ثُمَّ يُرْسِلُ اللَّهُ مَطَرًا لَا يَكُنُّ مِنْهُ بَيْتُ مَدَرٍ وَلَا وَبَرٍ فَيَغْسِلُ الْأَرْضَ حَتَّى يَتْرُكَهَا كَالزَّلَفَةِ ثُمَّ يُقَالُ لِلْأَرْضِ أَنْبِتِي ثَمَرَتَكِ وَرُدِّي بَرَكَتَكِ فَيَوْمَئِذٍ تَأْكُلُ الْعِصَابَةُ مِنْ الرُّمَّانَةِ وَيَسْتَظِلُّونَ بِقِحْفِهَا وَيُبَارَكُ فِي الرِّسْلِ حَتَّى أَنَّ اللِّقْحَةَ مِنْ الْإِبِلِ لَتَكْفِي الْفِئَامَ مِنْ النَّاسِ وَاللِّقْحَةَ مِنْ الْبَقَرِ لَتَكْفِي الْقَبِيلَةَ مِنْ النَّاسِ وَاللِّقْحَةَ مِنْ الْغَنَمِ لَتَكْفِي الْفَخِذَ مِنْ النَّاسِ فَبَيْنَمَا هُمْ كَذَلِكَ إِذْ بَعَثَ اللَّهُ رِيحًا طَيِّبَةً فَتَأْخُذُهُمْ تَحْتَ آبَاطِهِمْ فَتَقْبِضُ رُوحَ كُلِّ مُؤْمِنٍ وَكُلِّ مُسْلِمٍ وَيَبْقَى شِرَارُ النَّاسِ يَتَهَارَجُونَ فِيهَا تَهَارُجَ الْحُمُرِ فَعَلَيْهِمْ تَقُومُ السَّاعَةُ',
        'indo':
            'Dari An-Nawwaas bin Sam\'an RA, dia berkata, "Pada suatu hari Rasulullah SAW berbicara tentang Dajjal. Terkadang beliau merendahkan suaranya dan terkadang meninggikannya sehingga kami yang mendengarnya seolah-olah mendengar suara beliau di tengah pepohonan kurma. Pada suatu petang kami mendatangi Rasulullah dan sepertinya beliau telah memahami permasalahan kami. Oleh karena itu, beliau bertanya, "Ada apa dengan kalian?\' Kami menjawab, "Ya Rasulullah, pagi tadi engkau menerangkan kepada kami tentang Dajjal dengan sesekali meninggikan dan merendahkan suara, seolah-olah kami mendengarnya di tengah pepohonan kurma." Rasulullah bersabda, "Sebenarnya bukan Dajjal yang paling aku khawatirkan terhadap kalian. Karena jika ia muncul dan aku masih bersama kalian, maka akulah yang akan menjadi pelindung kalian dari godaannya. Jika ia muncul ketika aku telah tiada di tengah kalian, maka setiap individu dari kaum muslimin akan menjadi pelindung bagi dirinya sendiri dan Allah-lah yang akan menggantikanku untuk melindungi setiap orang muslim. " Dajjal adalah seorang pemuda yang berambut keriting, matanya buta {yang kanan}, dan aku sendiri lebih cenderung menyerupakannya dengan Abdul Uzza bin Qathan. Barang siapa di antara kalian menjumpainya, maka bacakanlah permulaan surat Al Kahfi kepadanya. Sesungguhnya Dajjal itu akan muncul di suatu tempat yang sepi antara Syam dan Irak. Setelah itu, ia akan membuat keonaran ke kiri dan ke kanan. Wahai hamba-hamba Allah, teguhkanlah pendirian kalian semuanya.\' Kami bertanya, "Ya Rasulullah, berapa lama Dajjal akan menetap di bumi?" Rasulullah pun menjawab, "Ia akan menetap selama empat puluh hari di bumi. Satu hari seperti satu tahun, satu hari lagi seperti sebulan, satu hari lagi seperti sepekan, sedangkan hari-hari berikutnya adalah seperti hari kalian sekarang" Kami bertanya, "Ya Rasulullah, pada saat satu hari seperti setahun itu, apakah cukup bagi kami untuk melaksanakan shalat seperti shalat kami sekarang ini?" Rasulullah SAW menjawab, "Tidak. Tetapi, hitunglah seperti biasanya." Kami bertanya, "Ya Rasulullah, bagaimanakah kecepatan Dajjal berjalan di muka bumi?" Rasulullah SAW menjawab, "Kecepatannya berjalan di muka bumi seperti awan yang ditiup angin. Ia akan mendatangi suatu kaum dan mengajak mereka untuk beriman kepadanya hingga mereka pun beriman kepadanya dan menuruti perintahnya. Ia dapat memerintahkan langit, maka hujan pun akan turun. Ia memerintahkan kepada bumi, maka tanaman pun akan segera tumbuh dan langsung dikonsumsi oleh ternak-ternak, hingga ternak mereka pulang ke kandang pada petang hari dengan kondisi yang lebih gemuk, lebih besar, dan lebih banyak air susunya karena banyak memakan rerumputan yang tumbuh di muka bumi. Kemudian Dajjal akan mendatangi suatu kaum yang lainnya. Setelah itu, ia menyerukan kepada mereka untuk beriman kepadanya, tetapi mereka menolak ajakannya. Lalu Dajjal menyingkir dari mereka, tetapi keesokan harinya negeri tersebut berubah menjadi negeri yang tandus dan harta mereka lenyap. Setelah itu, Dajjal melewati suatu negeri yang hancur. Kemudian ia berkata, "Keluarkanlah harta simpananmu hai negeri yang porak poranda!\' Kemudian simpanan negeri itu keluar sambil mengikuti Dajjal seperti ratu lebah yang diikuti oleh anak buahnya. Kemudian Dajjal memanggil seorang pemuda dan memenggalnya dengan pedang hingga tubuh pemuda itu terbelah menjadi dua dan belahan tubuhnya terlempar sejauh lemparan anak panah. Setelah itu, Dajjal memanggil tubuh pemuda tersebut, yang telah terbelah, kepadanya. Tak lama kemudian, tubuh itu hidup lagi dan langsung menghadap kepadanya dengan wajah yang berseri-berseri. Ketika Dajjal tengah melakukan kerusakan dan keonaran seperti itu, maka Allah Azza wa Jalla pun mengutus Isa Al Masih bin Maryam ke bumi. Kemudian Isa Al Masih bin Maryam turun di dekat menara putih sebelah timur Damaskus dengan mengenakan pakaian dua warna sambil meletakkan dua telapak tangannya pada sayap dua malaikat. Apabila ia merundukkan kepalanya, maka butir-butir mutiara akan berjatuhan dari kepalanya. Dan apabila ada orang kafir mencium nafasnya, maka ia pun akan mati, sedangkan nafasnya itu dapat tercium sejauh mata memandang. Isa Al Masih bin Maryam terus mencari Dajjal hingga bertemu dengannya di pintu gerbang kota Ludd, dan kemudian membunuhnya. Setelah itu, Nabi Isa bin Maryam mendatangi suatu kelompok kaum yang dilindungi Allah Subhanahu wa Ta\'ala dari Dajjal. Lalu Isa bin Maryam mengusap wajah mereka dan memberitahukan kepada mereka mengenai derajat mereka di surga. Ketika Isa bin Maryam berada dalam kondisi seperti itu, maka Allah pun mewahyukan kepadanya: \'Sesungguhnya Aku telah mengeluarkan hamba-hamba-Ku yang tidak terkalahkan oleh siapapun. Oleh karena itu, selamatkanlah hamba-hamba-Ku yang shalih ke bukit.\' Lalu Allah Subhanahu wa Ta\'ala mengeluarkan Ya\'juj dan Ma\'juj {mereka turun ke segala penjuru dari tempat yang tinggi) (Qs. Al Anbiya{21}:96) Kelompok mereka yang pertama melewati telaga Thabariyah. Kemudian mereka meminum airnya hingga habis. Kelompok mereka yang terakhir lewat pula seraya berkata, "Di tempat ini dahulu ada air.\' Pada suatu ketika, Nabi Isa bin Maryam dan para sahabatnya terkepung, hingga pada saat itu sebuah kepala sapi lebih berharga bagi mereka daripada uang seratus dinar sekarang ini. Kemudian Nabi Isa bin Maryam dan para sahabatnya berdoa agar Allah mengancurkan Ya\'juj dan Ma\'juj beserta para pengikutnya. Lalu Allah menimpakan kepada mereka penyakit hidung —seperti yang melanda hewan ternak— hingga mereka semua binasa. Kemudian Nabi Isa bin Maryam bersama para sahabatnya tiba di suatu tempat di bumi. Mereka tidaklah mendapati sejengkal tanah, melainkan tanah tersebut telah penuh dengan bangkai-bangkai manusia yang membusuk. Lalu Nabi Isa dan para sahabatnya berdoa dan memohon kepada Allah Subhanahu wa Ta\'ala hingga Allah mengutus burung-burung sebesar unta yang membawa bangkai-bangkai manusia tersebut dan membuangnya ke tempat yang dikehendaki Allah Azza wa Jalla. Setelah itu Allah Subhanahu wa Ta\'ala menurunkan hujan yang menyiram setiap rumah di kota dan di desa hingga bumi menjadi bersih setelah tersiram hujan. Lalu Allah Subhanahu wa Ta\'ala memerintahkan kepada bumi, "Munculkanlah buah-buahanmu dan kembalikanlah keberkahanmu!\' Pada hari itu sekelompok keluarga dapat menjadi kenyang dengan memakan satu buah delima dan dapat berteduh di bawah kulit buah delima. Air susu juga penuh dengan keberkahan hingga susu seekor unta cukup untuk sekelompok orang, susu seekor sapi cukup untuk satu kabilah, dan susu seekor kambing cukup untuk beberapa orang keluarga dekat. Ketika mereka berada dalam kondisi seperti ini, maka Allah pun mengirimkan angin baik yang melewati ketiak mereka. Angin tersebut merenggut nyawa setiap mukmin dan muslim hingga tinggallah orang-orang yang jahat yang berhiruk pikuk seperti hiruk pikuknya keledai, maka terjadilah kiamat yang menimpa mereka." {Muslim 8/197-198}',
      },
      {
        'arabic':
            'عَنْ أَبي سَعِيدٍ الْخُدْرِيَّ قَالَ حَدَّثَنَا رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ يَوْمًا حَدِيثًا طَوِيلًا عَنْ الدَّجَّالِ فَكَانَ فِيمَا حَدَّثَنَا قَالَ يَأْتِي وَهُوَ مُحَرَّمٌ عَلَيْهِ أَنْ يَدْخُلَ نِقَابَ الْمَدِينَةِ فَيَنْتَهِي إِلَى بَعْضِ السِّبَاخِ الَّتِي تَلِي الْمَدِينَةَ فَيَخْرُجُ إِلَيْهِ يَوْمَئِذٍ رَجُلٌ هُوَ خَيْرُ النَّاسِ أَوْ مِنْ خَيْرِ النَّاسِ فَيَقُولُ لَهُ أَشْهَدُ أَنَّكَ الدَّجَّالُ الَّذِي حَدَّثَنَا رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ حَدِيثَهُ فَيَقُولُ الدَّجَّالُ أَرَأَيْتُمْ إِنْ قَتَلْتُ هَذَا ثُمَّ أَحْيَيْتُهُ أَتَشُكُّونَ فِي الْأَمْرِ فَيَقُولُونَ لَا قَالَ فَيَقْتُلُهُ ثُمَّ يُحْيِيهِ فَيَقُولُ حِينَ يُحْيِيهِ وَاللَّهِ مَا كُنْتُ فِيكَ قَطُّ أَشَدَّ بَصِيرَةً مِنِّي الْآنَ قَالَ فَيُرِيدُ الدَّجَّالُ أَنْ يَقْتُلَهُ فَلَا يُسَلَّطُ عَلَيْهِ قَالَ أَبُو إِسْحَقَ يُقَالُ إِنَّ هَذَا الرَّجُلَ هُوَ الْخَضِرُ عَلَيْهِ السَّلَام',
        'indo':
            'Dari Abu Said Al Khudri RA, dia berkata, "Pada suatu hari Rasulullah SAW pernah bercerita secara panjang lebar tentang Dajjal kepada kami, antara lain beliau menyatakan, \'Sesungguhnya Dajjal pasti akan terhalang untuk masuk ke dalam Madinah. Setelah itu ia berhenti di salah satu kebun di dekat Madinah. Tak lama kemudian, seorang laki-laki yang tampan pergi mendatanginya seraya berkata, \'Saya bersaksi bahwasanya kamu pasti Dajjal yang telah diceritakan Rasulullah SAW kepada kami.\' Kemudian Dajjal berkata kepada para pengikutnya, "Bagaimanakah menurut pendapat kalian jika saya bunuh orang ini dan setelah itu saya hidupkan kembali, apakah kalian masih merasa ragu tentang hal itu?" Para pengikut Dajjal menjawab, "Tidak hai Dajjal. Kami tidak merasa ragu." Akhirnya Dajjal pun membunuh laki-laki tersebut dan setelah itu menghidupkannya kembali. Pada saat laki-laki itu dihidupkan kembali dari matinya, maka ia pun berkata, "Demi Allah, sekarang saya semakin yakin bahwasanya kamu ini adalah Dajjal yang terkutuk itu." Rasulullah meneruskan keterangannya, "Kemudian Dajjal ingin membunuhnya lagi, tetapi kini ia tidak dapat mengalahkannya lagi." Abu Ishaq berkata, "Sesungguhnya yang dimaksud dengan laki-laki itu adalah Nabi Khidhir Alaihis-Salam.\' {Muslim 8/199}',
      },
      {
        'arabic':
            'عَنْ أَبِي سَعِيدٍ الْخُدْرِيِّ قَالَ صَحِبْتُ ابْنَ صَائِدٍ إِلَى مَكَّةَ فَقَالَ لِي أَمَا قَدْ لَقِيتُ مِنْ النَّاسِ يَزْعُمُونَ أَنِّي الدَّجَّالُ أَلَسْتَ سَمِعْتَ رَسُولَ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ يَقُولُ إِنَّهُ لَا يُولَدُ لَهُ قَالَ قُلْتُ بَلَى قَالَ فَقَدْ وُلِدَ لِي أَوَلَيْسَ سَمِعْتَ رَسُولَ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ يَقُولُ لَا يَدْخُلُ الْمَدِينَةَ وَلَا مَكَّةَ قُلْتُ بَلَى قَالَ فَقَدْ وُلِدْتُ بِالْمَدِينَةِ وَهَذَا أَنَا أُرِيدُ مَكَّةَ قَالَ ثُمَّ قَالَ لِي فِي آخِرِ قَوْلِهِ أَمَا وَاللَّهِ إِنِّي لَأَعْلَمُ مَوْلِدَهُ وَمَكَانَهُ وَأَيْنَ هُوَ قَالَ فَلَبَسَنِي',
        'indo':
            'Dari Abu Said Al-Khudri RA, ia berkata: Aku menemani Ibnu Shaid pergi ke Mekah, ia berkata kepadaku: Aku telah bertemu dengan beberapa orang yang menganggap bahwa aku adalah seorang Dajjal. Apakah kamu pernah mendengar Rasulullah SAW bersabda: Sesungguhnya Dajjal itu tidak mempunyai anak. Aku jawab: Ya! Ia berkata lagi: Dan aku telah mempunyai anak. Bukankah kamu telah mendengar Rasulullah SAW bersabda: Dajjal itu tidak akan memasuki Madinah dan Mekah. Aku menjawab: Ya! Ia berkata lagi: Dan aku telah dilahirkan di Madinah dan sekarang aku sedang menuju ke Mekah. Kemudian di akhir pertanyaannya dia berkata kepadaku: Demi Allah, sesungguhnya aku tahu waktu kelahirannya, tempatnya dan di mana dia. Ia berkata: Ia telah mengaburkanku tentang perkara itu. Hadis riwayat Muslim',
      },
      {
        'arabic':
            'عَنْ الْمُغِيرَةِ بْنِ شُعْبَةَ قَالَ مَا سَأَلَ أَحَدٌ النَّبِيَّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ عَنْ الدَّجَّالِ أَكْثَرَ مِمَّا سَأَلْتُ قَالَ وَمَا يُنْصِبُكَ مِنْهُ إِنَّهُ لَا يَضُرُّكَ قَالَ قُلْتُ يَا رَسُولَ اللَّهِ إِنَّهُمْ يَقُولُونَ إِنَّ مَعَهُ الطَّعَامَ وَالْأَنْهَارَ قَالَ هُوَ أَهْوَنُ عَلَى اللَّهِ مِنْ ذَلِكَ',
        'indo':
            'Dari Al Mughirah bin Syu\'bah RA, dia berkata, "Tidak ada orang yang lebih banyak bertanya tentang Dajjal kepada Rasulullah SAW selain saya." Rasulullah SAW bertanya, "Apa gunanya kamu bertanya tentang Dajjal? Sesungguhnya Dajjal itu tidak membahayakanmu." Al Mughirah berkata, "Saya bertanya, \'Ya Rasulullah, orang-orang mengatakan bahwa Dajjal membawa makanan dan beberapa sungai, benarkah hal itu?" Rasulullah menjawab, "Lebih hebat daripada apa yang diciptakan Dajjal, itu masih sangat mudah bagi Allah." {Muslim 8/200}',
      },
      {
        'arabic':
            'قَالَ عَبْدُ اللَّهِ بْنُ عُمَرَ ذَكَرَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ يَوْمًا بَيْنَ ظَهْرَانَيْ النَّاسِ الْمَسِيحَ الدَّجَّالَ فَقَالَ إِنَّ اللَّهَ تَبَارَكَ وَتَعَالَى لَيْسَ بِأَعْوَرَ أَلَا إِنَّ الْمَسِيحَ الدَّجَّالَ أَعْوَرُ عَيْنِ الْيُمْنَى كَأَنَّ عَيْنَهُ عِنَبَةٌ طَافِيَةٌ قَالَ وَقَالَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ أَرَانِي اللَّيْلَةَ فِي الْمَنَامِ عِنْدَ الْكَعْبَةِ فَإِذَا رَجُلٌ آدَمُ كَأَحْسَنِ مَا تَرَى مِنْ أُدْمِ الرِّجَالِ تَضْرِبُ لِمَّتُهُ بَيْنَ مَنْكِبَيْهِ رَجِلُ الشَّعْرِ يَقْطُرُ رَأْسُهُ مَاءً وَاضِعًا يَدَيْهِ عَلَى مَنْكِبَيْ رَجُلَيْنِ وَهُوَ بَيْنَهُمَا يَطُوفُ بِالْبَيْتِ فَقُلْتُ مَنْ هَذَا فَقَالُوا الْمَسِيحُ ابْنُ مَرْيَمَ وَرَأَيْتُ وَرَاءَهُ رَجُلًا جَعْدًا قَطَطًا أَعْوَرَ عَيْنِ الْيُمْنَى كَأَشْبَهِ مَنْ رَأَيْتُ مِنْ النَّاسِ بِابْنِ قَطَنٍ وَاضِعًا يَدَيْهِ عَلَى مَنْكِبَيْ رَجُلَيْنِ يَطُوفُ بِالْبَيْتِ فَقُلْتُ مَنْ هَذَا قَالُوا هَذَا الْمَسِيحُ الدَّجَّالُ',
        'indo':
            'Dari Abdullah bin Umar radhiyallahu anhu dia berkata, "Pada suatu hari Rasulullah shallallahu \'alaihi wasallam menyebutkan Dajjal di hadapan orang banyak, lalu beliau bersabda, "Sesungguhnya Allah SWT tidaklah buta sebelah. Ketahuilah, sesungguhnya mata kanan Dajjal itu buta, biji matanya bagai buah anggur yang menonjol ke depan" Kata Abdullah bin Umar, Rasulullah shallallahu \'alaihi wasallam bersabda, "Aku pernah bermimpi di sisi ka\'bah lalu di situ ada seorang laki-laki yang berkulit sawo matang, sepertinya dia orang berkulit sawo matang yang paling tampan, rambutnya panjang lagi berombak sampai ke pundak dan ia memerciki kepalanya dengan air. Dia meletakkan kedua tangannya di atas pundak dua orang laki-laki dan bertawaf di Baitullah dengan didampingi dua orang laki-laki tersebut, kemudian aku bertanya, \'Siapa ini?\' Mereka menjawab, \'Isa putra Maryam.\' Dibelakangnya kamu lihat seorang laki-laki berambut keriting dan mata kanannya buta, seolah-olah mirip dengan seseorang yang pernah aku lihat yaitu Ibnu Qathan. Laki-laki tersebut meletakkan lengannya di atas pundak dua orang laki-laki sambil thawaf di Baitullah, lalu aku bertanya, \'Siapa ini? Mereka menjawab, Ini adalah Al Masih Ad-Dajjal.\' " {Muslim 1/107}',
      },
      {
        'arabic':
            'عَنْ أَبِي هُرَيْرَةَ قَالَ قَالَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ عَلَى أَنْقَابِ الْمَدِينَةِ مَلَائِكَةٌ لَا يَدْخُلُهَا الطَّاعُونُ وَلَا الدَّجَّالُ',
        'indo':
            'Diriwayatkan oleh Abu Hurairah RA, dia berkata, "Rasululluh SAW bersabda, "Di beberapa penjuru Madinah dijaga oleh para Malaikat, sehingga Tha\'un dan Dajjal tidak dapat memasuki Madinah." {Muslim 4/120}',
      },
      {
        'arabic':
            'عَنْ أَنَسِ بْنِ مَالِكٍ أَنَّ رَسُولَ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ قَالَ يَتْبَعُ الدَّجَّالَ مِنْ يَهُودِ أَصْبَهَانَ سَبْعُونَ أَلْفًا عَلَيْهِمْ الطَّيَالِسَةُ',
        'indo':
            'Dari Anas bin Malik RA, bahwasanya Rasulullah SAW telah bersabda, "Akan ada tujuh puluh ribu orang Yahudi Ashfahan yang mengikuti Dajjal. Mereka mengenakan jubah-jubah kebesaran" {Muslim 8/207}',
      },
      {
        'arabic':
            'عَنْ جَابِرِ بْنِ سَمُرَةَ عَنْ نَافِعِ بْنِ عُتْبَةَ قَالَ كُنَّا مَعَ رَسُولِ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ فِي غَزْوَةٍ قَالَ فَأَتَى النَّبِيَّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ قَوْمٌ مِنْ قِبَلِ الْمَغْرِبِ عَلَيْهِمْ ثِيَابُ الصُّوفِ فَوَافَقُوهُ عِنْدَ أَكَمَةٍ فَإِنَّهُمْ لَقِيَامٌ وَرَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ قَاعِدٌ قَالَ فَقَالَتْ لِي نَفْسِي ائْتِهِمْ فَقُمْ بَيْنَهُمْ وَبَيْنَهُ لَا يَغْتَالُونَهُ قَالَ ثُمَّ قُلْتُ لَعَلَّهُ نَجِيٌّ مَعَهُمْ فَأَتَيْتُهُمْ فَقُمْتُ بَيْنَهُمْ وَبَيْنَهُ قَالَ فَحَفِظْتُ مِنْهُ أَرْبَعَ كَلِمَاتٍ أَعُدُّهُنَّ فِي يَدِي قَالَ تَغْزُونَ جَزِيرَةَ الْعَرَبِ فَيَفْتَحُهَا اللَّهُ ثُمَّ فَارِسَ فَيَفْتَحُهَا اللَّهُ ثُمَّ تَغْزُونَ الرُّومَ فَيَفْتَحُهَا اللَّهُ ثُمَّ تَغْزُونَ الدَّجَّالَ فَيَفْتَحُهُ اللَّهُ قَالَ فَقَالَ نَافِعٌ يَا جَابِرُ لَا نَرَى الدَّجَّالَ يَخْرُجُ حَتَّى تُفْتَحَ الرُّومُ',
        'indo':
            'Dari Jabir bin Samurah dari Nafi\' bin Utbah RA, dia berkata, "Kami pernah menyertai Rasulullah SAW dalam suatu pertempuran. Tak lama kemudian beberapa orang dari arah barat {kota Madinah} mendatangi Rasulullah. Mereka mengenakan pakaian yang terbuat dari bulu domba {wol}. Setelah itu mereka menemui Rasulullah di dekat bukit. Mereka semua berada dalam posisi berdiri, sedangkan Rasulullah sendiri dalam posisi duduk. Nafi\' bin Utbah berkata, "Di dalam hati saya berkata, \'Temuilah mereka dan setelah itu berdirilah di antara mereka sambil menemani Rasulullah agar mereka tidak mempunyai kesempatan untuk membunuh beliau!\' Saya berkata, "Mungkin Rasulullah SAW sedang menyampaikan suatu rahasia kepada mereka.\' Akhirnya, saya pun mendatangi mereka sambil berdiri di antara mereka dan Rasulullah SAW. Nafi\' berkata, "Saya menghapal empat kalimat dari Rasulullah yang saya hitung dengan jari saya. Sesungguhnya Rasulullah SAW bersabda, \'Kalian pasti akan menyerang jazirah Arab, lalu Allah pun akan menaklukkannya untuk kalian. Setelah itu kalian akan menyerang negeri Persi, lalu Allah pun akan menaklukkannya untuk kalian. Kemudian kalian akan menyerang negara Romawi, lalu Allah pun akan menaklukkannya untuk kalian. Akhirnya, kalian akan menyerang Dajjal, lalu Allah pun akan menaklukkannya untuk kalian.\' Jabir berkata, "Lalu Nafi\' mengatakan, \'Hai Jabir, kami berpendapat bahwa Dajjal itu tidak akan muncul sebelum negeri Romawi ditaklukkan.\'" {Muslim 8/178}',
      },
      {
        'arabic':
            'يَقُولُ لَيَفِرَّنَّ النَّاسُ مِنْ الدَّجَّالِ فِي الْجِبَالِ قَالَتْ أُمُّ شَرِيكٍ يَا رَسُولَ اللَّهِ فَأَيْنَ الْعَرَبُ يَوْمَئِذٍ قَالَ هُمْ قَلِيلٌ.',
        'indo':
            'Dari Ummu Syarik RA, dia pernah mendengar Rasulullah SAW bersabda, "Orang-orang yang berada di gunung-gunung akan berlari dari Dajjal." Kemudian Ummu Syarik bertanya, "Ya Rasulullah, pada saat itu di manakah orang-orang Arab berada?" Rasulullah SAW menjawab, "Pada saat itu mereka sangat sedikit." {Muslim 8/207}',
      },
      {
        'arabic':
            'لاَ يَأْتِى أَرْبَعَةَ مَسَاجِدَ الْكَعْبَةَ وَمَسْجِدَ الرَّسُولِ والْمَسْجِدَ الأَقْصَى وَالطُّورَ',
        'indo':
            '“Dajjal tidak akan memasuki empat masjid: masjid Ka’bah (masjidil Haram), masjid Rasul (masjid Nabawi), masjid Al Aqsho’, dan masjid Ath Thur.”',
      },
      {
        'arabic':
            'فَيَأْتِي عَلَى الْقَوْمِ فَيَدْعُوْهُمْ فَيُؤْمِنُوْنَ بِهِ وَيَسْتَجِيْبُوْنَ لَهُ فَيَأْمُرُ السَّمَاءَ فَتُمْطِرُ وَاْلأَرْضَ فَتُنْبِتُ',
        'indo':
            '“… Dia (Dajjal) datang kepada satu kaum untuk mendakwahi mereka. Maka mereka pun beriman kepadanya, menerima dakwahnya. Maka Dajjal memerintahkan langit untuk hujan dan memerintahkan bumi untuk menumbuhkan tanaman, maka turunlah hujan dan tumbuhlah tanaman….” (HR. Muslim no. 2937)',
      },
      {
        'arabic':
            'عن زَيْدِ بْنِ ثَابِتٍ قَالَ بَيْنَمَا النَّبِيُّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ فِي حَائِطٍ لِبَنِي النَّجَّارِ عَلَى بَغْلَةٍ لَهُ وَنَحْنُ مَعَهُ إِذْ حَادَتْ بِهِ فَكَادَتْ تُلْقِيهِ وَإِذَا أَقْبُرٌ سِتَّةٌ أَوْ خَمْسَةٌ أَوْ أَرْبَعَةٌ قَالَ كَذَا كَانَ يَقُولُ الْجُرَيْرِيُّ فَقَالَ مَنْ يَعْرِفُ أَصْحَابَ هَذِهِ الْأَقْبُرِ فَقَالَ رَجُلٌ أَنَا قَالَ فَمَتَى مَاتَ هَؤُلَاءِ قَالَ مَاتُوا فِي الْإِشْرَاكِ فَقَالَ إِنَّ هَذِهِ الْأُمَّةَ تُبْتَلَى فِي قُبُورِهَا فَلَوْلَا أَنْ لَا تَدَافَنُوا لَدَعَوْتُ اللَّهَ أَنْ يُسْمِعَكُمْ مِنْ عَذَابِ الْقَبْرِ الَّذِي أَسْمَعُ مِنْهُ ثُمَّ أَقْبَلَ عَلَيْنَا بِوَجْهِهِ فَقَالَ تَعَوَّذُوا بِاللَّهِ مِنْ عَذَابِ النَّارِ قَالُوا نَعُوذُ بِاللَّهِ مِنْ عَذَابِ النَّارِ فَقَالَ تَعَوَّذُوا بِاللَّهِ مِنْ عَذَابِ الْقَبْرِ قَالُوا نَعُوذُ بِاللَّهِ مِنْ عَذَابِ الْقَبْرِ قَالَ تَعَوَّذُوا بِاللَّهِ مِنْ الْفِتَنِ مَا ظَهَرَ مِنْهَا وَمَا بَطَنَ قَالُوا نَعُوذُ بِاللَّهِ مِنْ الْفِتَنِ مَا ظَهَرَ مِنْهَا وَمَا بَطَنَ قَالَ تَعَوَّذُوا بِاللَّهِ مِنْ فِتْنَةِ الدَّجَّالِ قَالُوا نَعُوذُ بِاللَّهِ مِنْ فِتْنَةِ الدَّجَّالِ',
        'indo':
            'Dari Zaid bin Tsabit RA, dia berkata, "Disaat Rasulullah berada di kawasan perbatasan bani Najjar di atas keledai dan kami saat itu bersamanya, tiba-tiba keledai itu meronta dan hampir menjatuhkannya, ternyata di sana terdapat 6 atau 5 atau 4 makam (dia berkata, seperti inilah yang diceritakan Jurairi). Kemudian beliau bertanya, "Siapa yang mengetahui penghuni makam-makam itu?\' Seorang pemuda menjawab, \'Saya.\' Lalu beliau bertanya, \'Kapan mereka meninggal?\' Pemuda itu menjawab, \'Mereka seluruhnya meninggal pada zaman kemusyrikan.\' Lalu beliau bersabda, \'Sesungguhnya penghuni makam-makam ini akan menerima bencana atau siksaan di kuburnya. Kalau mereka belum dimakamkan, maka aku akan memohon kepada Allah agar kalian dapat mendengarkan siksa kubur seperti yang aku dengar.\' Lalu beliau menghadapkan mukanya kepada kami, seraya bersabda, \'Mohonlah perlindungan kepada Allah SWT dari siksa api Neraka\' Lalu mereka berkata, \'Kami berlindung kepada Allah dari siksa api Neraka.\' Kemudian beliau berkata, \'Berlindunglah kalian kepada Allah dari siksa kubur\' Mereka berkata, \'Kami berlindung kepada Allah dari siksa kubur\' Lalu beliau bersabda, \'Berlindunglah kepada Allah dari fitnah yang nyata dan yang tersembunyi\' mereka berkata, \'Kami berlindung dari fitnah yang nyata dan yang tersembunyi.\' Kemudian Rasulullah bersabda, \'Berlindunglah dari fitnah Dajjal Maka mereka berkata, \"Kami berlindung dari fitnah Dajjal.\'\" {Muslim 8/160-161}',
      },
      {
        'arabic':
            'أَنَّ عَائِشَةَ زَوْجَ النَّبِيِّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ أَخْبَرَتْهُ أَنَّ النَّبِيَّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ كَانَ يَدْعُو فِي الصَّلَاةِ اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ عَذَابِ الْقَبْرِ وَأَعُوذُ بِكَ مِنْ فِتْنَةِ الْمَسِيحِ الدَّجَّالِ وَأَعُوذُ بِكَ مِنْ فِتْنَةِ الْمَحْيَا وَالْمَمَاتِ اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ الْمَأْثَمِ وَالْمَغْرَمِ قَالَتْ فَقَالَ لَهُ قَائِلٌ مَا أَكْثَرَ مَا تَسْتَعِيذُ مِنْ الْمَغْرَمِ يَا رَسُولَ اللَّهِ فَقَالَ إِنَّ الرَّجُلَ إِذَا غَرِمَ حَدَّثَ فَكَذَبَ وَوَعَدَ فَأَخْلَفَ',
        'indo':
            'Dari Aisyah RA -istri Nabi SAW- pernah berdoa di dalam shalatnya {diakhir tahiyyat}, "Allahumma innii a\'udzubika min \'adzaabil qabr, wa a\'udzubika min fitnatil masiihid-dajjaal, wa a\'udzubika minal- matsami wal-maghrami."" {Ya Allah! Aku berlindung kepada-Mu dari adzab kubur. aku berlindung kepada-Mu dari fitnah Masih Ad-Dajjal. aku berlindung kepada-Mu dari dosa dan kerugian}. Kata Aisyah. "Lalu ada seorang bertanya kepada Rasulullah SAW, \'Betapa sering anda ucapkan mohon perlindungan dari kerugian. ya Rasulullah!" Beliau menjawab, \'Sesungguhnya apabila seseorang mengalami kerugian hutang, maka dia berbicara kemudian berdusta. dan dia berjanji lalu dia ingkari".\' {Muslim 2/93}',
      },
      {
        'arabic':
            'وَإِنَّ مِنْ فِتْنَتِهِ أَنْ يَقُولَ لأَعْرَابِىٍّ أَرَأَيْتَ إِنْ بَعَثْتُ لَكَ أَبَاكَ وَأُمَّكَ أَتَشْهَدُ أَنِّى رَبُّكَ فَيَقُولُ نَعَمْ. فَيَتَمَثَّلُ لَهُ شَيْطَانَانِ فِى صُورَةِ أَبِيهِ وَأُمِّهِ فَيَقُولاَنِ يَا بُنَىَّ اتَّبِعْهُ فَإِنَّهُ رَبُّكَ.',
        'indo':
            '“Di antara fitnah Dajjal adalah, ia akan berkata kepada seorang Arab, ‘Pikirkanlah olehmu, sekiranya aku dapat membangkitkan ayah dan ibumu yang telah mati, apakah kamu akan bersaksi bahwa aku adalah Rabbmu? ‘ Laki-laki arab tersebut menjawab, ‘Ya.’ Kemudian muncullah setan yang menjelma di hadapannya dalam bentuk ayah dan ibunya, maka keduanya berkata, ‘Wahai anakku, ikutilah ia, sesungguhnya dia adalah Rabbmu.’Shahih Al Jaami’ Ash Shogir 6/274.',
      },
      {
        'arabic':
            'يَخْرُجُ الدَّجَّالُ فِي أُمَّتِي فَيَمْكُثُ أَرْبَعِيْنَ يَوْمًا فَيَبْعَثُ اللهُ عِيْسَى ابْنَ مَرْيَمَ كَأَنَّهُ عُرْوَةُ بْنُ مَسْعُوْدٍ فَيَطْلُبُهُ فَيُهْلِكُهُ',
        'indo':
            '“Dajjal keluar di antara umatku selama 40 hari, kemudian Allah Subhanahu wa Ta’ala mengutus Isa bin Maryam ‘alaihissalam yang mirip dengan ‘Urwah bin Mas’ud. ‘Isa ‘alaihissalam mencarinya dan membunuhnya….” (HR. Muslim no. 2940)',
      },
      {
        'arabic':
            'عن ابْن عَوْنٍ عَنْ نَافِعٍ قَالَ كَانَ نَافِعٌ يَقُولُ ابْنُ صَيَّادٍ قَالَ قَالَ ابْنُ عُمَرَ لَقِيتُهُ مَرَّتَيْنِ قَالَ فَلَقِيتُهُ فَقُلْتُ لِبَعْضِهِمْ هَلْ تَحَدَّثُونَ أَنَّهُ هُوَ قَالَ لَا وَاللَّهِ قَالَ قُلْتُ كَذَبْتَنِي وَاللَّهِ لَقَدْ أَخْبَرَنِي بَعْضُكُمْ أَنَّهُ لَنْ يَمُوتَ حَتَّى يَكُونَ أَكْثَرَكُمْ مَالًا وَوَلَدًا فَكَذَلِكَ هُوَ زَعَمُوا الْيَوْمَ قَالَ فَتَحَدَّثْنَا ثُمَّ فَارَقْتُهُ قَالَ فَلَقِيتُهُ لَقْيَةً أُخْرَى وَقَدْ نَفَرَتْ عَيْنُهُ قَالَ فَقُلْتُ مَتَى فَعَلَتْ عَيْنُكَ مَا أَرَى قَالَ لَا أَدْرِي قَالَ قُلْتُ لَا تَدَافَنُوا لَدَعَوْتُ اللَّهَ أَنْ يُسْمِعَكُمْ مِنْ عَذَابِ الْقَبْرِ الَّذِي أَسْمَعُ مِنْهُ ثُمَّ أَقْبَلَ عَلَيْنَا بِوَجْهِهِ فَقَالَ تَعَوَّذُوا بِاللَّهِ مِنْ عَذَابِ النَّارِ قَالُوا نَعُوذُ بِاللَّهِ مِنْ عَذَابِ النَّارِ فَقَالَ تَعَوَّذُوا بِاللَّهِ مِنْ عَذَابِ الْقَبْرِ قَالُوا نَعُوذُ بِاللَّهِ مِنْ عَذَابِ الْقَبْرِ قَالَ تَعَوَّذُوا بِاللَّهِ مِنْ الْفِتَنِ مَا ظَهَرَ مِنْهَا وَمَا بَطَنَ قَالُوا نَعُوذُ بِاللَّهِ مِنْ الْفِتَنِ مَا ظَهَرَ مِنْهَا وَمَا بَطَنَ قَالَ تَعَوَّذُوا بِاللَّهِ مِنْ فِتْنَةِ الدَّجَّالِ قَالُوا نَعُوذُ بِاللَّهِ مِنْ فِتْنَةِ الدَّجَّالِ',
        'indo':
            'Dari Ibnu \'Aun dari Nafi, bahwasanya ia pernah membicarakan tentang Ibnu Shayyad. Ibnu Nafi\' berkata, "Umar berkata, \'Saya pernah bertemu dengan Ibnu Shayyad sebanyak dua kali.\' Nafi\' berkata, "Lalu saya menemui Ibnu Shayyad. Setelah itu, saya bertanya kepada seseorang, \'Apakah orang-orang mengatakan bahwa Ibnu Shayyad itu adalah Dajjal?\' Orang tersebut menjawab, "Demi Allah, ia bukan Dajjal." Saya berkata kepadanya, "Demi Allah, kamu telah berdusta kepada saya. Sesungguhnya saya pernah diberitahu oleh seseorang bahwasanya Dajjal itu tidak akan mati sebelum ia menjadi orang yang paling banyak harta dan anaknya. Sekarang ini, menurut pendapat orang banyak bahwasanya Ibnu Shayyad juga seperti itu." Nafi\' berkata, "Kemudian kami bercakap-cakap dan setelah itu saya berpisah dengannya." Nafi\' berkata, "Tak lama kemudian saya bertemu lagi dengan Ibnu Shayyad yang pada saat itu salah satu matanya menonjol keluar. Lalu saya pun bertanya, \'Hai Ibnu Shayyad, sejak kapan matamu menjadi seperti yang saya lihat sekarang ini?\' Ibnu Shayyad menjawab, "Saya tidak tahu." Nafi\' berkata, "Saya bertanya lagi, \'Mengapa kamu tidak tahu, bukankankah matamu itu ada di kepalamu sendiri?\' Ibnu Shayyad menjawab, "Apabila Allah menghendaki, maka Dia pun mampu untuk membuat mata pada tongkatmu itu." Nafi\' berkata, "Setelah itu, Ibnu Shayyad mendengus seperti dengusan keledai yang amat keras yang pernah saya dengar selama ini." Nafi\' berkata, "Sebagian teman-teman saya mengatakan bahwa saya telah memukul Ibnu Shayyad dengan tongkat yang saya bawa hingga matanya menjadi bengkak. Padahal, demi Allah, saya tidak pernah melakukan hal itu kepadanya.\' Kemudian Nafi\' pergi mendatangi Ummul Mukminin untuk menceritakan perihal Ibnu Shayyad. Lalu Ummul Mukminin berkata, "Mengapa kamu selalu mencari Ibnu Shayyad? Tidakkah kamu tahu bahwasanya Rasulullah SAW pernah bersabda bahwa apa yang beliau sampaikan pertama kali kepada para sahabat mengenai Ibnu Shayyad adalah kemarahan beliau kepadanya."',
      },
      {
        'arabic':
            'عَنْ عَائِشَةَ أَنَّ رَسُولَ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ كَانَ يَدْعُو بِهَؤُلَاءِ الدَّعَوَاتِ اللَّهُمَّ فَإِنِّي أَعُوذُ بِكَ مِنْ فِتْنَةِ النَّارِ وَعَذَابِ النَّارِ وَفِتْنَةِ الْقَبْرِ وَعَذَابِ الْقَبْرِ وَمِنْ شَرِّ فِتْنَةِ الْغِنَى وَمِنْ شَرِّ فِتْنَةِ الْفَقْرِ وَأَعُوذُ بِكَ مِنْ شَرِّ فِتْنَةِ الْمَسِيحِ الدَّجَّالِ اللَّهُمَّ اغْسِلْ خَطَايَايَ بِمَاءِ الثَّلْجِ وَالْبَرَدِ وَنَقِّ قَلْبِي مِنْ الْخَطَايَا كَمَا نَقَّيْتَ الثَّوْبَ الْأَبْيَضَ مِنْ الدَّنَسِ وَبَاعِدْ بَيْنِي وَبَيْنَ خَطَايَايَ كَمَا بَاعَدْتَ بَيْنَ الْمَشْرِقِ وَالْمَغْرِبِ اللَّهُمَّ فَإِنِّي أَعُوذُ بِكَ مِنْ الْكَسَلِ وَالْهَرَمِ وَالْمَأْثَمِ وَالْمَغْرَمِ.',
        'indo':
            'Dari Aisyah RA, bahwasanya Rasulullah SAW pernah membaca doa yang berbunyi, "Ya Allah, sesungguhnya aku berlindung kepada-Mu dari fitnah api neraka dan siksanya, dari fitnah kubur dan siksanya, dari fitnah kekayaan, dari fitnah kefakiran, dan aku berlindung kepada-Mu ya Allah dari fitnah Dajjal. Ya Allah, hapuskanlah dosaku dengan air salju dan air embun, bersihkanlah hatiku dari segala kesalahan, sebagaimana Engkau bersihkan kain putih dari noda. Ya Allah, jauhkanlah antara aku dan dosaku sebagaimana Engkau jauhkan antara timur dengan barat.Ya Allah, sesungguhnya aku berlindung kepada-Mu dari kemalasan dan kepikunan serta dari dosa dan lilitan hutang." {Muslim 8/79}',
      },
      {
        'arabic':
            'عَنْ أَبِي هُرَيْرَةَ عَنْ النَّبِيِّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ قَالَ بَادِرُوا بِالْأَعْمَالِ سِتًّا الدَّجَّالَ وَالدُّخَانَ وَدَابَّةَ الْأَرْضِ وَطُلُوعَ الشَّمْسِ مِنْ مَغْرِبِهَا وَأَمْرَ الْعَامَّةِ وَخُوَيْصَّةَ أَحَدِكُمْ.',
        'indo':
            'Artinya : Dari Abu Hurairah RA dari Nabi Muhammad SAW, beliau bersabda, "Segeralah kamu berbuat baik sebelum datang enam hal, yaitu; 1}. Dajjal 2}. Asap {menjelang kiamat} 3}. Makhluk yang melata di bumi 4}. Terbitnya matahari dari barat 5}. Kehancuran total 6}. Kematian {Muslim 8/208}',
      },
      {
        'arabic':
            'مَا بَيْنَ خَلْقِ آدَمَ إِلَى قِيَامِ السَّاعَةِ خَلْقٌ أَكْبَرُ مِنَ الدَّجَّالِ',
        'indo':
            '“Tidak ada satu pun makhluk sejak Adam diciptakan hingga terjadinya kiamat yang fitnahnya (cobaannya) lebih besar dari Dajjal.” (HR. Muslim no. 2946)',
      },
      {
        'arabic': '',
        'indo':
            'Dari Ibnu ‘Umar radhiyallahu ‘anhuma, ia berkata, Rasulullah shallallahu ‘alaihi wa sallam berdiri di hadapan manusia lalu memuji Allah karena memang Dialah satu-satunya yang berhak atas pujian kemudian beliau menceritakan Dajjal. Beliau bersabda,',
      },
      {
        'arabic':
            'إِنِّى لأُنْذِرُكُمُوهُ ، وَمَا مِنْ نَبِىٍّ إِلاَّ أَنْذَرَهُ قَوْمَهُ ، لَقَدْ أَنْذَرَ نُوحٌ قَوْمَهُ ، وَلَكِنِّى أَقُولُ لَكُمْ فِيهِ قَوْلاً لَمْ يَقُلْهُ نَبِىٌّ لِقَوْمِهِ ، تَعْلَمُونَ أَنَّهُ أَعْوَرُ ، وَأَنَّ اللَّهَ لَيْسَ بِأَعْوَرَ',
        'indo':
            '“Aku akan menceritakannya kepada kalian dan tidak ada seorang Nabi pun melainkan telah menceritakan tentang Dajjal kepada kaumnya. Sungguh Nabi Nuh ‘alaihis salam telah mengingatkan kaumnya. Akan tetapi aku katakan kepada kalian tentangnya yang tidak pernah dikatakan oleh seorang Nabi pun kepada kaumnya, yaitu Dajjal itu buta sebelah matanya sedangkan Allah sama sekali tidaklah buta“. (HR. Bukhari no. 3337 dan Muslim no. 169)',
      },
      {
        'arabic':
            'عَنْ أَبِي هُرَيْرَةَ أَنَّ النَّبِيَّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ قَالَ سَمِعْتُمْ بِمَدِينَةٍ جَانِبٌ مِنْهَا فِي الْبَرِّ وَجَانِبٌ مِنْهَا فِي الْبَحْرِ قَالُوا نَعَُمْ يَا رَسُولَ اللَّهِ قَالَ لَا تَقُومُ السَّاعَةُ حَتَّى يَغْزُوَهَا سَبْعُونَ أَلْفًا مِنْ بَنِي إِسْحَقَ فَإِذَا جَاءُوهَا نَزَلُوا فَلَمْ يُقَاتِلُوا بِسِلَاحٍ وَلَمْ يَرْمُوا بِسَهْمٍ قَالُوا لَا إِلَهَ إِلَّا اللَّهُ وَاللَّهُ أَكْبَرُ فَيَسْقُطُ أَحَدُ جَانِبَيْهَا قَالَ ثَوْرٌ لَا أَعْلَمُهُ إِلَّا قَالَ الَّذِي فِي الْبَحْرِ ثُمَّ يَقُولُوا الثَّانِيَةَ لَا إِلَهَ إِلَّا اللَّهُ وَاللَّهُ أَكْبَرُ فَيَسْقُطُ جَانِبُهَا الْآخَرُ ثُمَّ يَقُولُوا الثَّالِثَةَ لَا إِلَهَ إِلَّا اللَّهُ وَاللَّهُ أَكْبَرُ فَيُفَرَّجُ لَهُمْ فَيَدْخُلُوهَا فَيَغْنَمُوا فَبَيْنَمَا هُمْ يَقْتَسِمُونَ الْمَغَانِمَ إِذْ جَاءَهُمْ الصَّرِيخُ فَقَالَ إِنَّ الدَّجَّالَ قَدْ خَرَجَ فَيَتْرُكُونَ كُلَّ شَيْءٍ وَيَرْجِعُونَ.',
        'indo':
            'Dari Abu Hurairah RA, bahwasanya Rasulullah SAW pernah bertanya, "Tahukah kalian bahwasanya Madinah ini mempunyai dua arah, darat dan laut?" Para sahabat menjawab, "Ya, kami telah tahu tentang hal itu ya Rasulullah!" Lalu Rasulullah bersabda, "Kiamat tidak akan terjadi kecuali setelah Madinah diserbu oleh tujuh puluh ribu orang dari Bani Ishaq. Ketika mereka memasuki Madinah, maka mereka langsung mendudukinya. Mereka tidak menyerang dengan senjata ataupun panah. Mereka akan meneriakkan kalimat Laa ilaaha illallahu wallaahu akbar, maka jatuhlah kota Madinah dari salah satu arahnya {Tsaur berkata, "Yang saya ketahui, Rasulullah hanya bersabda, \'Yang dari arah laut\'}. Setelah itu, mereka pun mengucapkan Laa ilaaha illallaahu wallaahu akbar, maka jatuhlah kota Madinah dari arah yang lain. Kemudian mereka mengucapkan untuk yang ketiga kalinya Laa ilaaha illallaahu wallaahu akbar, maka terbukalah jalan masuk bagi mereka. Setelah itu, mereka pun memasuki kota Madinah dan memperoleh harta rampasan perang. Tak lama kemudian datanglah seseorang yang berkata, "Dajjal telah muncul." Lalu mereka meninggalkan segala apa yang mereka dapatkan dan kembali pulang." {Muslim 8/188}',
      },
      {
        'arabic': '',
        'indo':
            'Dalam hadits Anas, Rasulullah bersabda : "Dan diantara kedua matanya termatub tulisan kafir". Dan dalam satu riwayat disebutkan : "Kemudian beliau mengejanya -kaf fa\' ra\'- yang dapat dibaca oleh setiap muslim". Dan dalam satu riwayat lagi dari Hudzaifah, "Dapat dibaca oleh setiap orang mukmin, baik ia tahu tulis baca maupun tidak."',
      },
      {
        'arabic': '',
        'indo':
            'Dari Abu Sa’id Al-Khudri, Rasulullah bersabda : “Dan tidaklah diutus seorang nabi yang diikuti  itu, kecuali untuk memperingatkan kaumnya terhadap Dajjal. Aku telah menerangkan ciri-cirinya bahwa ia cacat, sedangkan Tuhan kalian tidaklah cacat. Mata kanannya menonjol dan tidak dapat disembunyikan, seolah-olah dahak yang berada di dinding kapur, sedangkan mata kirinya seperti planet yang bulat.“',
      },
      {
        'arabic': '',
        'indo':
            'Dari Anas bin Malik, katanya Rasulullah SAW bersabda: “Menjelang turunnya Dajjal ada tahun-tahun tipu daya, yaitu tahun orang-orang pendusta dipercayai orang dan orang jujur tidak dipercayai. Orang yang tidak amanah dipercayai dan orang amanah tidak dipercayai.”',
      },
      {
        'arabic': '',
        'indo':
            'Dari Ubadah bin Ash-Shamit, Rasulullah bersabda : "Sesungguhnya Masih Dajjal itu seorang lelaki yang pendek dan gemuk, berambut keriting, buta sebelah matanya, dan matanya itu tidak menonjol serta tidak tenggelam. Jika ia memanipulasi kamu, maka ketahuilah bahwa Rabbmu tidak buta sebelah matanya."',
      },
      {
        'arabic': '',
        'indo':
            'Dalam hadits Anas, Rasulullah bersabda : “Dan diantara kedua matanya termaktub tulisan kafir“. Dan dalam satu riwayat disebutkan : “Kemudian beliau mengejanya -kaf fa’ ra’- yang dapat dibaca oleh setiap muslim“. Dan dalam satu riwayat lagi dari Hudzaifah, “Dapat dibaca oleh setiap orang mukmin, baik ia tahu tulis baca maupun tidak.“',
      },
      {
        'arabic': '',
        'indo':
            'Dalam hadits Abu Hurairah, Rasulullah bersabda : “Adapun Al-Masih Si Pendusta itu adalah buta sebelah matanya, lebar dahinya, bidang dadanya bagian atas dan bengkok (kakinya).”',
      },
      {
        'arabic': '',
        'indo':
            'Nabi Muhammad SAW bersabda, “Dajjal akan datang (menuju kota Madinah), lalu ia akan memanjat (bukit) lalu menatap ke arah kota Madinah. Ia akan berkata kepada para pengikutnya, “Apakah kalian melihat tempat berwarna putih itu? Itu adalah Masjidnya Ahmad (maksudnya Nabi Muhammad).” (HR Hakim dalam Mustadrak-nya)',
      },
      {
        'arabic': '',
        'indo':
            'Nabi SAW bersabda, “Dajjal akan turun di lembah air Murqonah’ ini, maka orang yang datang kepadanya kebanyakan kaum wanita, sehingga seseorang akan pergi menemui sahabat karibnya, ibunya, anak perempuannya, saudara perempuannya, dan kepada bibinya untuk meneguhkan hatinya karena kuatir mereka akan pergi menemui Dajjal.” [Musnad Ahmad 7: 190]',
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
          'Hadist Tentang Dajjal',
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
              ...kontenDajjal.asMap().entries.map((entry) {
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
                    if (idx < kontenDajjal.length - 1) ...[
                      const SizedBox(height: 24),
                      Divider(color: dividerColor, thickness: 1),
                      const SizedBox(height: 24),
                    ],
                  ],
                );
              }).toList(),
            ],
          ),
        ),
      ),
    );
  }
}
