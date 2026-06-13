import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart'; // Sesuaikan dengan jalur file ThemeProvider Anda

class HijrahPage extends StatelessWidget {
  const HijrahPage({super.key});

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

    // Data List konten tentang Hijrah asli sesuai input (tanpa diubah, dipotong, atau ditambah)
    final List<Map<String, String>> kontenHijrah = [
      {
        'arabic':
            'مَثَلُ الْجَلِيسِ الصَّالِحِ وَالْجَلِيسِ السَّوْءِ كَمَثَلِ صَاحِبِ الْمِسْكِ ، وَكِيرِ الْحَدَّادِ ، لاَ يَعْدَمُكَ مِنْ صَاحِبِ الْمِسْكِ إِمَّا تَشْتَرِيهِ ، أَوْ تَجِدُ رِيحَهُ ، وَكِيرُ الْحَدَّادِ يُحْرِقُ بَدَنَكَ أَوْ ثَوْبَكَ أَوْ تَجِدُ مِنْهُ رِيحًا خَبِيثَةً',
        'indo':
            '“Seseorang yang duduk (berteman) dengan orang sholih dan orang yang jelek adalah bagaikan berteman dengan pemilik minyak misk dan pandai besi. Jika engkau tidak dihadiahkan minyak misk olehnya, engkau bisa membeli darinya atau minimal dapat baunya. Adapun berteman dengan pandai besi, jika engkau tidak mendapati badan atau pakaianmu hangus terbakar, minimal engkau dapat baunya yang tidak enak.” (HR. Bukhari, no. 2101, dari Abu Musa)',
      },
      {
        'arabic':
            'حَدَّثَنَا سَعِيدُ بْنُ مَنْصُورٍ حَدَّثَنَا عَبْدُ اللَّهِ بْنُ وَهْبٍ أَخْبَرَنِي عَمْرُو بْنُ الْحَارِثِ عَنْ يَزِيدَ بْنِ أَبِي حَبِيبٍ أَنَّ نَاعِمًا مَوْلَى أُمِّ سَلَمَةَ حَدَّثَهُ أَنَّ عَبْدَ اللَّهِ بْنَ عَمْرِو بْنِ الْعَاصِ قَالَ\nأَقْبَلَ رَجُلٌ إِلَى نَبِيِّ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ فَقَالَ أُبَايِعُكَ عَلَى الْهِجْرَةِ وَالْجِهَادِ أَبْتَغِي الْأَجْرَ مِنْ اللَّهِ قَالَ فَهَلْ مِنْ وَالِدَيْكَ أَحَدٌ حَيٌّ قَالَ نَعَمْ بَلْ كِلَاهُمَا قَالَ فَتَبْتَغِي الْأَجْرَ مِنْ اللَّهِ قَالَ نَعَمْ قَالَ فَارْجِعْ إِلَى وَالِدَيْكَ فَأَحْسِنْ صُحْبَتَهُمَا',
        'indo':
            '“Seorang laki-laki datang menghadap Rasulullah shallallahu ‘alaihi wasallam lalu dia berkata: Aku bai’at (berjanji setia) dengan Anda akan ikut hijrah dan jihad, karena aku mengingini pahala dari Allah.” Nabi shallallahu ‘alaihi wasallam bertanya: “Apakah kedua orang tuamu masih hidup?” Jawab orang itu; “Bahkan keduanya masih hidup.” Nabi shallallahu ‘alaihi wasallam bertanya lagi: “Apakah kamu mengharapkan pahala dari Allah?” Jawabnya; “Ya!” Sabda Nabi shallallahu ‘alaihi wasallam; “Pulanglah kamu kepada kedua orang tuamu, lalu berbaktilah pada keduanya dengan sebaik-baiknya.“ (Hadits riwayat Muslim : 4624)',
      },
      {
        'arabic':
            'الْأَعْمَالُ بِالنِّيَّةِ وَلِكُلِّ امْرِئٍ مَا نَوَى فَمَنْ كَانَتْ هِجْرَتُهُ إِلَى اللَّهِ وَرَسُولِهِ فَهِجْرَتُهُ إِلَى اللَّهِ وَرَسُولِهِ وَمَنْ كَانَتْ هِجْرَتُهُ لدُنْيَا يُصِيبُهَا أَوْ امْرَأَةٍ يَتَزَوَّجُهَا فَهِجْرَتُهُ إِلَى مَا هَاجَرَ إِلَيْهِ',
        'indo':
            '“Semua perbuatan tergantung niatnya, dan (balasan) bagi tiap-tiap orang (tergantung) apa yang diniatkan; barangsiapa niat hijrahnya karena Allah dan Rasul-Nya, maka hijrahnya adalah kepada Allah dan Rasul-Nya. Barangsiapa niat hijrahnya karena dunia yang ingin digapainya atau karena seorang perempuan yang ingin dinikahinya, maka hijrahnya adalah kepada apa dia diniatkan.”. (HR.Bukhari : 52)',
      },
      {
        'arabic':
            'و حَدَّثَنَا أَبُو بَكْرِ بْنُ خَلَّادٍ الْبَاهِلِيُّ حَدَّثَنَا الْوَلِيدُ بْنُ مُسْلِمٍ حَدَّثَنَا عَبْدُ الرَّحْمَنِ بْنُ عَمْرٍو الْأَوْزَاعِيُّ حَدَّثَنِي ابْنُ شِهَابٍ الزُّهْرِيِّ حَدَّثَنِي عَطَاءُ بْنُ يَزِيدَ اللَّيْثِيُ\\nأَنَّهُ حَدَّثَهُمْ قَالَ حَدَّثَنِي أَبُو سَعِيدٍ الْخُدْرِيُّ\nأَنَّ أَعْرَابِيًّا سَأَلَ رَسُولَ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ عَنْ الْهِجْرَةِ فَقَالَ وَيْحَكَ إِنَّ شَأْنَ الْهِجْرَةِ لَشَدِيدٌ فَهَلْ لَكَ مِنْ إِبِلٍ قَالَ نَعَمْ قَالَ فَهَلْ تُؤْتِي صَدَقَتَهَا قَالَ نَعَمْ قَالَ فَاعْمَلْ مِنْ وَرَاءِ الْبِحَارِ فَإِنَّ اللَّهَ لَنْ يَتِرَكَ مِنْ عَمَلِكَ شَيْئًا\nو حَدَّثَنَاه عَبْدُ اللَّهِ بْنُ عَبْدِ الرَّحْمَنِ الدَّارِمِيُّ حَدَّثَنَا مُحَمَّدُ بْنُ يُوسُفَ عَنْ الْأَوْزَاعِيِّ بِهَذَا الْإِسْنَادِ مِثْلَهُ غَيْرَ أَنَّهُ قَالَ إِنَّ اللَّهَ لَنْ يَتِرَكَ مِنْ عَمَلِكَ شَيْئًا وَزَادَ فِي الْحَدِيثِ قَالَ فَهَلْ تَحْلُبُهَا يَوْمَ وِرْدِهَا قَالَ نَعَمْ',
        'indo':
            '“Seorang arab badui bertanya kepada Rasulullah shallallahu ‘alaihi wasallam mengenai hijrah.” Beliau lalu menjawab: “Celaka kamu! Sesungguhnya perkara hijrah itu sangat berat. Apakah kamu mempunyai unta?” Badui itu menjawab: “Ada.” Beliau bertanya: “Apakah kamu telah membayar zakatnya?” dia menjawab, “Ya!” beliau bersabda: “Kalau begitu beramallah di negerimu, sesungguhnya Allah Ta’ala tidak akan menyia-nyiakan pahala amalmu sedikitpun juga.” Dan telah menceritakan kepada kami ‘Abdullah bin ‘Abdurrahman Ad Darami telah menceritakan kepada kami Muhammad bin Yusuf dari Auza’i dengan isnad seperti ini, namun dia menyebutkan, ‘Sesungguhnya Allah tidak menyia-nyiakan dari amalanmu sedikitpun.’ Dan dalam hadits tersebut juga ditambahkan, beliau bersabda: “Apakah kamu telah memerah susunya?” dia menjawab, “Ya.” (HR.Muslim : 3469)',
      },
      {
        'arabic':
            'كَانَتْ الْمُؤْمِنَاتُ إِذَا هَاجَرْنَ إِلَى رَسُولِ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ يُمْتَحَنَّ بِقَوْلِ اللَّهِ { يَا أَيُّهَا النَّبِيُّ إِذَا جَاءَكَ الْمُؤْمِنَاتُ يُبَايِعْنَكَ }\nإِلَى آخِرِ الْآيَةِ',
        'indo':
            '“Wanita-wanita mukmin apabila mereka melakukan hijrah kepada Rasulullah, maka mereka diuji dengan firman Allah Subhanahu Wa Ta’ala: ‘Wahai Nabi apabila wanita-wanita mukmin datang kepadamu melakukan bai’at.” (HR Ibnu Majah)',
      },
      {
        'arabic': '',
        'indo':
            'Dari Abu Hurairah radhiyallahu ‘anhu, Rasulullah shallallahu ‘alaihi wa sallam bersabda,',
      },
      {
        'arabic':
            'الْمَرْءُ عَلَى دِينِ خَلِيلِهِ فَلْيَنْظُرْ أَحَدُكُمْ مَنْ يُخَالِلُ',
        'indo':
            '“Seseorang akan mencocoki kebiasaan teman karibnya. Oleh karenanya, perhatikanlah siapa yang akan menjadi teman karib kalian”. (HR. Abu Daud, no. 4833; Tirmidzi, no. 2378; Ahmad, 2: 344)',
      },
      {
        'arabic':
            'حَدَّثَنَا آدَمُ بْنُ أَبِي إِيَاسٍ قَالَ حَدَّثَنَا شُعْبَةُ عَنْ عَبْدِ اللَّهِ بْنُ أَبِي السَّفَرِ وَإِسْمَاعِيلَ بْنِ أَبِي خَالِدٍ عَنْ الشَّعْبِيِّ عَنْ عَبْدِ اللَّهِ بْنِ عَمْرٍو رَضِيَ اللَّهُ عَنْهُمَا عَنْ النَّبِيِّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ قَالَ الْمُسْلِمُ مَنْ سَلِمَ الْمُسْلِمُونَ مِنْ لِسَانِهِ وَيَدِهِ وَالْمُهَاجِرُ مَنْ هَجَرَ مَا نَهَى اللَّهُ عَنْهُ (متفق عليه)',
        'indo':
            'Dari Abdullah bin Amru bin Ash ra, bahwa Rasulullah Shallallahu\'alaihi Wasallam bersabda, \'Soerang muslim adalah orang yang menjadikan muslim lainnya merasa selamat dari lisan dan tangan (perbuatannya). Sedangkan muhajir (orang yang hijrah) adalah orang yang meninggalkan segala yang dilarang Allah Subhanahu wa Ta’ala. (Muttafaqun Alaih)',
      },
      {'arabic': '', 'indo': 'Teks lengkap ayat tersebut adalah:'},
      {
        'arabic': '',
        'indo':
            '“Wahai Nabi, apabila datang kepadamu perempuan-perempuan yang beriman untuk mengadakan janji setia, bahwa mereka tidak akan mempersekutukan sesuatu pun dengan Allah, tidak akan mencuri, tidak akan berzina, tidakakan membunuh anak-anaknya, tidak akan berbuat dusta yang mereka ada-adakan antara tangan dan kaki mereka serta tidak akan mendurhakaimu dalam urusan yang baik, maka terimalah janji setia mereka dan mohonkanlah ampunan kepada Allah untuk mereka. Sesungguhnya Allah Maha pengampun lagi Maha penyayang.” (Al-Mumtahanah: 12)',
      },
      {
        'arabic':
            'عَنْ ابْنِ عَبَّاسٍ رَضِيَ اللَّهُ عَنْهُمَا قَالَ قَالَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ لَا هِجْرَةَ بَعْدَ الْفَتْحِ وَلَكِنْ جِهَادٌ وَنِيَّةٌ وَإِذَا اسْتُنْفِرْتُمْ فَانْفِرُوا',
        'indo':
            'Ibn Abbas  menerangkan bahwa Rasul SAW bersabda: Tidak ada kewajiban hijrah setelah Futuh Mekah, melainkan jihad dan niat, maka jika diseru perang segeralah penuhi panggilan tersebut. (Hr. al-Bukhari)',
      },
      {
        'arabic':
            'لا تنقطع الهجرة ما تقبلت التوبة، ولا تزال التوبة مقبولة حتى تطلع الشمس من المغرب، فإذا طلعت؛ طُبِعَ على كل قلب بما فيه، وكفي الناس العمل',
        'indo':
            '“Hijrah tidak terputus selama taubat masih diterima. Dan taubat akan senantiasa diterima hingga terbitnya matahari dari arah barat. Apabila telah terbit (dari arah barat), ditutuplah setiap hati dengan apa yang ada di dalamnya, dan cukuplah manusia amal (yang telah dilakukannya)”.(HR. Ahmad)',
      },
      {
        'arabic':
            'و حَدَّثَنَا أَبُو بَكْرِ بْنُ أَبِي شَيْبَةَ وَأَبُو سَعِيدٍ الْأَشَجُّ كِلَاهُمَا عَنْ أَبِي خَالِدٍ قَالَ أَبُو بَكْرٍ حَدَّثَنَا أَبُو خَالِدٍ الْأَحْمَرُ عَنْ الْأَعْمَشِ عَنْ إِسْمَعِيلَ بْنِ رَجَاءٍ عَنْ أَوْسِ بْنِ ضَمْعَجٍ عَنْ أَبِي مَسْعُودٍ الْأَنْصَارِيِّ قَالَ\nقَالَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ يَؤُمُّ الْقَوْمَ أَقْرَؤُهُمْ لِكِتَابِ اللَّهِ فَإِنْ كَانُوا فِي الْقِرَاءَةِ سَوَاءً فَأَعْلَمُهُمْ بِالسُّنَّةِ فَإِنْ كَانُوا فِي السُّنَّةِ سَوَاءً فَأَقْدَمُهُمْ هِجْرَةً فَإِنْ كَانُوا فِي الْهِجْرَةِ سَوَاءً فَأَقْدَمُهُمْ سِلْمًا وَلَا يَؤُمَّنَّ الرَّجُلُ الرَّجُلَ فِي سُلْطَانِهِ وَلَا يَقْعُدْ فِي بَيْتِهِ عَلَى تَكْرِمَتِهِ إِلَّا بِإِذْنِهِ\nقَالَ الْأَشَجُّ فِي رِوَايَتِهِ مَكَانَ سِلْمًا سِنًّا حَدَّثَنَا أَبُو كُرَيْبٍ حَدَّثَنَا أَبُو مُعَاوِيَةَ ح و حَدَّثَنَا إِسْحَقُ أَخْبَرَنَا جَرِيرٌ وَأَبُو مُعَاوِيَةَ ح و حَدَّثَنَا الْأَشَجُّ حَدَّثَنَا ابْنُ فُضَيْلٍ ح و حَدَّثَنَا ابْنُ أَبِي عُمَرَ حَدَّثَنَا سُفْيَانُ كُلُّهُمْ عَنْ الْأَعْمَشِ بِهَذَا الْإِسْنَادِ مِثْلَهُ',
        'indo':
            '“Yang berhak menjadi imam atas suatu kaum adalah yang paling menguasai bacaan kitabullah (Alquran), jika dalam bacaan kapasitasnya sama, maka yang paling tahu terhadap sunnah, jika dalam as sunnah (hadis) kapasitasnya sama, maka yang paling dahulu hijrah, jika dalam hijrah sama, maka yang pertama-tama masuk Islam, dan jangan seseorang mengimami seseorang di daerah wewenangnya, dan jangan duduk di rumah seseorang di ruang tamunya, kecuali telah mendapatkan izin darinya.” Kata Al Asyaj dalam periwayatannya dengan redaksi “Maka yang menjadi pertimbangan kapasitas adalah keIslaman dan usia, “ (HR.Muslim : 1078)',
      },
      {
        'arabic':
            'حَدَّثَنَا حُمَيْدُ بْنُ مَسْعَدَةَ حَدَّثَنَا جَعْفَرُ بْنُ سُلَيْمَانَ عَنْ الْمُعَلَّى بْنِ زِيَادٍ عَنْ مُعَاوِيَةَ بْنِ قُرَّةَ عَنْ مَعْقِلِ بْنِ يَسَارٍ قَالَ\nقَالَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ الْعِبَادَةُ فِي الْهَرْجِ كَهِجْرَةٍ إِلَيَّ',
        'indo':
            '“Rasulullah shallallahu ‘alaihi wasallam bersabda: “Ibadah dalam kondisi huru-hara bagiku sama seperti melakukan hijrah.” (HR.Ibnu Majah)',
      },
      {
        'arabic':
            'عَنْ ابْنِ عَبَّاسٍ رَضِيَ اللَّهُ عَنْهُمَا قَالَ أُنْزِلَ عَلَى رَسُولِ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ وَهُوَ ابْنُ أَرْبَعِينَ فَمَكَثَ بِمَكَّةَ ثَلَاثَ عَشْرَةَ سَنَةً ثُمَّ أُمِرَ بِالْهِجْرَةِ فَهَاجَرَ إِلَى الْمَدِينَةِ فَمَكَثَ بِهَا عَشْرَ سِنِينَ ثُمَّ تُوُفِّيَ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ',
        'indo':
            'Ibnu Abbas, meriwayatkan bahwa Rasûl SAW menerima wahyu ketika berusia empat puluh tahun, kemudian tetap di Mekah selama tiga belas tahun, kemudian diperintah hijrah. Beliau hijrah ke Madinah dan berada di sana selama sepuluh tahun hingga wafat. (Hr. Ahmad, Bukhori)',
      },
      {
        'arabic':
            'حَدَّثَنَا عَبْدُ اللَّهِ بْنُ بَرَّادٍ الْأَشْعَرِيُّ وَمُحَمَّدُ بْنُ الْعَلَاءِ الْهَمْدَانِيُّ قَالَا حَدَّثَنَا أَبُو أُسَامَةَ حَدَّثَنِي بُرَيْدٌ عَنْ أَبِي بُرْدَةَ عَنْ أَبِي مُوسَى قَالَ بَلَغَنَا مَخْرَجُ رَسُولِ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ وَنَحْنُ بِالْيَمَنِ فَخَرَجْنَا مُهَاجِرِينَ إِلَيْهِ أَنَا وَأَخَوَانِ لِي أَنَا أَصْغَرُهُمَا أَحَدُهُمَا أَبُو بُرْدَةَ وَالْآخَرُ أَبُو رُهْمٍ إِمَّا قَالَ بِضْعًا وَإِمَّا قَالَ ثَلَاثَةً وَخَمْسِينَ أَوْ اثْنَيْنِ وَخَمْسِينَ رَجُلًا مِنْ قَوْمِي قَالَ فَرَكِبْنَا سَفِينَةً فَأَلْقَتْنَا سَفِينَتُنَا إِلَى النَّجَاشِيِّ بِالْحَبَشَةِ فَوَافَقْنَا جَعْفَرَ بْنَ أَبِي طَالِبٍ وَأَصْحَابَهُ عِنْدَهُ فَقَالَ جَعْفَرٌ إِنَّ رَسُولَ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ بَعَثَنَا هَاهُنَا وَأَمَرَنَا بِالْإِقَامَةِ فَأَقِيمُوا مَعَنَا فَأَقَمْنَا مَعَهُ حَتَّى قَدِمْنَا جَمِيعًا قَالَ فَوَافَقْنَا رَسُولَ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ حِينَ افْتَتَحَ خَيْبَرَ فَأَسْهَمَ لَنَا أَوْ قَالَ أَعْطَانَا مِنْهَا وَمَا قَسَمَ لِأَحَدٍ غَابَ عَنْ فَتْحِ خَيْبَرَ مِنْهَا شَيْئًا إِلَّا لِمَنْ شَهِدَ مَعَهُ إِلَّا لِأَصْحَابِ سَفِينَتِنَا مَعَ جَعْفَرٍ وَأَصْحَابِهِ قَسَمَ لَهُمْ مَعَهُمْ قَالَ فَكَانَ نَاسٌ مِنْ النَّاسِ يَقُولُونَ لَنَا يَعْنِي لِأَهْلِ السَّفِينَةِ نَحْنُ سَبَقْنَاكُمْ بِالْهِجْرَةِ قَالَ فَدَخَلَتْ أَسْمَاءُ بِنْتُ عُمَيْسٍ وَهِيَ مِمَّنْ قَدِمَ مَعَنَا عَلَى حَفْصَةَ زَوْجِ النَّبِيِّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ زَائِرَةً وَقَدْ كَانَتْ هَاجَرَتْ إِلَى النَّجَاشِيِّ فِيمَنْ هَاجَرَ إِلَيْهِ فَدَخَلَ عُمَرُ عَلَى حَفْصَةَ وَأَسْمَاءُ عِنْدَهَا فَقَالَ عُمَرُ حِينَ رَأَى أَسْمَاءَ مَنْ هَذِهِ قَالَتْ أَسْمَاءُ بِنْتُ عُمَيْسٍ قَالَ عُمَرُ الْحَبَشِيَّةُ هَذِهِ الْبَحْرِيَّةُ هَذِهِ فَقَالَتْ أَسْمَاءُ نَعَمْ فَقَالَ عُمَرُ سَبَقْنَاكُمْ بِالْهِجْرَةِ فَنَحْنُ أَحَقُّ بِرَسُولِ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ مِنْكُمْ فَغَضِبَتْ وَقَالَتْ كَلِمَةً كَذَبْتَ يَا عُمَرُ كَلَّا وَاللَّهِ كُنْتُمْ مَعَ رَسُولِ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ يُطْعِمُ جَائِعَكُمْ وَيَعِظُ جَاهِلَكُمْ وَكُنَّا فِي دَارِ أَوْ فِي أَرْضِ الْبُعَدَاءِ الْبُغَضَاءِ فِي الْحَبَشَةِ وَذَلِكَ فِي اللَّهِ وَفِي رَسُولِهِ وَايْمُ اللَّهِ لَا أَطْعَمُ طَعَامًا وَلَا أَشْرَبُ شَرَابًا حَتَّى أَذْكُرَ مَا قُلْتَ لِرَسُولِ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ وَنَحْنُ كُنَّا نُؤْذَى وَنُخَافُ وَسَأَذْكُرُ ذَلِكَ لِرَسُولِ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ وَأَسْأَلُهُ وَ وَاللَّهِ لَا أَكْذِبُ وَلَا أَزِيغُ وَلَا أَزِيدُ عَلَى ذَلِكَ قَالَ فَلَمَّا جَاءَ النَّبِيُّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ قَالَتْ يَا نَبِيَّ اللَّهِ إِنَّ عُمَرَ قَالَ كَذَا وَكَذَا فَقَالَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ لَيْسَ بِأَحَقَّ بِي مِنْكُمْ وَلَهُ وَلِأَصْحَابِهِ هِجْرَةٌ وَاحِدَةٌ وَلَكُمْ أَنْتُمْ أَهْلَ السَّفِينَةِ هِجْرَتَانِ قَالَتْ فَلَقَدْ رَأَيْتُ أَبَا مُوسَى وَأَصْحَابَ السَّفِينَةِ يَأْتُونِي أَرْسَالًا يَسْأَلُونِي عَنْ هَذَا الْحَدِيثِ مَا مِنْ الدُّنْيَا شَيْءٌ هُمْ بِهِ أَفْرَحُ وَلَا أَعْظَمُ فِي أَنْفُسِهِمْ مِمَّا قَالَ لَهُمْ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ قَالَ أَبُو بُرْدَةَ فَقَالَتْ أَسْمَاءُ فَلَقَدْ رَأَيْتُ أَبَا مُوسَى وَإِنَّهُ لَيَسْتَعِيدُ هَذَا الْحَدِيثَ مِنِّي',
        'indo':
            '“Ketika kami sedang berada di Yaman, kami mendapat informasi tentang tujuan hijrah yang diperintahkan oleh Rasulullah shallallahu ‘alaihi wasallam, lalu kami pun turut pergi untuk berhijrah ke wilayah tersebut (Habasyah). Pada saat itu kami terdiri dari diri saya sendiri dan dua orang saudara laki-laki saya. Saya adalah orang yang paling kecil, sementara saudara saya yang satu bernama Abu Burdah dan yang lainnya bernama Abu Ruhm.”\n\nAbu Musa berkata; ‘Mereka terdiri dari beberapa orang atau Iima puluh tiga orang atau lima puluh dua orang dari kaum kami.’ Abu Musa berkata; ‘Kami berlayar hingga terbawa oleh perahu kami ke Raja Najasyi di Habasyah. Kemudian kami bergabung dengan Ja’far bin Abu Thalib beserta rombongannya di sisi Raja Najasyi. Ja’far berkata; ‘Sesungguhnya Rasulullah shallallahu ‘alaihi wasallam telah mengutus kami kemari. Selain itu, beliau juga menyuruh kami untuk menetap sini. OIeh karena itu, menetaplah kalian bersama kami.’Abu Musa berkata; ‘Lalu kami tinggal bersama Ja’far hingga kami semua datang.’\n\nAbu Musa berkata; ‘Kami semua bertemu dengan Rasulullah shallallahu ‘alaihi wasallam [di Madinah] ketika beliau telah memenangkan perang Khaibar. Beliau memberikan jatah rampasan perang kepada kami. Beliau tidak memberikan jatah rampasan perang sedikitpun kepada orang yang tidak ikut dalam penaklukan Khaibar, kecuali kepada orang yang ikut berperang bersama beliau dan kepada orang yang ikut dalam rombongan kami bersama Ja’far dan kawan-kawannya.’\n\nAbu Musa berkata; ‘Ada sebagian orang [Muhajirin dari Mekah] yang mengatakan kepada kami yang bergabung dalam pelayaran hijrah ke Habasyah; ‘Kami mengungguli kalian dalam masalah hijrah.’\n\nAbu Musa berkata; ‘Asma’ binti Umais, yang termasuk dalam rombongan pelayaran kami, pernah berkunjung ke rumah Hafshah, istri Rasulullah shallallahu ‘alaihi wasallam. Asma’ pernah turut hijrah ke Raja Najasyi.’ Pada suatu ketika Umar bin Khaththab masuk ke rumah Hafshah, kebetulan Asma’ sedang berada di situ. Ketika Umar melihat Asma’ ada di dalam rumah, maka ia pun bertanya; ‘Siapa ini hai Hafshah? ‘ Hafshah menjawab; ‘Dia adalah Asma’ binti Umais! ‘\n\nUmar bertanya lagi; ‘Apakah ia pernah ikut hijrah ke Habasyah dengan berlayar? ‘ Asma’ binti Umais menjawab; ‘Ya, saya turut hijrah ke Habasyah.’ Umar melanjutkan ucapannya; ‘Kalau begitu, kami lebih berhak terhadap Rasulullah daripada kalian.’\n\nAsma’ menjadi marah dan berkata; ‘Kamu berdusta hai Umar! Demi Allah, kalian memang menyertai hijrah Rasulullah shallallahu ‘alaihi wasallam. Tapi beliau memberi makan orang yang lapar di antara kalian dan memberi nasihat orang yang tidak mengerti di antara kalian, sedangkan kami berhijrah ke suatu negeri yang amat jauh di Habasyah yang penuh dengan tantangan karena Allah dan Rasul-Nya. Demi Allah, saya tidak akan makan dan minum sebelum saya laporkan ucapanmu itu kepada Rasulullah shallallahu ‘alaihi wasallam. Karena kami merasa dihina dan dicemaskan. Oleh karena itu, akan saya adukan persoalan ini kepada Rasulullah shallallahu ‘alaihi wasallam. Demi Allah. saya tidak berdusta dan tidak mengada-ada.’\n\nAbu Musa berkata; ‘Ketika Rasulullah shallallahu ‘alaihi wasallam datang ke rumah Hafshah, maka Asma’ pun langsung menghadap beliau dan mengadukan persoalan yang mengganjal hatinya; ‘Ya Rasulullah, Umar bin Khaththab tadi mengutarakan begini dan begitu.’\n\nMendengar pengaduan Asma binti Umais itu, Rasulullah shallallahu ‘alaihi wasallam berkata: ‘Ketahuilah olehmu hai Asma, Umar bukanlah orang yang lebih berhak daripada kalian terhadapku. Umar dan para sahabatnya hanya mendapat ganjaran pahala sekali hijrah. Sebaliknya kalian yang tergabung dalam hijrah dengan mengendarai perahu itu mendapat dua kali pahala hijrah.’\n\nAsma’ binti Umais berkata; ‘Setelah itu, saya melihat Abu Musa dan para sahabat yang tergabung dalam hijrah ke Habasyah dengan mengendarai perahu datang berbondong-bondong untuk bertanya kepada saya tentang hadits ini. Di dunia ini tidak ada yang Iebih menyenangkan dan membesarkan jiwa mereka dan apa yang disabdakan Rasulullah kepada mereka.’ Abu Burdah berkata; ‘Asma’ berkata; ‘Sungguh saya lihat Abu Musa dan ia meminta saya mengulangi lagi hadits itu.” (HR.Muslim : 4558)',
      },
      {
        'arabic': 'الُمهَاجِرُمَنْ هَاجَرَ  مَا نَهَى الله عَنْهُ',
        'indo':
            'Orang hijrah adalah yang meninggalkan segala yang dilarang  Allah SWT. (Hr. Ahmad, Ibn Hibban)',
      },
      {
        'arabic': 'المُهَاجِرُ مَنْ  هَاجَرَ السَّيِّئَاتِ',
        'indo':
            'Orang yang berhijrah adalah yang meninggalkan segala keburukan (HR Thabrani) - Disampaikan dalam khutbah Haji Wada oleh Rasulullah SAW.',
      },
      {
        'arabic':
            'كُلُّ ابْنِ آدَمَ خَطَّاءٌ وَخَيْرُ الْخَطَّائِينَ التَّوَّابُونَ',
        'indo':
            '“Setiap manusia pernah berbuat salah. Namun yang paling baik dari yang berbuat salah adalah yang mau bertaubat.” (HR. Tirmidzi no. 2499; Ibnu Majah, no. 4251; Ahmad, 3: 198)',
      },
      {
        'arabic': '',
        'indo':
            'Dari Abu Qirshafah r.a., ia berkata, Rasulullah saw. bersabda, “Wahai manusia! Berhijrahlah kalian dan berpegang teguhlah pada Islam. Karena hijrah tidak akan pernah berhenti selama jihad masih ada.” (H.R. Thabrani)',
      },
      {
        'arabic': '',
        'indo':
            'Dari Anas bin Malik radhiyallahu ‘anhu, Rasulullah shallallahu ‘alaihi wa sallam bersabda : “Allah Ta’ala berfirman (yang artinya), “Wahai anak Adam! Seandainya kamu datang kepada-Ku dengan membawa dosa hampir sepenuh isi bumi lalu kamu menemui-Ku dalam keadaan tidak mempersekutukan-Ku dengan sesuatu apapun, niscaya Aku pun akan mendatangimu dengan ampunan sebesar itu pula” (HR. Tirmidzi)',
      },
      {
        'arabic': '',
        'indo':
            'Abdullāh Ibn ‘Amr (radiyallāhu ‘anhumā) berkata bahwasanya Rasulullah (sallallāhu ‘alayhi wa sallam) bersabda, “Akan ada hijrah setelah hijrah. Orang-orang terbaik di muka bumi adalah mereka yang tinggal di tempat hijrahnya nabi Ibrahim (Syam). Lalu yang akan tersisa di bumi (selain Syam) adalah seburuk-buruk manusia. Bumi memuntahkan mereka, Allah akan membenci mereka, dan api akan mengumpulkan mereka bersama kera dan babi.” [HR Imām Ahmad, Abū Dāwūd, dan al-Hākim]',
      },
      {
        'arabic': '',
        'indo':
            '"Segala amal itu tergantung niatnya, and setiap orang hanya mendapatkan sesuai niatnya. Maka barang siapa yang hijrahnya kepada Allah and Rasul-Nya, maka hijrahnya itu kepada Allah and Rasul-Nya. Barang siapa yang hijrahnya itu Karena kesenangan dunia atau karena seorang wanita yang akan dikawininya, maka hijrahnya itu kepada apa yang ditujunya." (Bukhari and Muslim).',
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
          'Hadist Tentang Hijrah',
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
              ...kontenHijrah.asMap().entries.map((entry) {
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
                    if (idx < kontenHijrah.length - 1) ...[
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
