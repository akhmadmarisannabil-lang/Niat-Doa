import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';

class PemimpinPage extends StatelessWidget {
  const PemimpinPage({super.key});

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
            'حَدَّثَنَا أَبُو بَكْرِ بْنُ أَبِي شَيْبَةَ وَزُهَيْرُ بْنُ حَرْبٍ وَابْنُ نُمَيْرٍ قَالُوا حَدَّثَنَا سُفْيَانُ بْنُ عُيَيْنَةَ عَنْ عَمْرٍو يَعْنِي ابْنَ دِينَارٍ عَنْ عَمْرِو بْنِ أَوْسٍ عَنْ عَبْدِ اللَّهِ بْنِ عَمْرٍو قَالَ ابْنُ نُمَيْرٍ وَأَبُو بَكْرٍ يَبْلُغُ بِهِ النَّبِيَّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ وَفِي حَدِيثِ زُهَيْرٍ قَالَ قَالَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ إِنَّ الْمُقْسِطِينَ عِنْدَ اللَّهِ عَلَى مَنَابِرَ مِنْ نُورٍ عَنْ يَمِينِ الرَّحْمَنِ عَزَّ وَجَلَّ وَكِلْتَا يَدَيْهِ يَمِينٌ الَّذِينَ يَعْدِلُونَ فِي حُكْمِهِمْ وَأَهْلِيهِمْ وَمَا وَلُوا',
        'indo':
            'Abdullah bin ‘amru bin al ‘ash r.a berkata: rasulullah saw bersabda: sesungguhnya orang-orang yang berlaku adil, kelak disisi allah ditempatkan diatas mimbar dari cahaya, ialah mereka yang adil dalam hokum terhadap keluarga dan apa saja yang diserahkan (dikuasakan) kepada mereka. (muslim)',
      },
      {
        'arabic':
            'حَدَّثَنِي أَبُو غَسَّانَ الْمِسْمَعِيُّ وَمُحَمَّدُ بْنُ الْمُثَنَّى وَمُحَمَّدُ بْنُ بَشَّارِ بْنِ عُثْمَانَ وَاللَّفْظُ لِأَبِي غَسَّانَ وَابْنِ الْمُثَنَّى قَالَا حَدَّثَنَا مُعَاذُ بْنُ هِشَامٍ حَدَّثَنِي أَبِي عَنْ قَتَادَةَ عَنْ مُطَرِّفِ بْنِ عَبْدِ اللَّهِ بْنِ الشِّخِّيرِ عَنْ عِيَاضِ بْنِ حِمَارٍ الْمُجَاشِعِيِّ أَنَّ رَسُولَ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ قَالَ َأَهْلُ الْجَنَّةِ ثَلَاثَةٌ ذُو سُلْطَانٍ مُقْسِطٌ مُتَصَدِّقٌ مُوَفَّقٌ وَرَجُلٌ رَحِيمٌ رَقِيقُ الْقَلْبِ لِكُلِّ ذِي قُرْبَى وَمُسْلِمٍ وَعَفِيفٌ مُتَعَفِّفٌ ذُو عِيَالٍ',
        'indo':
            'Ijadl bin himar r.a berkata: saya telah mendengar rasulullah saw bersabda: orang-orang ahli surga ada tiga macam: raja yang adil, mendapat taufiq hidayat ( dari allah). Dan orang belas kasih lunak hati pada sanak kerabat dan orang muslim. Dan orang miskin berkeluarga yang tetap menjaga kesopanan dan kehormatan diri. (muslim).',
      },
      {
        'arabic':
            'حَدَّثَنَا أَبُو مَعْمَرٍ حَدَّثَنَا عَبْدُ الْوَارِثِ حَدَّثَنَا يُونُسُ عَنْ الْحَسَنِ قَالَ حَدَّثَنِي عَبْدُ الرَّحْمَنِ بْنُ سَمُرَةَ قَالَ قَالَ لِي رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ يَا عَبْدَ الرَّحْمَنِ بْنَ سَمُرَةَ لَا تَسْأَلْ الْإِمَارَةَ فَإِنْ أُعْطِيتَهَا عَنْ مَسْأَلَةٍ وُكِلْتَ إِلَيْهَا وَإِنْ أُعْطِيتَهَا عَنْ غَيْرِ مَسْأَلَةٍ أُعِنْتَ عَلَيْهَا وَإِذَا حَلَفْتَ عَلَى يَمِينٍ فَرَأَيْتَ غَيْرَهَا خَيْرًا مِنْهَا فَأْتِ الَّذِي هُوَ خَيْرٌ وَكَفِّرْ عَنْ يَمِينِكَ',
        'indo':
            'Abu Said (abdurrahman) bin samurah r.a. Berkata: rasulullah saw telah bersabda kepada saya : Ya Abdurrahman bin Samurah, jangan menuntut kedudukan dalam pemerintahan, karena jika kau diserahi jabatan tanpa minta, kau akan dibantu oleh Allah untuk melaksanakannya, tetapi jika dapat jabatan itu karena permintaanmu, maka akan diserahkan ke atas bahumu atau kebijaksanaanmu sendiri. Dan apabila kau telah bersumpah untuk sesuatu kemudian ternyata jika kau lakukan lainnya akan lebih baik, maka tebuslah sumpah itu dan kerjakan apa yang lebih baik itu. (Bukhari, Muslim).',
      },
      {
        'arabic':
            'حَدَّثَنَا عَبْدُ اللَّهِ بْنُ مَسْلَمَةَ عَنْ مَالِكٍ عَنْ عَبْدُ اللَّهِ بْنِ دِينَارٍ عَنْ عَبْدِ اللَّهِ بْنِ عُمَرَ أَنَّ رَسُولَ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ قَالَ أَلَا كُلُّكُمْ رَاعٍ وَكُلُّكُمْ مَسْئُولٌ عَنْ رَعِيَّتِهِ فَالْأَمِيرُ الَّذِي عَلَى النَّاسِ رَاعٍ عَلَيْهِمْ وَهُوَ مَسْئُولٌ عَنْهُمْ وَالرَّجُلُ رَاعٍ عَلَى أَهْلِ بَيْتِهِ وَهُوَ مَسْئُولٌ عَنْهُمْ وَالْمَرْأَةُ رَاعِيَةٌ عَلَى بَيْتِ بَعْلِهَا وَوَلَدِهِ وَهِيَ مَسْئُولَةٌ عَنْهُمْ وَالْعَبْدُ رَاعٍ عَلَى مَالِ سَيِّدِهِ وَهُوَ مَسْئُولٌ عَنْهُ فَكُلُّكُمْ رَاعٍ وَكُلُّكُمْ مَسْئُولٌ عَنْ رَعِيَّتِهِ',
        'indo':
            'Ibn umar r.a berkata : saya telah mendengar rasulullah saw bersabda : setiap orang adalah pemimpin dan akan diminta pertanggungjawaban atas kepemimpinannnya. Seorang kepala negara akan diminta pertanggungjawaban perihal rakyat yang dipimpinnya. Seorang suami akan ditanya perihal keluarga yang dipimpinnya. Seorang isteri yang memelihara rumah tangga suaminya akan ditanya perihal tanggungjawab dan tugasnya. Bahkan seorang pembantu/pekerja rumah tangga yang bertugas memelihara barang milik majikannya juga akan ditanya dari hal yang dipimpinnya. Dan kamu sekalian pemimpin dan akan ditanya (diminta pertanggungan jawab) darihal hal yang dipimpinnya. (buchary, muslim)',
      },
      {
        'arabic':
            'حَدَّثَنَا شَيْبَانُ بْنُ فَرُّوخَ حَدَّثَنَا أَبُو الْأَشْهَبِ عَنْ الْحَسَنِ قَالَ عَادَ عُبَيْدُ اللَّهِ بْنُ زِيَادٍ مَعْقِلَ بْنَ يَسَارٍ الْمُزنِيَّ فِي مَرَضِهِ الَّذِي مَاتَ فِيهِ قَالَ مَعْقِلٌ إِنِّي مُحَدِّثُكَ حَدِيثًا سَمِعْتُهُ مِنْ رَسُولِ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ لَوْ عَلِمْتُ أَنَّ لِي حَيَاةً مَا حَدَّثْتُكَ إِنِّي سَمِعْتُ رَسُولَ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ يَقُولُ مَا مِنْ عَبْدٍ يَسْتَرْعِيهِ اللَّهُ رَعِيَّةً يَمُوتُ يَوْمَ يَمُوتُ وَهُوَ غَاشٌّ لِرَعِيَّتِهِ إِلَّا حَرَّمَ اللَّهُ عَلَيْهِ الْجَنَّةَ',
        'indo':
            'Abu ja’la (ma’qil) bin jasar r.a berkata: saya telah mendengar rasulullah saw bersabda: tiada seorang yang diamanati oleh allah memimpin rakyat kemudian ketika ia mati ia masih menipu rakyatnya, melainkan pasti allah mengharamkan baginya surga. (buchary, muslim)',
      },
      {
        'arabic':
            'حَدَّثَنَا مُسَدَّدٌ حَدَّثَنَا يَحْيَى بْنُ سَعِيدٍ عَنْ عُبَيْدِ اللَّهِ حَدَّثَنِي نَافِعٌ عَنْ عَبْدِ اللَّهِ رَضِيَ اللَّهُ عَنْهُ عَنْ النَّبِيِّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ قَالَ السَّمْعُ وَالطَّاعَةُ عَلَى الْمَرْءِ الْمُسْلِمِ فِيمَا أَحَبَّ وَكَرِهَ مَا لَمْ يُؤْمَرْ بِمَعْصِيَةٍ فَإِذَا أُمِرَ بِمَعْصِيَةٍ فَلَا سَمْعَ وَلَا طَاعَةَ',
        'indo':
            'Ibn umar r.a berkata : bersabda nabi saw : seorang muslim wajib mendengar dan ta’at pada pemerintahannya, dalam apa yang disetujui atau tidak disetujui, kecuali jika diperintah ma’siyat. Maka apabila disuruh ma’siyat, maka tidak wajib mendengar dan tidak wajib ta’at.',
      },
      {
        'arabic':
            '١٢٠٦~ عَلِيِّ       , قَالَ: بَعْثَ النَّبِيّ      , سَرِيَّةً وَأَمَّرَ عَلَيْهِمْ رَجُلاً مِنَ الأَنْصَارِ وَأَمَرَهُمْ أَنْ يُطِيْعُوهُ فَغَضِبَ عَلَيْهِم, وَقَالَ: أَلَيْسَ قَدْ أَمَرَ النَّبِيُّ       , أَنْ تُطِيْعُونِي قَالُوا: بَلَى قَالَ: عَزَمتُ عَلَيْكُمْ لَمَا جَمَعْتُمْ حَطَبًا وَأَوقَدْتُمْ نَارًا ثُمَّ دَخَلْتُمْ فِيهَا فَجَمَعُواحَطَبَا, فَأَوْقَدُوْا فَلَمَّا هَمُّوا بِدُّخُولِ, فَقَامَ يَنْزُرُ بَعْضُهُمْ: إِنَّمَا تَبِعْنَا الـنَّبِيَّ       , فِرَارً مِنَ النَّارِ, أّفَنَدْخُلُهَا فَبَيْنَمَا هُمْ كَذَلِكَ إِذْ خَمَدَتِ الـنَّرُ, وَسَكَنَ غَضَنبُهُ فَذُكِرَ لِلنَّبِيِّ       , فَقَالَ لَوْدَخَلُوهَا مَا خَرَجُوا مِنْهَا أ بَدًا, إِنَّمَا الطَّاعَةُ فِي Mَعْرُوف\n(أخرجه البخري في:٩٣ كتاب الأحكام: ٤ باب السمع و الطاعة للإمام مالم تكن معصيه)',
        'indo':
            'Ali berkata: Rasulullah mengirim sariyah (pasukan yang berjumlah 300-400 orang) dan diserahkan kepemimpinannya kepada salah seorang sahabat Ansar. Suatu saat dia marah kepada pasukannya and berkata: tidakkah Nabi menyuruh kalian menurut kepadaku? Mereka menjawab: Benar. Kini aku perintahkan kalian untuk mengumpulkan kayu dan menyalakan api kemudian kalian masuk ke dalam api itu. Maka merekapun mengumpulkan kayu  dan menyalakan api, dan ketika akan masuk ke dalam api, mereka saling pandang satu sama lain dan berkata: kami mengikuti Nabi        karena takut dari api (neraka). Apakah kami akan memasukinya? Tidak lama kemudian padamlah api dan reda juga amarah pemimpin itu. Lalu kejadian itu di sampaikan kepada Nabi. maka beliau bersabda: “Andaikan mereka masuk ke dalam api itu, niscaya mereka tidak akan keluar selamanya, sesungguhnya wajib taat itu hanya dalam kebaikan.”(Al-Bukhari)',
      },
      {
        'arabic':
            '١٤٢٢~ وَ عَنْ أَبِي بَكَرَةَ , عَنِ الـنَّبِيِّ قَالَ: لَنْ يُفْلِحَ قَوْمٌ وَلَّوْا أَمْرَهُمُ اَمْرَةً (رواه البخاري)',
        'indo':
            'Dari Abu Bakrah bahwa Nabi bersabda: "Tidak akan bahagia suatu kaum yang menyerahkan kekuasaan mereka kepada seorang perempuan."[Riwayat Bukhari]',
      },
      {
        'arabic':
            'حَدَّثَنَا مُسَدَّدٌ حَدَّثَنَا يَحْيَى بْنُ سَعِيدٍ عَنْ شُعْبَةَ عَنْ أَبِي التَّيَّاحِ عَنْ أَنَسِ بْنِ مَالِكٍ رَضِيَ اللَّهُ عَنْهُ قَالَ قَالَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ اسْمَعُوا وَأَطِيعُوا وَإِنْ اسْتُعْمِلَ عَلَيْكُمْ عَبْدٌ حَبَشِيٌّ كَأَنَّ رَأْسَهُ زَبِيبَةٌ',
        'indo':
            'Anas r.a berkata : bersabda rasulullah saw: dengarlah dan ta’atlah meskipun yang terangkat dalam pemerintahanmu seorang budak habasyah yang kepalanya bagaikan kismis. (buchary)',
      },
      {
        'arabic':
            'حَدَّثَنَا مُحَمَّدُ بْنُ الْمُثَنَّى وَمُحَمَّدُ بْنُ بَشَّارٍ قَالَا حَدَّثَنَا مُحَمَّدُ بْنُ جَعْفَرٍ حَدَّثَنَا شُعْبَةُ عَنْ سِمَاكِ بْنِ حَرْبٍ عَنْ عَلْقَمَةَ بْنِ وَائِلٍ الْحَضْرَمِيِّ عَنْ أَبِيهِ قَالَ سَأَلَ سَلَمَةُ بْنُ يَزِيدَ الْجُعْفِيُّ رَسُولَ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ فَقَالَ يَا نَبِيَّ اللَّهِ أَرَأَيْتَ إِنْ قَامَتْ عَلَيْنَا أُمَرَاءُ يَسْأَلُونَا حَقَّهُمْ وَيَمْنَعُونَا حَقَّنَا فَمَا تَأْمُرُنَا فَأَعْرَضَ عَنْهُ ثُمَّ سَأَلَهُ فَأَعْرَضَ عَنْهُ ثُمَّ سَأَلَهُ فِي الثَّانِيَةِ أَوْ فِي الثَّالِثَةِ فَجَذَبَهُ الْأَشْعَثُ بْنُ قَيْسٍ وَقَالَ اسْمَعُوا وَأَطِيعُوا فَإِنَّمَا عَلَيْهِمْ مَا حُمِّلُوا وَعَلَيْكُمْ مَا حُمِّلْتُمْ و حَدَّثَنَا أَبُو بَكْرِ بْنُ أَبِي شَيْبَةَ حَدَّثَنَا شَبَابَةُ حَدَّثَنَا شُعْبَةُ عَنْ سِمَاكٍ بِهَذَا الْإِسْنَادِ مِثْلَهُ وَقَالَ فَجَذَبَهُ الْأَشْعَثُ بْنُ قَيْسٍ فَقَالَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ اسْمَعُوا وَأَطِيعُوا فَإِنَّمَا عَلَيْهِمْ مَا حُمِّلُوا وَعَلَيْكُمْ مَا حُمِّلْتُمْ',
        'indo':
            'Abu hunaidah (wa’il) bin hadjur r.a. Berkata : salamah bin jazid aldju’fy bertanya kepada rasulullah saw : ya rasulullah, bagaimana jika terangkat diatas kami kepala-kepala yang hanya pandai menuntut haknya dan menahan hak kami, maka bagaimanakah kau menyuruh kami berbuat? Pada mulanya rasulullah mengabaikan pertanyaan itu, hingga ditanya kedua kalinya, maka rasulullah saw bersabda : dengarlah dan ta’atlah maka sungguh bagi masing-masing kewajiban sendiri-sendiri atas mereka ada tanggung jawab dan atas kamu tanggung jawabmu. (muslim)',
      },
      {
        'arabic':
            'حَدَّثَنَا أَبُو مَعْمَرٍ حَدَّثَنَا عَبْدُ الْوَارِثِ حَدَّثَنَا يُونُسُ عَنْ الْحَسَنِ قَالَ حَدَّثَنِي عَبْدُ الرَّحْمَنِ بْنُ سَمُرَةَ قَالَ قَالَ لِي رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ يَا عَبْدَ الرَّحْمَنِ بْنَ سَمُرَةَ لَا تَسْأَلْ الْإِمَارَةَ فَإِنْ أُعْطِيتَهَا عَنْ مَسْأَلَةٍ وُكِلْتَ إِلَيْهَا وَإِنْ أُعْطِيتَهَا عَنْ غَيْرِ مَسْأَلَةٍ أُعِنْتَ عَلَيْهَا وَإِذَا حَلَفْتَ عَلَى يَمِينٍ فَرَأَيْتَ غَيْرَهَا خَيْرًا مِنْهَا فَأْتِ الَّذِي هُوَ خَيْرٌ وَكَفِّرْ عَنْ يَمِينِكَ',
        'indo':
            'Abu said (abdurrahman) bin samurah r.a. Berkata: rasulullah saw telah bersabda kepada saya : ya abdurrahman bin samurah, jangan menuntut kedudukan dalam pemerintahan, karena jika kau diserahi jabatan tanpa minta, kau akan dibantu oleh allah untuk melaksanakannya, tetapi jika dapat jabatan itu karena permintaanmu, maka akan diserahkan ke atas bahumu atau kebijaksanaanmu sendiri. Dan apabila kau telah bersumpah untuk sesuatu kemudian ternyata jika kau lakukan lainnya akan lebih baik, maka tebuslah sumpah itu dan kerjakan apa yang lebih baik itu. (buchary, muslim)',
      },
      {
        'arabic':
            'حَدَّثَنَا عَبْدُ الْمَلِكِ بْنُ شُعَيْبِ بْنِ اللَّيْثِ حَدَّثَنِي أَبِي شُعَيْبُ بْنُ اللَّيْثِ حَدَّثَنِي اللَّيْثُ بْنُ سَعْدٍ حَدَّثَنِي يَزِيدُ بْنُ أَبِي حَبِيبٍ عَنْ بَكْرِ بْنِ عَمْرٍو عَنْ الْحَارِثِ بْنِ يَزِيدَ الْحَضرمِيِّ عَنْ ابْنِ حُجَيْرَةَ الْأكْبَرِ عَنْ أَبِي ذَرٍّ قَالَ قُلْتُ يَا رَسُولَ اللَّهِ أَلَا تَسْتَعْمِلُنِي قَالَ فَضَرَبَ بِيَدِهِ عَلَى مَنْكِبِي ثُمَّ قَالَ يَا أَبَا ذَرٍّ إِنَّكَ ضَعِيفٌ وَإِنَّهَا أَمَانَةُ وَإِنَّهَا يَوْمَ الْقِيَامَةِ خِزْيٌ وَنَدَامَةٌ إِلَّا مَنْ أَخَذَهَا بِحَقِّهَا وَأَدَّى الَّذِي عَلَيْهِ فِيهَا',
        'indo':
            'Abu dzar berkata : ya rasulallah tidakkah kau memberi jabatan apa-apa kepadaku? Maka rasulullah memukul bahuku sambil berkata : hai abu dzar kau seorang yang lemah, dan jabatan itu sebagai amanat yang pada hari qiyamat hanya akan menjadi kemenyesalan dan kehinaan. Kecuali orang yang yang dapat menunaikan hak dan kewajibannya, dan memenuhi tanggung jawabnya.',
      },
      {
        'arabic':
            'حَدَّثَنَا عَبْدُ الْمَلِكِ بْنُ شُعَيْبِ بْنِ اللَّيْثِ حَدَّثَنِي أَبِي شُعَيْبُ بْنُ اللَّيْثِ حَدَّثَنِي اللَّيْثُ بْنُ سَعْدٍ حَدَّثَنِي يَزِيدُ بْنُ أَبِي حَبِيبٍ عَنْ بَكْرِ بْنِ عَمْرٍو عَنْ الْحَارِثِ بْنِ يَزِيدَ الْحَضْرَمِيِّ عَنْ ابْنِ حُجَيْرَةَ الْأَكْبَرِ عَنْ أَبِي ذَرٍّ قَالَ قُلْتُ يَا رَسُولَ اللَّهِ أَلَا تَسْتَعْمِلُنِي قَالَ فَضَرَبَ بِيَدِهِ عَلَى مَنْكِبِي ثُمَّ قَالَ يَا أَبَا ذَرٍّ إِنَّكَ ضَعِيفٌ وَإِنَّهَا أَمَانَةُ وَإِنَّهَا يَوْمَ الْقِيَامَةِ خِزْيٌ وَنَدَامَةٌ إِلَّا مَنْ أَخَذَهَا بِحَقِّهَا وَأَدَّى الَّذِي عَلَيْهِ فِيهَا',
        'indo':
            'Abu hurairah r.a. Berkata : rasulullah saw bersabda : kamu akan berebut pemerintahan, dan akan menjadi kemenyasalan pada hari qiyamat. (buchary)',
      },
      {
        'arabic':
            'حَدَّثَنَا زُهَيْرُ بْنُ حَرْبٍ وَإِسْحَقُ بْنُ إِبْرَاهِيمَ كِلَاهُمَا عَنْ الْمُقْرِئِ قَالَ زُهَيْرٌ حَدَّثَنَا عَبْدُ اللَّهِ بْنُ يَزِيدَ حَدَّثَنَا سَعِيدُ بْنُ أَبِي أَيُّوبَ عَنْ عُبَيْدِ اللَّهِ بْنِ أَبِي جَعْفَرٍ الْقُرَشِيِّ عَنْ سَالِمِ بْنِ أَبِي سَالِمٍ الْجَيْشَانِيِّ عَنْ أَبِيهِ عَنْ أَبِي ذَرٍّ أَنَّ رَسُولَ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ قَالَ يَا أَبَا ذَرٍّ إِنِّي أَرَاكَ ضَعِيفًا وَإِنِّي أُحِبُّ لَكَ مَا أُحِبُّ لِنَفْسِي لَا تَأَمَّرَنَّ عَلَى اثْنَيْنِ وَلَا تَوَلَّيَنَّ مَالَ يَتِيمٍ',
        'indo':
            'Abu dzar r.a. Berkata : rasulullah saw abersabda : ya abu dzar saya melihat kau seorang yag lemah, dan saya suka bagi dirimu apa yang saya suka bagi diriku sendiri, jangan menjadi pemimpin walau terhadap dua orang, dan jangan menguasai harta anak yatim. (muslim)',
      },
      {
        'arabic':
            'حَدَّثَنَا أَصْبَغُ أَخْبَرَنَا ابْنُ وَهْبٍ أَخْبَرَنِي يُونُسُ عَنْ ابْنِ شِهَابٍ عَنْ أَبِي سَلَمَةَ عَنْ أَبِي سَعِيدٍ الْخُدْرِيِّ عَنْ النَّبِيِّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ قَالَ مَا بَعَثَ اللَّهُ مِنْ نَبِيٍّ وَلَا اسْتَخْلَفَ مِنْ خَلِيفَةٍ إِلَّا كَانَتْ لَهُ بِطَانَتَانِ بِطَانَةٌ تَأْمُرُهُ بِالْمَعْرُوفِ وَتَحُضُّهُ عَلَيْهِ وَبِطَانَةٌ تَأْمُرُهُ بِالشَّرِّ وَتَحُضُّهُ عَلَيْهِ فَالْمَعْصُومُ مَنْ عَصَمَ',
        'indo':
            'Abu si’id dan abu hurairah r.a. Berkata : rasulullah saw bersabda : allah tiada mengutus seorang nabi atau mengangkat seorang khalifah, melainkan ada dua orang kepercayaan pribadi, seseorang yang menganjurkan kebaikan, and seorang yang menganjurkan kejahatan. Sedang orang yang selamat ialah yang dipelihara oleh allah. (buchary)',
      },
      {
        'arabic':
            'حَدَّثَنَا مُوسَى بْنُ عَامِرٍ الْمُرِّيُّ حَدَّثَنَا الْوَلِيدُ حَدَّثَنَا زُهَيْرُ بْنُ مُحَمَّدٍ عَنْ عَبْدِ الرَّحْمَنِ بْنِ الْقَاسِمِ عَنْ أَبِيهِ عَنْ عَائِشَةَ قَالَتْ قَالَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ إِذَا أَرَادَ اللَّهُ بِالْأَمِيرِ خَيْرًا جَعَلَ لَهُ وَزِيرَ صِدْقٍ إِنْ نَسِيَ ذَكَّرَهُ وَإِنْ ذَكَرَ أَعَانَهُ وَإِذَا أَرَادَ اللَّهُ بِهِ غَيْرَ ذَلِكَ جَعَلَ لَهُ وَزِيرَ سُوءٍ إِنْ نَسِيَ لَمْ يُذَكِّرْهُ وَإِنْ ذَكَرَ لَمْ يُعِنْهُ',
        'indo':
            '‘Aisyah r.a. Berkata : rasulullah saw bersabda : jika allah menghendaki kebaikan terhadap seorang raja, maka diberinya seorang menteri yang jujur, jika lupa diingatkan, dan jika ingat dibantu. Dan jika allah menghendaki sebaliknya dari itu, maka allah memberi padanya ,menteri yang tidak jujur, hingga jika lupa tidak diingatkan dan jika ingat tidak dibantu. (abu dawud).',
      },
      {
        'arabic':
            'حَدَّثَنَا هَدَّابُ بْنُ خَالِدٍ الْأَزْدِيُّ حَدَّثَنَا هَمَّامُ بْنُ يَحْيَى حَدَّثَنَا قَتَادَةُ عَنْ الْحَسَنِ عَنْ ضَبَّةَ بْنِ مِحْصَنٍ عَنْ أُمِّ سَلَمَةَ أَنَّ رَسُولَ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ قَالَ سَتَكُونُ أُمَرَاءُ فَتَعْرِفُونَ وَتُنْكِرُونَ فَمَنْ عَرَفَ بَرِئَ وَمَنْ أَنْكَرَ سَلِمَ وَلَكِنْ مَنْ رَضِيَ وَتَابَعَ قَالُوا أَفَلَا نُقَاتِلُهُمْ قَالَ لَا مَا صَلَّوْا',
        'indo':
            'Rasulullah saw bersabda: akan ada para pemimpin yang kalian kenal dan kalian ingkari. Siapa yang tidak menyukainya maka dia bebas dan barang siapa yang mengingkarinya maka dia selamat, akan tetapi (dosa dan hukuman) diberlakukan kepada orang yang yang ridha dan mengikuti para pemimpin itu. Para sahabat bertanya: apakah kami boleh memeranginya wahai rasulullah saw. Beliau menjawab: tidak boleh selama para pemimpin itu masih mengerjakan shalat. (hr.muslim)',
      },
      {
        'arabic':
            'حَدَّثَنَا عَبْدُ الرَّزَّاقِ أَخْبَرَنَا مَعْمَرٌ عَنِ ابْنِ خُثَيْمٍ عَنْ عَبْدِ الرَّحْمَنِ بْنِ سَابِطٍ عَنْ جَابِرِ بْنِ عَبْدِ اللَّهِ أَنَّ النَّبِيَّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ قَالَ لِكَعْبِ بْنِ عُجْرَةَ أَعَاذَكَ اللَّهُ مِنْ إِمَارَةِ السُّفَهَاءِ قَالَ وَمَا إِمَارَةُ السُّفَهَاءِ قَالَ أُمَرَاءُ يَكُونُونَ بَعْدِي لَا يَقْتَدُونَ بِهَدْيِي وَلَا يَسْتَنُّونَ بِسُنَّتِي فَمَنْ صَدَّقَهُمْ بِكَذِبِهِمْ وَأَعَانَهُمْ عَلَى ظُلْمِهِم| فَأُولَئِكَ لَيْسُوا مِنِّي وَلَسْتُ مِنْهُمْ وَلَا يَرِدُوا عَلَيَّ حَوْضِي وَمَنْ لَمْ يُصَدِّقْهُمْ بِكَذِبِهِمْ وَلَمْ يُعِنْهُمْ عَلَى ظُلْمِهِمْ فَأُولَئِكَ مِنِّي وَأَنَا مِنْهُمْ وَسَيَرِدُوا عَلَيَّ حَوْضِي يَا كَعْبُ بْنَ عُجْرَةَ الصَّوْمُ جُنَّةٌ وَالصَّدَقَةُ تُطْفِئُ الْخَطِيئَةَ وَالصَّلَاةُ قُرْبَانٌ أَوْ قَالَ بُرْهَانٌ يَا كَعْبُ بْنَ عُجْرَةَ إِنَّهُ لَا يَدْخُلُ الْجَنَّةَ لَحْمٌ نَبَتَ مِنْ سُحْتٍ النَّارُ أَوْلَى بِهِ يَا كَعْبُ بْنَ عُجْرَةَ النَّاسُ غَادِيَانِ فَمُبْتَاعٌ نَفْسَهُ فَمُعْتِقُهَا وَبَائِعٌ نَفْسَهُ فَمُوبِقُهَا',
        'indo':
            'Rasulullah saw bersabda kepada ka’ab bin ujrah: mudah-mudahan allah melindungimu dari para pemimpin yang bodoh (dungu). Ka’ab bin ujzah bertanya: apa yang dimaksud dengan pemimpin yang dungu wahai rasulullah saw? Beliau menjawab: mereka adalah para pemimpin yang hidup sepeninggalku. Mereka tidak pernah berpedoman pada petunjukku, mereka tidak mengikuti sunnahku. Barang siapa yang membenarkan kedustaan mereka ataupun mendukung atas kezaliman mereka, maka orang itu tidak termasuk golonganku, karena aku bukanlah orang seperti itu. Mereka juga tidak akan mendapatkan air minum dari telagaku. Wahai ka’ab, sesungguhnya puasa adalah benteng, sedekah itu bisa menghapus kesalahan, sedangkan shalat adalah upaya mendekatkan diri kepada allah (qurban) –dalam riwayat lain burhan (dalil)- wahai ka’ab sesungguhnya tidak akan masuk surga seonggok daging yang berasal dari barang haram. Dan api neraka lebih berhak untuk melahapnya. Wahai ka’ab bin ujrah, manusia terpecah menjadi dua golongan: pertama, orang yang membeli dirinya (menguasai dirinya), maka dia itulah yang memerdekakan dirinya. Golongan yang menjual dirinya, maka dia itulah yang membinasakan dirinya sendiri. (hr. Ahmad bin hambal)',
      },
      {
        'arabic':
            'حَدَّثَنَا عَلِيُّ بْنُ الْمُنْذِرِ الْكُوفِيُّ حَدَّثَنَا مُحَمَّدُ بْنُ فُضَيْلٍ عَنْ فُضَيْلِ بْنِ مَرْزُوقٍ عَنْ عَطِيَّةَ عَنْ أَبِي سَعِيدٍ قَالَ قَالَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ إِنَّ أَحَبَّ النَّاسِ إِلَى اللَّهِ يَوْمَ الْقِيَامَةِ وَأَدْنَاهُمْ مِنْهُ مَجْلِسًا إِمَامٌ عَادِلٌ وَأَبْغَضَ النَّاسِ إِلَى اللَّهِ وَأَبْعَدَهُمْ مِنْهُ مَجْلِسًا إِمَامٌ جَائِرٌ قَالَ وَفِي الْبَاب عَنْ عَبْدِ اللَّهِ بْنِ أَبِي أَوْفَى قَالَ أَبُو عِيسَى حَدِيثُ أَبِي سَعِيدٍ حَدِيثٌ حَسَنٌ غَرِيبٌ لَا نَعْرِفُهُ إِلَّا مِنْ هَذَا الْوَجْهِ',
        'indo':
            'Rasulullah saw bersabda: sesungguhnya manusia yang paling dicintai allah pada hari kiamat dan yang paling dekat kedudukannya di sisi allah adalah seorang pemimpin yang adil. Sedangkan orang yang paling dibenci allah dan sangat jauh dari allah adalah seorang pemimpin yang zalim. (hr. Turmudzi)',
      },
      {
        'arabic':
            'حَدَّثَنَا سُلَيْمَانُ أَخْبَرَنَا إِسْمَاعِيلُ حَدَّثَنِي عَمْرٌو عَنْ عَبْدِ اللَّهِ بْنِ عَبْدِ الرَّحْمَنِ الْأَشْهَلِ عَنْ حُذَيْفَةَ بْنِ الْيَمَانِ أَنَّ النَّبِيَّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ قَالَ لَا تَقُومُ السَّاعَةُ حَتَّى تَقْتُلُوا إِمَامَكُمْ وَتَجْتَلِدُوا بِأَسْيَافِكُمْ وَيَرِثُ دِيَارَكُمْ شِرَارُكُمْ',
        'indo':
            'Rasulullah saw bersabda: kiamat tidak akan terjadi sampai kalian membunuh para pemimpin kalian, pedang-pedang kalian banyak sekali meminum darah, dan agama kalian diwarisi (dikuasai) oleh orang-orang yang paling buruk di antara kalian. (hr. Ahmad bin hambal)',
      },
      {
        'arabic':
            'حَدَّثَنَا عَفَّانُ حَدَّثَنَا حَمَّادٌ حَدَّثَنَا الْمُغِيرَةُ بْنُ زِيَادٍ الثَّقَفِيُّ سَمِعَ أَنَسَ بْنَ مَالِكٍ يَقُولُ إِنَّ رَسُولَ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ قَالَ لَا إِيمَانَ لِمَنْ لَا أَمَانَةَ لَهُ وَلَا دِينَ لِمَنْ لَا عَهْدَ لَهُ',
        'indo':
            'Rasulullah saw bersabda: tidak beriman orang yang tidak bisa menjaga amanah yang dibebankan padanya. Dan tidak beragama orang yang tidak bisa menepati janjinya. (hr. Ahmad bin hambal)',
      },
      {
        'arabic':
            'حَدَّثَنَا مَحْمُودُ بْنُ خَالِدٍ حَدَّثَنَا أَبُو مُسْهِرٍ حَدَّثَنِي عَبَّادُ بْنُ عَبَّادٍ الْخَوَّاصُ عَنْ يَحْيَى بْنِ أَبِي عَمْرٍو السَّيْبَانِيِّ عَنْ عَمْرِو بْنِ عَبْدِ اللَّهِ السَّيْبَانِيِّ عَنْ عَوْفِ بْنِ مَالِكٍ الْأَشْجَعِيِّ قَالَ سَمِعْتُ رَسُولَ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ يَقُولُ لَا يَقُصُّ إِلَّا أَمِيرٌ أَوْ مَأْمُورٌ أَوْ مُخْتَالٌ',
        'indo':
            'Rasulullah saw bersabda: tidak ada yang berhak untuk memberikan ceramah (nasehat/cerita hikmah) kecuali seorang pemimpin, atau orang yang mendapatkan izin untuk itu (ma’mur), atau memang orang yang sombong dan haus kedudukan. (hr. Muslim)',
      },
      {
        'arabic':
            'حَدَّثَنَا أَبُو بَكْرِ بْنُ خَلَّادٍ الْبَاهِلِيُّ حَدَّثَنَا يَحْيَى بْنُ سَعِيدٍ الْقَطَّانُ حَدَّثَنَا مُجَالِدٌ عَنْ عَامِرٍ عَنْ مَسْرُوقٍ عَنْ عَبْدِ اللَّهِ قَالَ قَالَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ مَا مِنْ حَاكِمٍ يَحْكُمُ بَيْنَ النَّاسِ إِلَّا جَاءَ يَوْمَ الْقِيَامَةِ وَمَلَكٌ آخِذٌ بِقَفَاهُ ثُمَّ يَرْفَعُ رَأْسَهُ إِلَى السَّمَاءِ فَإِنْ قَالَ أَلْقِهِ أَلْقَاهُ فِي مَهْوَاةٍ أَرْبَعِينَ خَرِيفًا',
        'indo':
            'Rasulullah saw bersabda: setiap pemimpin yang memimpin rakyatnya, pada hari kiamat pasti akan didatangkan. Kemudian malaikat mencengkeram tengkuknya dan mengangkatnya sampai ke langit. Kalau ada perintah dari allah: lemparkanlah, maka malaikat akan melemparkannya ke bawah yang jauhnya adalah empat puluh tahun perjalanan. (hr. Ibnu majah)',
      },
      {
        'arabic':
            'و حَدَّثَنَا أَبُو غَسَّانَ الْمِسْمَعِيُّ وَإِسْحَقُ بْنُ إِبْرَاهِيمَ وَمُحَمَّدُ بْنُ الْمُثَنَّى قَالَ إِسْحَقُ أَخْبَرَنَا و قَالَ الْآخَرَانِ حَدَّثَنَا مُعَاذُ بْنُ هِشَامٍ حَدَّثَنِي أَبِي عَنْ قَتَادَةَ عَنْ أَبِي الْمَلِيحِ أَنَّ عُبَيْدَ اللَّهِ بْنَ زِيَادٍ دَخَلَ عَلَى مَعْقِلِ بْنِ يَسَارٍ فِي مَرَضِهِ فَقَالَ لَهُ مَعْقِلٌ إِنِّي مُحَدِّثُكَ بِحَدِيثٍ لَوْلَا أَنِّي فِي الْمَوْتِ لَمْ أُحَدِّثْكَ بِهِ سَمِعْتُ رَسُولَ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ يَقُولُ مَا مِنْ أَمِيرٍ يَلِي أَمْرَ الْمُسْلِمِينَ ثُمَّ لَا يَجْهَدُ لَهُمْ وَيَنْصَحُ إِلَّا لَمْ يَدْخُلْ مَعَهُمْ الْجَنَّةَ و حَدَّثَنَا عُقْبَةُ بْنُ مُكْرَمٍ الْعَمِّيُّ حَدَّثَنَا يَعْقُوبُ بْنُ إِسْحَقَ أَخْبَرَنِي سَوَادَةُ بْنُ أَبِي الْأَسْوَدِ حَدَّثَنِي أَبِي أَنَّ مَعْقِلَ بْنَ يَسَارٍ مَرِضَ فَأَتَاهُ عُبَيْدُ اللَّهِ بْنُ زِيَادٍ يَعُودُهُ نَحْوَ حَدِيثِ الْحَسَنِ عَنْ مَعْقِلٍ',
        'indo':
            'Rasulullah saw bersabda: setiap pemimpin yang menangani urusan kaum muslimin, tetapi tidak berusaha semaksimal mungkin untuk mengurusi mereka dan memberikan arahan kepada mereka, maka dia tidak akan bisa masuk surga bersama kaum muslimin itu. (hr. Muslim)',
      },
      {
        'arabic':
            'أَخْبَرَنَا صَالِحُ بْنُ سُهَيْلٍ مَوْلَى يَحْيَى بْنِ أَبِي زَائِدَةَ حَدَّثَنَا يَحْيَى عَنْ مُجَالِدٍ عَنْ الشَّعْبِيِّ عَنْ مَسْرُوقٍ عَنْ عَبْدِ اللَّهِ قَالَ لَا يَأْتِي عَلَيْكُمْ عَامٌ إِلَّا وَهُوَ شَرٌّ مِنْ الَّذِي كَانَ قَبْلَهُ أَمَا إِنِّي لَسْتُ أَعْنِي عَامًا أَخْصَبَ مِنْ عَامٍ وَلَا أَمِيرًا خَيْرًا مِنْ أَمِيرٍ وَلَكِن| عُلَمَاؤُكُمْ وَخِيَارُكُمْ وَفُقَهَاؤُكُمْ يَذْهَبُونَ ثُمَّ لَا تَجِدُونَ مِنْهُمْ خَلَفًا وَيَجِيءُ قَوْمٌ يَقِيسُونَ الْأُمُورَ بِرَأْيِهِمْ',
        'indo':
            'Abdullah berkata: akan datang pada kalian satu tahun (masa) yang lebih buruk daripada tahun (masa) sebelumnya. Akan tetapi yang aku maksud bukanlah sebuah tahun yang lebih subur daripada tahun yang lain, ataupun seorang pemimpin yang lebih baik daripada pemimpin lainnya. Akan tetapi di masa itu, telah hilang (wafat) para ulama, orang-orang terpilih dan para ahli fiqh kalian. Dan kalian tidak menemukan pengganti mereka. Sehingga datanglah sebuah kaum yang berdalil hanya dengan menggunakan rasio mereka. (hr. Ad darimi)',
      },
      {
        'arabic':
            'حَدَّثَنَا يَزِيدُ بْنُ هَارُونَ أَخْبَرَنَا صَدَقَةُ بْنُ مُوسَى عَنْ فَرْقَدٍ السَّبَخِيِّ عَنْ مُرَّةَ الطَّيِّبِ عَنْ أَبِي بَكْرٍ الصِّدِّيقِ رَضِيَ اللَّهُ عَنْهُ عَنْ النَّبِيِّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ قَالَ لَا يَدْخُلُ الْجَنَّةَ خَبٌّ وَلَا بَخِيلٌ وَلَا مَنَّانٌ وَلَا سَيِّئُ الْمَلَكَةِ وَأَوَّلُ مَنْ يَدْخُلُ الْجَنَّةَ الْمَمْلُوكُ إِذَا أَطَاعَ اللَّهَ وَأَطَاعَ سَيِّدَهُ',
        'indo':
            'Rasulullah saw bersabda: tidak akan masuk surga orang yang suka menipu, orang yang bakhil, orang yang suka mengungkit-ungkit kebaikan/pemberian, dan pemimpin yang buruk. Orang yang pertama kali masuk surga adalah budak yang taat kepada allah dan taat kepada majikannya.',
      },
      {
        'arabic':
            'حَدَّثَنَا وَكِيعٌ عَنْ عَلِيِّ بْنِ مُبَارَكٍ عَنْ يَحْيَى بْنِ أَبِي كَثِيرٍ عَنْ عَامِرٍ الْعُقَيْلِيِّ عَنْ أَبِيهِ عَنِ أَبِي هُرَيْرَةَ قَالَ قَالَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ إِنِّي لَأَعْلَمُ أَوَّلَ ثَلَاثَةٍ يَدْخُلُونَ الْجَنَّةَ الشَّهِيدُ وَعَبْدٌ أَدَّى حَقَّ اللَّهِ وَحَقَّ مَوَالِيهِ وَفَقِيرٌ عَفِيفٌ مُتَعَفِّفٌ وَإِنِّي لَأَعْلَمُ أَوَّلَ ثَلَاثَةٍ يَدْخُلُونَ النَّارَ سُلْطَانٌ مُتَسَلِّطٌ وَذُو ثَرْوَةٍ مِنْ مَالٍ لَا يُؤَدِّي حَقَّهُ وَفَقِيرٌ فَخُورٌ',
        'indo':
            'Rasulullah saw bersabda: sesungguhnya aku orang yang paling tahu tentang tiga golongan yang pertama kali masuk surga: orang yang mati syahid, seorang hamba yang menunaikan hak allah dan hak majikannya, dan orang fakir yang menjauhkan diri dari hal-hal yang tidak baik. Aku juga orang yang paling tahu tentang tiga golongan yang pertama kali masuk neraka: seorang pemimpin yang otoriter (sewenang-wenang), seorang kaya yang tidak menunaikan kewajibannya, dan seorang fakir yang sombong. (hr. Ahmad)',
      },
      {
        'arabic':
            'حَدَّثَنَا هَنَّادٌ حَدَّثَنَا حُسَيْنٌ الْجُعْفِيُّ عَنْ زَائِدَةَ عَنْ سِمَاكِ بْنِ حَرْبٍ عَنْ حَنَشٍ عَنْ عَلِيٍّ قَالَ قَالَ لِي رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ إِذَا تَقَاضَى إِلَيْكَ رَجُلَانِ فَلَا تَقْضِ لِلْأَوَّلِ حَتَّى تَسْمَعَ كَلَامَ الْآخَرِ فَسَوْفَ تَدْرِي كَيْفَ تَقْضِي قَالَ عَلِيٌّ فَمَا زِلْتُ قَاضِيًا بَعْدُ قَالَ أَبُو عِيسَى هَذَا حَدِيثٌ حَسَنٌ',
        'indo':
            'Apabila ada dua orang laki-laki yang meminta keputusan kepadamu maka janganlah engkau memberikan keputusan kepada laki-laki yang pertama sampai engkau mendengarkan pernyataan dari laki-laki yang kedua. Maka engkau akan tahu bagaimana enkau memberikan keputusan (hr. Turmudzi)',
      },
      {
        'arabic':
            'حَدَّثَنَا هَنَّادٌ حَدَّثَنَا وَكِيعٌ عَنْ شُعْبَةَ عَنْ أَبِي عَوْنٍ الثَّقَفِيِّ عَنْ الْحَارِثِ بْنِ عَمْرٍو عَنْ رِجَالٍ مِنْ أَصْحَابِ مُعَاذٍ أَنَّ رَسُولَ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ بَعَثَ مُعَاذًا إِلَى الْيَمَنِ فَقَالَ كَيْفَ تَقْضِي فَقَالَ أَقْضِي بِمَا فِي كِتَابِ اللَّهِ قَالَ فَإِنْ لَمْ يَكُن| فِي كِتَابِ اللَّهِ قَالَ فَبِسُنَّةِ رَسُولِ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ قَالَ فَإِنْ لَمْ يَكُنْ فِي سُنَّةِ رَسُولِ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ قَالَ أَجْتَهِدُ رَأْيِي قَالَ الْحَمْدُ لِلَّهِ الَّذِي وَفَّقَ رَسُولَ رَسُولِ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ حَدَّثَنَا مُحَمَّدُ بْنُ بَشَّارٍ حَدَّثَنَا مُحَمَّدُ بْنُ جَعْفَرٍ وَعَبْدُ الرَّحْمَنِ بْنُ مَهْدِيٍّ قَالَا حَدَّثَنَا شُعْبَةُ عَنْ أَبِي عَوْنٍ عَنْ الْحَارِثِ بْنِ عَمْرٍو ابْنِ أَخٍ لِلْمُغِيرَةِ بْنِ شُعْبَةَ عَنْ أُنَاسٍ مِنْ أَهْلِ حِمْصٍ عَنْ مُعَاذٍ عَنْ النَّبِيِّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ نَحْوَهُ قَالَ أَبُو عِيسَى هَذَا حَدِيثٌ لَا نَعْرِفُهُ إِلَّا مِنْ هَذَا الْوَجْهِ وَلَيْسَ إِسْنَادُهُ عِنْدِي بِمُتَّصِلٍ وَأَبُو عَوْنٍ الثَّقَفِيُّ اسْمُهُ مُحَمَّدُ بْنُ عُبَيْدِ اللَّهِ',
        'indo':
            'Ketika rasul mengutus mu’adz ke yaman, beliau bertanya: wahai mu’adz, bagaimana caramu memberikan putusan/hukum? Dia menjawab; aku memutuskan/menghukumi berdasarkan ketentuan dari al-qur’an. Lalu rasul bertanya lagi: bagaimana kalau tidak ada dalam al-quran? Mu’adz menjawab, maka aku memutuskan berdasarkan sunnah rasul s.a.w. Rasul bertanya lagi: bagaimana bila tidak kau temukan dalam sunnah rasul ? Mu’adz menjawab: maka aku berijtihad berdasarkan pendapatku sendiri. Rasul bersabda: segala puji bagi allah yang telah memberikan petunjuk/taufik kepada duta rasul saw',
      },
      {
        'arabic':
            'حَدَّثَنَا عَبْدُ الْقُدُّوسِ بْنُ مُحَمَّدٍ أَبُو بَكْرٍ الْعَطَّارُ حَدَّثَنَا عَمْرُو بْنُ عَاصِمٍ حَدَّثَنَا عِمْرَانُ الْقَطَّان عَنْ أَبِي إِسْحَقَ الشَّيْبَانِيِّ عَنْ عَبْدِ اللَّهِ بْنِ أَبِي أَوْفَى قَالَ قَالَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ إِنَّ اللَّهَ مَعَ الْقَاضِي مَا لَمْ يَجُرْ فَإِذَا جَارَ تَخَلَّى عَنْهُ وَلَزِمَهُ الشَّيْطَانُ قَالَ أَبُو عِيسَى هَذَا حَدِيثٌ حَسَنٌ غَرِيبٌ لَا نَعْرِفُهُ إِلَّا مِنْ حَدِيثِ عِمْرَان الْقَطَّانِ',
        'indo':
            'Rasul bersabda sesungguhnya allah senantiasa bersama dengan hakim/qodi sepanjang dia tidak menyeleweng. Kalau dia sudah menyeleweng maka allah akan menjauh darinya, dan syetan menjadi temannya.',
      },
      {
        'arabic':
            'ال عَمْرُو بْنُ مُرَّةَ لِمُعَاوِيَةَ إِنِّي سَمِعْتُ رَسُولَ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ يَقُولُ مَا مِنْ إِمَامٍ يُغْلِقُ بَابَهُ دُونَ ذَوِي الْحَاجَةِ وَالْخَلَّةِ وَالْمَسْكَنَةِ إِلَّا أَغْلَقَ اللَّهُ أَبْوَابَ السَّمَاءِ دُونَ خَلَّتِهِ وَحَاجَتِهِ وَمَسْكَنَتِهِ',
        'indo':
            'Setiap pemimpin yang menutup pintunya terhadap orang yang memiliki hajat, pengaduan, dan kemiskinan maka allah akan menutup pintu langit terhadap segala pengaduan, hajat dan kemiskinannya.',
      },
      {
        'arabic':
            'عَبْدِ الرَّحْمَنِ بْن أَبِي بَكْرَةَ قَالَ كَتَبَ أَبِي إِلَى عُبَيْدِ اللَّهِ بْنِ أَبِي بَكْرَةَ وَهُوَ قَاضٍ أَنْ لَا تَحْكُمْ بَيْنَ اثْنَيْنِ وَأَنْتَ غَضْبَانُ فَإِنِّي سَمِعْتُ رَسُولَ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ يَقُولُ لَا يَحْكُمْ الْحَاكِمُ بَيْنَ اثْنَيْنِ وَهُوَ غَضْبَانُ قَالَ أَبُو عِيسَى هَذَا حَدِيثٌ حَسَنٌ صَحِيحٌ وَأَبُو بَكْرَةَ اسْمُهُ نُفَيْعٌ',
        'indo':
            'Janganlah seorang pemimpin (hakim) itu menghukumi antara dua orang yang berseteru dalam keadaan marah (emosional)',
      },
      {
        'arabic':
            'حَدَّثَنَا أَبُو نُعَيْمٍ حَدَّثَنَا عَاصِمُ بْنُ مُحَمَّدِ بْن زَيْدِ بْن عَبْدِ اللَّهِ بْن عُمَرَ عَنْ أَبِيهِ قَالَ أُنَاسٌ لِابْن عُمَرَ إِنَّا نَدْخُلُ عَلَى سُلْطَانِنَا فَنَقُولُ لَهُمْ خِلَافَ مَا نَتَكَلَّمُ إِذَا خَرَجْنَا مِنْ عِنْدِهِمْ قَالَ كُنَّا نَعُدُّهَا نِفَاقًا',
        'indo':
            'Ada serombongan orang yang berkata kepada ibnu umar; kalau kami bertemu dengan para pemimpin kami maka kami pasti mengatakan sesuatu yang sama sekali berbeda dengan apa yang kami katakan bila tidak bertemu dengan mereka (pemimpin). Ibnu umar berkata: hal itu kami anggap sebagai sebuah sikap munafik. (hr. Bukhori)',
      },
      {
        'arabic': 'إِذَا كَانَ ثَلاَثَةٌ فِي سَفَرٍ فَلْيُؤَمِّرُوا أَحَدَهُمْ',
        'indo':
            '“Jika ada tiga orang bepergian, hendaknya mereka mengangkat salah seorang di antara mereka menjadi pemimpinnya.” (HR Abu Dawud dari Abu Hurairah).',
      },
      {
        'arabic':
            'إِنَّ أَحَبَّ النَّاسِ إِلَى اللَّهِ يَوْمَ الْقِيَامَةِ وَأَدْنَاهُمْ مِنْهُ مَجْلِسًا إِمَامٌ عَادِلٌ وَأَبْغَضَ النَّاسِ إِلَى اللَّهِ وَأَبْعَدَهُمْ مِنْهُ مَجْلِسًا إِمَامٌ جَائِرٌ',
        'indo':
            '“Sesungguhnya manusia yang paling dicintai oleh Allah pada hari kiamat dan paling dekat kedudukannya di sisi Allah adalah seorang pemimpin yang adil. Sedangkan orang yang paling dibenci oleh Allah dan paling jauh kedudukannya dari Allah adalah seorang pemimpin yang zalim.” (HR. Tirmidzi)',
      },
      {
        'arabic':
            'ثَلاَثَةٌ لاَ يُكَلِّمُهُمُ اللَّهُ يَوْمَ الْقِيَامَةِ وَلاَ يُزَكِّيهِمْ وَلاَ يَنْظُرُ إِلَيْهِمْ وَلَهُمْ عَذَابٌ أَلِيمٌ شَيْخٌ زَانٍ وَمَلِكٌ كَذَّابٌ وَعَائِلٌ مُسْتَكْبِرٌ',
        'indo':
            '“Tiga orang yang Allah enggan berbicara dengan mereka pada hari kiamat kelak. (Dia) tidak sudi memandang muka mereka, (Dia) tidak akan membersihkan mereka daripada dosa (dan noda). Dan bagi mereka disiapkan siksa yang sangat pedih. (Mereka ialah ): Orang tua yang berzina, Penguasa yang suka berdusta dan fakir miskin yang takabur.” (HR. Muslim)',
      },
      {
        'arabic': 'أَيُّمَا رَاعٍ غَشَّ رَعِيَّتَهُ فَهُوَ فِي النَّارِ',
        'indo':
            '“Siapapun pemimpin yang menipu rakyatnya, maka tempatnya di neraka.” (HR. Ahmad)',
      },
      {
        'arabic':
            'مَنِ اسْتَرْعَاهُ اللهُ رَعِيَّةً ثُمَّ لَمْ يُحِطْهَا بِنُصْحٍ إِلَّا حَرَّمَ اللهُ عَلَيْهِ الجَنَّةَ. متفق عليه. وفي لفظ : يَمُوتُ حِينَ يَمُوتُ وَهُوَ غَاسِ لِرَعِيَّتِهِ إِلَّا حَرَّمَ اللهُ عَلَيْهِ الْجَنَّةَ.',
        'indo':
            '“Barangsiapa yang diangkat oleh Allah untuk memimpin rakyatnya, kemudian ia tidak mencurahkan kesetiaannya, maka Allah haramkan baginya surge.” (HR. Bukhari dan Muslim)',
      },
      {
        'arabic':
            'حَدَّثَنِي هَارُونُ بْنُ سَعِيدٍ الْأَيْلِيُّ حَدَّثَنَا ابْنُ وَهْبٍ حَدَّثَنِي حَرْمَلَةُ عَنْ عَبْدِ الرَّحْمَنِ بْنِ شِمَاسَةَ قَالَ أَتَيْتُ عَائِشَةَ أَسْأَلُهَا عَنْ شَيْءٍ فَقَالَتْ مِمَّنْ أَنْتَ فَقُلْتُ رَجُلٌ مِنْ أَهْلِ مِصْرَ فَقَالَتْ كَيْفَ كَانَ صَاحِبُكُمْ لَكُمْ فِي غَزَاتِكُمْ هَذِهِ فَقَالَ مَا نَقَمْنَا مِنْهُ شَيْئًا إِنْ كَانَ لَيَمُوتُ لِلرَّجُلِ مِنَّا الْبَعِيرُ فَيُعْطِيهِ الْبَعِيرَ وَالْعَبْدُ فَيُعْطِيهِ الْعَبْدَ وَيَحْتَاجُ إِلَى النَّفَقَةِ فَيُعْطِيهِ النَّفَقَةَ فَقَالَتْ أَمَا إِنَّهُ لَا يَمْنَعُنِي الَّذِي فَعَلَ فِي مُحَمَّدِ بْنِ أَبِي بَكْرٍ أَخِي أَنْ أُخْبِرَكَ مَا سَمِعْتُ مِنْ رَسُولِ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ يَقُولُ فِي بَيْتِي هَذَا اللَّهُمَّ مَنْ وَلِيَ مِنْ أَمْرِ أُمَّتِي شَيْئًا فَشَقَّ عَلَيْهِمْ فَاشْقُقْ عَلَيْهِ وَمَنْ وَلِيَ مِنْ أَمْرِ أُمَّتِي شَيْئًا فَرَفَقَ بِهِمْ فَارْفُقْ بِهِ و حَدَّثَنِي مُحَمَّدُ بْنُ حَاتِمٍ حَدَّثَنَا ابْنُ مَهْدِيٍّ حَدَّثَنَا جَرِيرُ بْنُ حَازِمٍ عَنْ حَرْمَلَةَ الْمِصْرِيِّ عَنْ عَبْدِ الرَّحْمَنِ بْنِ شِمَاسَةَ عَنْ عَائِشَةَ عَنْ النَّبِيِّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ بِمِثْلِهِ',
        'indo':
            '‘Aisjah r.a berkata : saya telah mendengar rasulullah saw bersabda di rumahku ini : ya allah siapa yang menguasai sesuatu dari urusan umatku, lalu mempersukar pada mereka, maka persukarlah baginya. Dan siapa yang mengurusi umatku lalu berlemah lembut pada mereka, maka permudahlah baginya. (hr. Muslim)',
      },
      {
        'arabic':
            'حَدَّثَنِي مُحَمَّدُ بْنُ بَشَّارٍ حَدَّثَنَا مُحَمَّدُ بْنُ جَعْفَرٍ حَدَّثَنَا شُعْبَةُ عَنْ فُرَاتٍ الْقَزَّازِ قَالَ سَمِعْتُ أَبَا حَازِمٍ قَالَ قَاعَدْتُ أَبَا هُرَيْرَةَ خَمْسَ سِنِينَ فَسَمِعْتُهُ يُحَدِّثُ عَنْ النَّبِيِّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ قَالَ كَانَتْ بَنُو إِسْرَائِيلَ تَسُوسُهُمْ الْأَنْبِيَاءُ كُلَّمَا هَلَكَ نَبِيٌّ خَلَفَهُ نَبِيٌّ وَإِنَّهُ لَا نَبِيَّ بَعْدِي وَسَيَكُونُ خُلَفَاءُ فَيَكْثُرُونَ قَالُوا فَمَا تَأْمُرُنَا قَالَ فُوا بِبَيْعَةِ الْأَوَّلِ فَالْأَوَّلِ أَعْطُوهُمْ حَقَّهُمْ فَإِنَّ اللَّهَ سَائِلُهُمْ عَمَّا اسْتَرْعَاهُمْ',
        'indo':
            'Abu hurairah r.a berkata : rasulullah saw bersabda : dahulu bani israil selalu dipimpin oleh nabi, tiap mati seorang nabi seorang nabi digantikan oleh nabi lainnya, dan sesudah aku ini tidak ada nabi, dan akan terangkat sepeninggalku beberapa khalifah. Bahkan akan bertambah banyak. Sahabat bertanya: ya rasulullah apakah pesanmu kepada kami? Jawab nabi: tepatilah baiatmu (kontrak politik) pada yang pertama, dan berikan kepada mereka haknya, dan mohonlah kepada allah bagimu, maka allah akan menanya mereka dari hal apa yang diamanatkan dalam memelihara hambanya.',
      },
      {
        'arabic':
            'حَدَّثَنَا شَيْبَانُ بْنُ فَرُّوخَ حَدَّثَنَا جَرِيرُ بْنُ حَازِمٍ حَدَّثَنَا الْحَسَنُ أَنَّ عَائِذَ بْنَ عَمْرٍو وَكَانَ مِنْ أَصْحَابِ رَسُولِ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ دَخَلَ عَلَى عُبَيْدِ اللَّهِ بْنِ زِيَادٍ فَقَالَ أَيْ بُنَيَّ إِنِّي سَمِعْتُ رَسُولَ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ يَقُولُ إِنَّ شَرَّ الرِّعَاءِ الْحُطَمَةُ فَإِيَّاكَ أَنْ تَكُونَ مِنْهُمْ فَقَالَ لَهُ اجْلِسْ فَإِنَّمَا أَنْتَ مِنْ نُخَالَةِ أَصْحَابِ مُحَمَّدٍ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ فَقَالَ وَهَلْ كَانَتْ لَهُمْ نُخَالَةٌ إِنَّمَا كَانَتْ النُّخَالَةُ بَعْدَهُمْ وَفِي غَيْرِهِمْ',
        'indo':
            '‘Aidz bin amru r.a, ketika ia masuk kepada ubaidillah bin zijad berkata: hai anakku saya telah mendengar rasulullah saw bersabda: sesungguhnya sejahat-jahat pemerintah yaitu yang kejam (otoriter), maka janganlah kau tergolong daripada mereka. (HR. Buchary, Muslim)',
      },
      {
        'arabic':
            'حَدَّثَنَا سُلَيْمَانُ بْنُ عَبْدِ الرَّحْمَنِ الدِّمَشْقِيُّ حَدَّثَنَا يَحْيَى بْنُ حَمْزَةَ حَدَّثَنِي ابْنُ أَبِي مَرْيَمَ أَنَّ الْقَاسِمَ بْنَ مُخَيْمِرَةَ أَخْبَرَهُ أَنَّ أَبَا مَرْيَمَ الْأَزْدِيَّ أَخْبَرَهُ قَالَ دَخَلْتُ عَلَى مُعَاوِيَةَ فَقَالَ مَا أَنْعَمَنَا بِكَ أَبَا فُلَانٍ وَهِيَ كَلِمَةٌ تَقُولُهَا الْعَرَبُ فَقُلْتُ حَدِيثًا سَمِعْتُهُ أُخْبِرُكَ بِهِ سَمِعْتُ رَسُولَ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ يَقُولُ مَنْ وَلَّاهُ اللَّهُ عَزَّ وَجَلَّ شَيْئًا مِنْ أَمْرِ الْمُسْلِمِينَ فَاحْتَجَبَ دُونَ حَاجَتِهِم| وَخَلَّتِهِمْ وَفَقْرِهِمْ احْتَجَبَ اللَّهُ عَنْهُ دُونَ حَاجَتِهِ وَخَلَّتِهِ وَفَقْرِهِ قَالَ فَجَعَلَ رَجُلًا عَلَى حَوَائِجِ النَّاسِ',
        'indo':
            'Abu maryam al’ azdy r.a berkata kepada muawiyah: saya telah mendengar rasulullah saw bersabda: siapa yang diserahi oleh allah mengatur kepentingan kaum muslimin, yang kemdian ia sembunyi dari hajat kepentingan mereka, maka allah akan menolak hajat kepentingan dan kebutuhannya pada hari qiyamat. Maka kemudian muawiyah mengangkat seorang untuk melayani segala hajat kebutuhan orang-orang (rakyat). (abu dawud, attirmidzy)',
      },
      {
        'arabic':
            'حَدَّثَنَا مُحَمَّدُ بْنُ سَلَّامٍ أَخْبَرَنَا عَبْدُ اللَّهِ عَنْ عُبَيْدِ اللَّهِ بْنِ عُمَرَ عَنْ خُبَيْبِ بْنِ عَبْدِ الرَّحْمَنِ عَنْ حَفْصِ بْنِ عَاصِمٍ عَنْ أَبِي هُرَيْرَةَ عَنْ النَّبِيِّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ قَالَ سَبْعَةٌ يُظِلُّهُمْ اللَّهُ يَوْمَ الْقِيَامَةِ فِي ظِلِّهِ يَوْمَ لَا ظِلَّ إِلَّا ظِلُّهُ إِمَامٌ عَادِلٌ وَشَابٌّ نَشَأَ فِي عِبَادَةِ اللَّهِ وَرَجُلٌ ذَكَرَ اللَّهَ فِي خَلَاءٍ فَفَاضَتْ عَيْنَاهُ وَرَجُلٌ قَلْبُهُ مُعَلَّقٌ فِي الْمَسْجِدِ وَرَجُلَانِ تَحَابَّا فِي اللَّهِ وَرَجُلٌ دَعَتْهُ امْرَأَةٌ ذَاتُ مَنْصِبٍ وَجَمَالٍ إِلَى نَفْسِهَا قَالَ إِنِّي أَخَافُ اللَّهَ وَرَجُلٌ تَصَدَّقَ بِصَدَقَةٍ فَأَخْفَاهَا حَتَّى لَا تَعْلَمَ شِمَالُهُ مَا صَنَعَتْ يَمِينُهُ',
        'indo':
            'Abu hurairah r.a: berkata: bersabda nabi saw: ada tujuh macam orang yang bakal bernaung di bawah naungan allah, pada hati tiada naungan kecuali naungan allah:Imam(pemimpin) yang adil, dan pemuda yang rajin ibadah kepada allah. Dan orang yang hatinya selalu gandrung kepada masjid. Dan dua orang yang saling kasih sayang karena allah, baik waktu berkumpul atau berpisah. Dan orang laki yang diajak berzina oleh wanita bangsawan nan cantik, maka menolak dengan kata: saya takut kepada allah. Dan orang yang sedekah dengan sembunyi-sembunyi hingga tangan kirinya tidak mengetahui apa yang disedekahkan oleh tangan kanannya. Dan orang berdzikir ingat pada allah sendirian hingga mencucurkan air matanya. (buchary, muslim)',
      },
      {
        'arabic':
            'إِنَّهُ سَيَكُونُ عَلَيْكُمْ بَعْدِي أُمَرَاءٌ فَمَنْ دَخَلَ عَلَيْهِمْ فَصَدَّقَهُمْ بِكَذِبِهمْ وَأَعَانَهُمْ عَلَى ظُلْمِهمْ ، فَلَيْسُ مِنِّي وَلَسْتُ مِنْهُمْ ، وَلَيْسَ بِوَارِدٍ عَلَيَّ حَوْضِي ، وَمَنْ لَمْ يُصَدِّقْهُمْ بِكَذِبِهمْ وَلَمْ يُعِنْهُمْ عَلَى ظُلْمِهِمْ ، فَهُوَ مِنِّي وَأَنَا مِنْهُ وَسَيَرِدُ عَلَيَّ الْحَوْضَ',
        'indo':
            '“Akan ada setelahku nanti para pemimpin yang berdusta. Barangsiapa masuk pada mereka lalu membenarkan (menyetujui) kebohongan mereka dan mendukung kedhaliman mereka maka dia bukan dari golonganku dan aku bukan dari golongannya, dan dia tidak bisa mendatangi telagaku (di hari kiamat). Dan barangsiapa yang tidak masuk pada mereka (penguasa dusta) itu, dan tidak membenarkan kebohongan mereka, dan (juga) tidak mendukung kedhaliman mereka, maka dia adalah bagian dari golonganku, dan aku dari golongannya, dan ia akan mendatangi telagaku (di hari kiamat).” (HR. Ahmad dan An-Nasa’i)',
      },
      {
        'arabic':
            'عَنْ أَبِي ذَرِّ قَالَ: قُلْتُ: يَا رَسُولَ اللهِ أَلاَ تَسْتَعْمِلُنِي قَالَ: فَضَرَبَ بِيَدِهِ عَلَى مَنْكِبِي ثُمَّ قَالَ : يَا أَبَا ذَرِّ إِنَّكَ ضَعِيفٌ وَإِنَّهَا أَمَانَةُ وَإِنَّهَا يَوْمَ الْقِيَامَةِ خِزْيٌ وَنَدَامَةٌ إِلاَّ مَنْ أَخَذَهَا بِحَقِّهَا وَأَدَّى الَّذِي عَلَيْهِ فِيهَ',
        'indo':
            'Dari Abu Dzar berkata, saya berkata: Wahai Rasulullah, tidakkah anda menjadikanku sebagai pegawai (pejabat)? Abu Dzar berkata: Kemudian beliau menepuk bahuku dengan tangan beliau seraya bersabda:Wahai Abu Dzar, kamu ini lemah (untuk memegang jabatan) padahal jabatan merupakan amanah. Pada hari kiamat ia adalah kehinaan dan penyesalan, kecuali bagi siapa yang mengambilnya dengan haq dan melaksanakan tugas dengan benar.',
      },
      {
        'arabic':
            'عَنْ أَبِي هُرَيْرَةَ قَالَ: قَالَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: ثَلاَثَةٌ لاَ تُرَدُّ دَعْوَتُهُمْ الصَّائِمُ حَتَّى يُفْطِرَ وَاْلإِمَامُ الْعَادِلُ وَدَعْوَةُ الْمَظْلُومِ يَرْفَعُهَا اللهُ فَوْقَ الْغَمَامِ وَيَفْتَحُ لَهَا أَبْوَابَ السَّمَاءِ وَيَقُولُ الرَّبُّ وَعِزَّتِي لأَنْصُرَنَّكِ وَلَوْ بَعْدَ حِينٍ.',
        'indo':
            'Dari Abu Hurairah berkata: Rasulullah saw bersabda:Tiga orang yang do’a mereka tidak tertolak, yaitu; seorang yang berpuasa hingga berbuka, seorang imam (penguasa) yang adil dan do’anya orang yang di dzalimi. Allah akan mengangkat do’anya ke atas awan, dan membukakan baginya pintu-pintu langit, seraya berfirman: Demi kemuliaan-Ku, sungguh Aku akan menolongmu meski beberapa saat lamanya.',
      },
      {
        'arabic':
            'عَنْ عَبْدِ اللهِ بْنِ عَمْرٍو قَالَ:  قال رسول الله صلى الله عليه وسلم : إن المقسطين عند الله على منابر من نور عن يمين الرحمن عز وجل وكلتا يديه يمين الذين يعدلون في حكمهم وأهليهم وما ولوا',
        'indo':
            'Dari Abdullah ibn ‘Amru berkata: Rasulullah saw bersabda: Orang-orang yang berlaku adil berada di sisi Allah di atas mimbar (panggung) yang terbuat dari cahaya, di sebelah kanan Ar Rahman ‘azza wajalla -sedangkan kedua tangan Allah adalah kanan semua-, yaitu orang-orang yang berlaku adil dalam hukum, adil dalam keluarga dan adil dalam melaksanakan tugas yang di bebankan kepada mereka.',
      },
      {
        'arabic':
            ' ١٢٠٠~ مَعْقِلِ بْنِ يَسَارٍ عَنِ الحَسَنِ, أَنَّ عُبَيْدَاللهِ اِبْنَ زِيَادٍ عَادَ مَعْقِلَ بْنَ يَسَارٍ فِي مَارَضِهِ الَّذِي مَاتَ فِيْهِ, فَقَالَ لَهُ مَعْقِلٌ : إِنِّي مُحَدِّثُكَ حَادِثًا سَمِعْتُهُ مِنْ رَسُوْلِ اللهِ       , سَمِعْتُ النَّبِيَّ      , يَقُولُ : مَا مِنْ عَبْدٍ اسْتَرْعَاهُ اللهُ رَعِيَةً فَلَمْ يَحُطْهَا بِنَصِيْحَةٍ إِلاَّ لَمْ يَجِدْ رَائِحَةَ الجَنَّةِ\n (أخرجه البخري في : ٣٩ كتاب الأحكام :٨ باب من استرعى رعية فلم ينصح رقيق)',
        'indo':
            'Ma’qil bin Yasar, dari Al-Hasan, sesungguhnya Ubaidillah bin Ziyad menjenguk Ma’qil bin Yasar ketika dia sakit sebelum dia meninggal. Maka Ma’qil berkata kepada Ubaidillah bin Ziyad: aku akan menyampaikan kepadamu sebuah hadits yang telah aku dengar dari Rasulullah         . aku telah mendengar beliau bersabda: “Tiada seorang hamba yang diberi amanah rakyat oleh Allah lalu ia tidak memeliharanya dengan baik, melainkan hamba itu tidak akan mencium bau surga.(Al-bukhari)',
      },
      {
        'arabic':
            'مَن طَلَبَ قَضَاءَ المُسلِمِينَ حَتَّى يَنَا لَهُ ثُمَّ غَلَبَ عَدْلُهُ جَوْرَهُ فَلَهُ الجَنَّةُ,وَ مَنْ غَلَبَ جَوْرُهُ عَدْلُهُ فَلَهُ النَّار',
        'indo':
            'barang siapa meminta jabatan untuk mengadili kaum muslimin hingga mendapatkannya kemudian keadilannya mengalahkan kecurangannya maka baginya surga. Tetapi barangsiapa yang kecurangannya mengalahkan keadilannya maka baginya neraka.',
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
          'Hadist Tentang Pemimpin',
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
