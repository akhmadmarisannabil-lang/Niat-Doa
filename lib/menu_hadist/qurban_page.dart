import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';

class QurbanPage extends StatelessWidget {
  const QurbanPage({super.key});

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
            'وَلَهُ: مِنْ حَدِيثِ عَائِشَةَ رَضِيَ اللَّهُ عَنْهَا; { أَمَرَ بِكَبْشٍ أَقْرَنَ, يَطَأُ فِي سَوَادٍ, وَيَبْرُكُ فِي سَوَادٍ, وَيَنْظُرُ فِي سَوَادٍ; لِيُضَحِّيَ بِهِ, فَقَالَ: "اِشْحَذِي الْمُدْيَةَ" , ثُمَّ أَخَذَهَا, فَأَضْجَعَهُ, ثُمَّ ذَبَحَهُ, وَقَالَ: "بِسْمِ اللَّهِ, اَللَّهُمَّ تَقَبَّلْ مِنْ مُحَمَّدٍ وَآلِ مُحَمَّدٍ, وَمِنْ أُمّةِ مُحَمَّدٍ"',
        'indo':
            '”Beliau pernah memerintahkan untuk dibawakan dua ekor kambing kibas bertanduk, yang kaki, perut dan sekitar matanya berwarna hitam. Maka dibawakanlah kambing tersebut kepada beliau untuk dijadikan qurban. Beliaupun berkata kepada Aisyah, ’Wahai Aisyah, ambilkan pisau.’ Kemudian beliau mengambilnya, membaringkannya dan menyembelihnya seraya berdoa: ’Bismillaah, alloohumma taqobbal min muhammadin wa’aali muhammad, wa min ummati muhammad.”',
      },
      {
        'arabic':
            'وَعَنْ جُنْدُبِ بْنِ سُفْيَانَ قَالَ: { شَهِدْتُ الأَضْحَى مَعَ رَسُولِ اللَّهِ صلى الله عليه وسلم فَلَمَّا قَضَى صَلاتَهُ بِالنَّاسِ, نَظَرَ إِلَى غَنَمٍ قَدْ ذُبِحَتْ, فَقَالَ: "مَنْ ذَبَحَ قَبْلَ الصَّلاةِ فَلْيَذْبَحْ شَاةً مَكَانَهَا, وَمَنْ لَمْ يَكُنْ ذَبَحَ فَلْيَذْبَحْ عَلَى اسْمِ اللَّهِ" } مُتَّفَقٌ عَلَيْه ِ',
        'indo':
            '”Barangsiapa menyembelih sebelum shalat, hendaknya ia menyembelih seekor kambing lagi sebagai gantinya. Barangsiapa belum menyembelih, hendaknya ia menyembelih dengan nama Allah.”',
      },
      {
        'arabic':
            'وَعَنِ الْبَرَاءِ بنِ عَازِبٍ رَضِيَ اللَّهُ عَنْهُمَا قَالَ: قَامَ فِينَا رَسُولُ اللَّهِ صلى الله عليه وسلم فَقَالَ: { "أَرْبَعٌ لا تَجُوزُ فِي الضَّحَايَا: اَلْعَوْرَاءُ الْبَيِّنُ عَوَرُهَا, وَالْمَرِيضَةُ الْبَيِّنُ مَرَضُهَا, وَالْعَرْجَاءُ الْبَيِّنُ ظَلْعُهَ ا وَالْكَسِيرَةُ الَّتِي لا تُنْقِي" } رَوَاهُ الْخَمْسَة ُ . وَصَحَّحَهُ التِّرْمِذِيُّ, وَابْنُ حِبَّان',
        'indo':
            '”Empat macam hewan yang tidak boleh dijadikan qurban, yaitu: hewan yang tampak jelas butanya, tampak jelas sakitnya, tampak jelas pincangnya, dan hewan tua yang tidak bersumsum.”',
      },
      {
        'arabic':
            'عَنْ عَطَاءِ بْنِ يَسَارٍ قَالَ: سَأَلْتُ اَبَا اَيُّوْبَ اْلاَنْصَارِيَّ: كَيْفَ كَانَتِ الضَّحَايَا فِيْكُمْ عَلَى عَهْدِ رَسُوْلِ اللهِ ص؟ قَالَ: كَانَ الرَّجُلُ فِى عَهْدِ النَّبِيّ ص يُضَحّى بِالشَّاةِ عَنْهُ وَ عَنْ اَهْلِ بَيْتِهِ. فَيَأْكُلُوْنَ وَ يُطْعِمُوْنَ حَتَّى تَبَاهَى النَّاسُ فَصَارَ كَمَا تَرَى. ابن ماجه و الترمذى و صححه، فى نيل الاوطار 5: 136',
        'indo':
            'Dari \'Atha\' bin Yasar dia berkata : Saya bertanya kepada Abu Ayyub Al-Anshariy, "Bagaimanakah udlhiyah yang dilakukan di masa Rasulullah SAW?". Jawabnya, "Seorang laki-laki di zaman Rasulullah SAW menyembelih seekor kambing untuknya dan untuk ahli baitnya (rumah tangganya), lalu mereka makan dagingnya itu dan memberi makan kepada orang lain, sehingga manusia bermegah-megah dengan qurban itu sehingga menjadi seperti yang engkau saksikan sekarang ini". [HR. Ibnu Majah dan Tirmidzi]',
      },
      {
        'arabic':
            'عَنْ نُبَيْشَةَ؛ أَنَّ رَسُولَ اللهِ صلى الله عليه وسلم قَالَ ((كُنْتُ نَهَيْتُكُمْ عَنْ لُحُومِ الأَضَاحِيِّ فَوْقَ ثَلاَثَةِ أَيَّامِ. فَكُلُوا وَادَّخِرُوا))',
        'indo':
            '“Dulu aku pernah melarang kalian untuk menyimpan daging kurban lebih dari tiga hari,  maka kini makanlah dan simpanlah.”',
      },
      {
        'arabic':
            'قَالَ جُنْدَبٌ، كَانَ النَّبِيُّ ص يُصَلّى بِنَا يَوْمَ اْلفِطْرِ وَ الشَّمْسُ عَلَى قَيْدِ رُمْحَيْنِ وَ اْلاَضْحَى عَلَى قَيْدِ رُمْحٍ. احمد بن حسن',
        'indo':
            'Telah berkata Jundab, "Adalah Nabi SAW shalat \'Iedul Fithri bersama kami, sedang matahari tingginya kadar dua batang tombak, dan (beliau shalat) \'Iedul Adlha (diwaktu matahari) tingginya kadar satu batang tombak". [HR. Ahmad bin Hasan]',
      },
      {
        'arabic':
            'عَنِ ابْنِ عَبَّاسٍ قَالَ: قَلَّتِ اْلاِبِلُ عَلَى عَهْدِ رَسُوْلِ اللهِ ص فَاَمَرَهُمْ اَنْ يَنْحَرُوا اْلبَقَرَ. ابن ماجه 2: 1047، رقم: 3134',
        'indo':
            'Dari Ibnu \'Abbas, ia berkata : Pernah terjadi pada jaman Rasulullah SAW (jumlah) unta sedikit, maka beliau menyuruh para shahabat berqurban dengan lembu. [HR. Ibnu Majah juz 2, hal. 1047, no. 3134].',
      },
      {
        'arabic':
            'حَدَّثَنَا عَبْدُ الرَّحْمَنِ بْنُ إِبْرَاهِيمَ الدِّمَشْقِيُّ حَدَّثَنَا عَبْدُ اللَّهِ ابْنُ نَافِعٍ حَدَّثَنِي أَبُو الْمُثَنَّى عَنْ هِشَامِ بْنِ عُرْوَةَ عَنْ أَبِيهِ عَنْ عَائِشَةَ أَنَّ النَّبِيَّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ قَالَ مَا عَمِلَ ابْنُ آدَمَ يَوْمَ النَّحْرِ عَمَلًا أَحَبَّ إِلَى اللَّهِ عَزَّ وَجَلَّ مِنْ هِرَاقَةِ دَمٍ وَإِنَّهُ لَيَأْتِي يَوْمَ الْقِيَامَةِ بِقُرُونِهَا وَأَظْلَافِهَا وَأَشْعَارِهَا وَإِنَّ الدَّمَ لَيَقَعُ مِنْ اللَّهِ عَزَّ وَجَلَّ بِمَكَانٍ قَبْلَ أَنْ يَقَعَ عَلَى الْأَرْضِ فَطِيبُوا بِهَا نَفْسًا',
        'indo':
            '“Tidak ada amalan yang dikerjakan anak Adam ketika hari (raya) kurban yang lebih dicintai oleh Allah Azza Wa Jalla dari mengalirkan darah, sesungguhnya pada hari kiamat ia akan datang dgn tanduk-tanduknya, kuku-kukunya & bulu-bulunya. Dan sesungguhnya darah tersebut akan sampai kepada Allah Azza Wa Jalla sebelum jatuh ke tanah, maka perbaguslah jiwa kalian dengannya.” [HR. ibnumajah No.3117].',
      },
      {
        'arabic':
            'حَدَّثَنَا مُحَمَّدُ بْنُ خَلَفٍ الْعَسْقَلَانِيُّ حَدَّثَنَا آدَمُ بْنُ أَبِي إِيَاسٍ حَدَّثَنَا سَلَّامُ بْنُ مِسْكِينٍ حَدَّثَنَا عَائِذُ اللَّهِ عَنْ أَبِي دَاوُدَ عَنْ زَيْدِ بْنِ أَرْقَمَ قَالَ قَالَ أَصْحَابُ رَسُولِ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ يَا رَسُولَ اللَّهِ مَا هَذِهِ الْأَضَاحِيُّ قَالَ سُنَّةُ أَبِيكُمْ إِبْرَاهِيمَ قَالُوا فَمَا لَنَا فِيهَا يَا رَسُولَ اللَّهِ قَالَ بِكُلِّ شَعَرَةٍ حَسَنَةٌ قَالُوا فَالصُّوفُ يَا رَسُولَ اللَّهِ قَالَ بِكُلِّ شَعَرَةٍ مِنْ الصُّوفِ حَسَنَةٌ',
        'indo':
            '“Berkata kepada kami Muhammad bin Khalaf Al ‘Asqalani, berkata kepada kami Adam bin Abi Iyas, berkata kepada kami Sullam bin Miskin, berkata kepada kami ‘Aidzullah, dari Abu Daud, dari Zaid bin Arqam, dia berkata: berkata para sahabat Rasulullah Shallallahu ‘Alaihi wa Sallam: “Wahai Rasulullah, hewan qurban apa ini?” Beliau bersabda: “Ini adalah sunah bapak kalian, Ibrahim.” Mereka berkata: “Lalu pada hewan tersebut, kami dapat apa wahai Rasulullah?” Beliau bersabda: “Pada setiap bulu ada satu kebaikan.” Mereka berkata: “Bagaimana dengan shuf (bulu domba)?” Beliau bersabda: “Pada setiap bulu shuf ada satu kebaikan.” [HR. Riwayat Ibnu Majah dalam Sunannya No. 3127]',
      },
      {
        'arabic':
            'أَرْبَعٌ لَا يُضَحَّى بِهِنَّ: الْعَوْرَاءُ الْبَيِّنُ عَوَرُهَا، وَالْمَرِيضَةُ الْبَيِّنُ مَرَضُهَا، وَالْعَرْجَاءُ الْبَيِّنُ ظَلَعُهَا، وَالْعَجْفَاءُ الَّتِي لَا يُنْقِيْ',
        'indo':
            '“Ada empat macam yang tidak boleh dijadikan qurban. Yaitu, hewan yang rabun dan jelas kerabunannya, hewan yang sakit dan jelas sakitnya, hewan yang pincang dan jelas pincangnya, dan hewan yang kurus tidak berdaging”. (HR. Ibnu Hibban; Shahih)',
      },
      {
        'arabic':
            'عَنْ أَنَسِ بنِ مَالِكٍ  { أَنَّ النَّبِيَّ صلى الله عليه وسلم كَانَ يُضَحِّي بِكَبْشَيْنِ أَمْلَحَيْنِ, أَقْرَنَيْنِ, وَيُسَمِّي, وَيُكَبِّرُ, وَيَضَعُ رِجْلَهُ عَلَى صِفَاحِهِمَا. وَفِي لَفْظٍ: ذَبَحَهُمَا بِيَدِهِ }  مُتَّفَقٌ عَلَيْه ِ وَفِي لَفْظِ: { سَمِينَيْنِ }    وَلِأَبِي عَوَانَةَ فِي "صَحِيحِهِ" : { ثَمِينَيْنِ }  . بِالْمُثَلَّثَةِ بَدَلَ السِّين وَفِي لَفْظٍ لِمُسْلِمٍ, وَيَقُولُ: { بِسْمِ اللَّهِ. وَاللَّهُ أَكْبَرُ }',
        'indo':
            '”Biasanya Nabi  usually berkurban dengan dua ekor kambing kibas putih yang bagus dan bertanduk.  Beliau menyebut nama Allah dan bertakbir,  dan beliau meletakkan kakinya di samping binatang itu.”  Dalam suatu lafadz: ”beliau menyembelih dengan tangan beliau sendiri.”  Dalam suatu lafadz: ”dua ekor kambing gemuk.”  Menurut Abu Awanah: ”dua ekor kambing yang mahal.”  dengan menggunakan huruf tsa,  bukan siin.  Dalam lafadz Muslim: ”Beliau membaca Bismillaahi walloohu akbar.”',
      },
      {
        'arabic':
            'وَعَنْ عَلِيِّ بْنِ أَبِي طَالِبٍ قَالَ: { أَمَرَنِي النَّبِيُّ صلى الله عليه وسلم أَنَّ أَقْوَمَ عَلَى بُدْنِهِ, وَأَنْ أُقَسِّمَ لُحُومَهَا وَجُلُودَهَا وَجِلالَهَا عَلَى الْمَسَاكِينِ, وَلا أُعْطِيَ فِي جِزَارَتِهَا مِنْهَا شَيْئاً } مُتَّفَقٌ عَلَيْه ِ',
        'indo':
            'Hadits dari Ali bin Abu Thalib,\n\n”Rasulullah memerintahkan kepadaku untuk mengurusi hewan kurbannya, membagi-bagikan dagingnya, kulit dan pakaiannya kepada orang-orang miskin, dan aku tidak diperbolehkan memberi sesuatu apapun dari hewan kurban (sebagai upah) kepada penyembelihnya.”',
      },
      {
        'arabic':
            'إِنَّ أَوَّلَ مَا نَبْدَأُ بِهِ فِيْ يَوْمِنَا هَذَا أَنْ نُصَلِّيَ ثُمَّ نَرْجِعَ فَنَنْحَرَ',
        'indo':
            '“Sesungguhnya yang pertama kali kita lakukan pada hari ini adalah menunaikan shalat (idul Adha), kemudian pulang lalu menyembelih hewan kurban”. (HR. Bukhari)',
      },
      {
        'arabic':
            'عَنْ جَابِرٍ قَالَ: قَالَ رَسُوْلُ اللهِ ص لاَ تَذْبَحُوْا اِلاَّ مُسِنَّةً اِلاَّ اَنْ يَعْسُرَ عَلَيْكُمْ فَتَذْبَحُوْا جَذَعَةً مِنَ الضَّأْنِ. مسلم 3: 1555',
        'indo':
            'Dari Jabir, ia berkata : Rasulullah SAW bersabda, "Janganlah kamu menyembelih untuk qurban melainkan yang Musinnah (telah berganti gigi) kecuali jika sukar didapati, maka boleh kamu menyembelih jadza\'ah (yang berumur 1 tahun) dari kambing”. [HR. Muslim]',
      },
      {
        'arabic':
            'إِذَا رَأَيْتُمْ هِلَالَ ذِي الْحِجَّةِ وَأَرَادَ أَحَدُكُمْ أَنْ يُضَحِّيَ فَلْيُمْسِكْ عَنْ شَعْرِهِ وَأَظْفَارِهِ',
        'indo':
            '“Apa bila kalian telah meru’yah (melihat) bulan sabit Zulhijah, dan seseorang diantara kalian hendak memotong hewan kurban, maka hendaklah ia menahan diri untuk tidak memotong rambut dan kukunya”. (HR. Muslim)',
      },
      {
        'arabic': 'كُلُّ أَيَّامِ التَّشْرِيقِ ذَبْحٌ',
        'indo':
            '“Seluruh hari-hari tasyriq adalah waktu menyembelih hewan qurban”. (HR. Ahmad; Shahih)',
      },
      {
        'arabic':
            'لَا تَذْبَحُوا إِلَّا مُسِنَّةً إِلَّا أَنْ يَعْسُرَ عَلَيْكُمْ فَتَذْبَحُوا جَذَعَةً مِنَ الضَّأْنِ',
        'indo':
            '“Janganlah kalian memotong hewan qrban kecuali yang telah cukup umur. Kecuali jika kalian kesulitan mendapatkannya, maka potonglah domba muda” (HR. Muslim).',
      },
      {
        'arabic':
            'وَعَنْ جُنْدُبِ بْنِ سُفْيَانَ  قَالَ: { شَهِدْتُ الأَضْحَى مَعَ رَسُولِ اللَّهِ صلى الله عليه وسلم فَلَمَّا قَضَى صَلاتَهُ بِالنَّاسِ, نَظَرَ إِلَى غَنَمٍ قَدْ ذُبِحَتْ, فَقَالَ: "مَنْ ذَبَحَ قَبْلَ الصَّلاةِ فَلْيَذْبَحْ شَاةً مَكَانَهَا, وَمَنْ لَمْ يَكُن|ِ ذَبَحَ فَلْيَذْبَحْ عَلَى اسْمِ اللَّهِ" }  مُتَّفَقٌ عَلَيْه ِ',
        'indo':
            '”Barangsiapa menyembelih sebelum shalat,  hendaknya ia menyembelih seekor kambing lagi sebagai gantinya.  Barangsiapa belum menyembelih,  hendaknya ia menyembelih dengan nama Allah.”',
      },
      {
        'arabic':
            'عَنْ قَتَادَةَ بْنِ النُّعْمَانِ اَنَّ النَّبِيَّ ص قَالَ: لاَ تَبِيْعُوْا لُحُوْمَ اْلهَدْيِ وَ اْلاَضَاحِى فَكُلُوْا وَ تَصَدَّقُوْا وَ اسْتَمْتِعُوْا بِجُلُوْدِهَا وَ لاَ تَبِيْعُوْهَا، وَ اِنْ اُطْعِمْتُمْ مِنْ لَحْمِهَا فَكُلُوْا اِنْ شِئْتُمْ. احمد 5: 478، رقم: 16211s',
        'indo':
            'Dari Qatadah bin Nu’man, bahwasanya Nabi SAW bersabda, “Janganlah kalian menjual daging-daging Hadyi (denda hajji) dan daging udlhiyah (qurban), makanlah dan sedeqahkanlah dan manfaatkanlah kulitnya, dan janganlah kalian menjualnya. Dan apabila kalian diberi dagingnya, maka makanlah jika kalian mau”. [HR. Ahmad]',
      },
      {
        'arabic':
            'عَنْ أُمِّ سَلَمَةَ؛ قَالَتْ: قَالَ رَسُولُ اللهِ صلى الله عليه وسلم ((مَنْ رَأَى مِنْكُمْ هِلاَلَ ذِي الْحِجَّةِ، فَأَرَادَ أَنْ يُضَحِّيَ، فَلاَ يَقْرَبَنَّ لَهُ شَعَراً وَلاَ ظُفْراً))',
        'indo':
            '“Barangsiapa di antara kalian mendapati awal bulan Dzulhijjah,  lalu dia ingin berkurban,  maka janganlah dia mendekati (sengaja menyisihkan) rambut dan kukunya.”',
      },
      {
        'arabic':
            'وَعَنْ جَابِرٍ قَالَ: قَالَ رَسُولُ اللَّهِ صلى الله عليه وسلم { "لا تَذْبَحُوا إِلاَّ مُسِنَّةً, إِلاَّ أَنْ يَعْسُرَ عَلَيْكُمْ فَتَذْبَحُوا جَذَعَةً مِنَ الضَّأْنِ" } رَوَاهُ مُسْلِم',
        'indo':
            '”Janganlah kalian menyembelih hewan qurban kecuali yang sudah berumur setahun. Apabila kamu sulit mendapatkannya, maka sembelihlah kambing yang berumur enam bulan hingga setahun.”',
      },
      {
        'arabic':
            'وَعَنْ عَلِيِّ بْنِ أَبِي طَالِبٍ قَالَ: { أَمَرَنِي النَّبِيُ'
            ' صلى الله عليه وسلم أَنَّ أَقْوَمَ عَلَى بُدْنِهِ, وَأَنْ أُقَسِّمَ لُحُومَهَا وَجُلُودَهَا وَجِلالَهَا عَلَى الْمَسَاكِينِ, وَلا أُعْطِيَ فِي جِزَارَتِهَا مِنْهَا شَيْئاً } مُتَّفَقٌ عَلَيْه ِ',
        'indo':
            '”Rasulullah memerintahkan kepadaku untuk mengurusi hewan qurbannya, membagi-bagikan dagingnya, kulit dan pakaiannya kepada orang-orang miskin, dan aku tidak diperbolehkan memberi sesuatu apapun dari hewan qurban (sebagai upah) kepada penyembelihnya.”',
      },
      {
        'arabic':
            'وَعَنْ جَابِرِ بنِ عَبْدِ اللَّهِ رَضِيَ اللَّهُ عَنْهُمَا قَالَ: { نَحَرْنَا مَعَ النَّبِيِّ صلى الله عليه وسلم عَامَ الْحُدَيْبِيَةِ: الْبَدَنَةَ عَنْ سَبْعَةٍ, وَالْبَقَرَةَ عَنْ سَبْعَةٍ } رَوَاهُ مُسْلِم',
        'indo':
            '”Kami pernah menyembelih bersama Rasulullah pada tahun Hudaibiyah dengan seekor unta untuk tujuh orang dan seekor sapi untuk tujuh orang.”',
      },
      {
        'arabic':
            'وَلَهُ: مِنْ حَدِيثِ عَائِشَةَ رَضِيَ اللَّهُ عَنْهَا; { أَمَرَ بِكَبْشٍ أَقْرَنَ, يَطَأُ فِي Sَوَادٍ, وَيَبْرُكُ فِي سَوَادٍ, وَيَنْظُرُ فِي سَوَادٍ; لِيُضَحِّيَ بِهِ, فَقَالَ: "اِشْحَذِي الْمُدْيَةَ" , ثُمَّ أَخَذَهَا, فَأَضْجَعَهُ, ثُمَّ ذَبَحَهُ, وَقَالَ: "بِسْمِ اللَّهِ, اَللَّهُمَّ تَقَبَّلْ مِنْ مُحَمَّدٍ وَآلِ مُحَمَّدٍ, وَمِنْ أُمّةِ مُحَمَّدٍ"',
        'indo':
            '”Beliau pernah memerintahkan untuk dibawakan dua ekor kambing kibas bertanduk yang kaki, perut dan sekitar matanya berwarna hitam.  Maka dibawakanlah kambing tersebut kepada beliau untuk dijadikan kurban.  Beliaupun berkata kepada Aisyah, ’Wahai Aisyah, ambilkan pisau.’  Kemudian beliau mengambilnya,  membaringkannya dan menyembelihnya seraya berdoa: ’Bismillaah,  alloohumma taqobbal min muhammadin wa’aali muhammad,  wa min ummati muhammad.”',
      },
      {
        'arabic':
            'أَنَّ عَائِشَةَ زَوْجَ النَّبِيِّ صلى الله عليه وسلم قَالَتْ: كَانَ رَسُولُ اللهِ صلى الله عليه وسلم يُهْدِى مِنَ الْمَدِيَنةِ. فَأَفْتِلُ قَلاَئِدَ هَدْيِهِ. ثُمَّ لاَ يَجْتَنِبُ شَيْئاً مِمَّا يَجْتَنِبُ الْمُحْرِمُ',
        'indo':
            'Rasulullah membawa hewan kurban dari Madinah,  lalu beliau menganyam gantungan hewan kurbannya.  Beliau tidak menjauhi sesuatu dari hal-hal yang harus dijauhi oleh orang yang berihram.”',
      },
      {
        'arabic':
            'عَنْ زَيْدِ بْنِ أَرْقَمَ قَالَ قُلْتُ أَوْ قَالُوا يَا رَسُولَ اللَّهِ مَا هَذِهِ الْأَضَاحِيُّ قَالَ سُنَّةُ أَبِيكُمْ إِبْرَاهِيمَ قَالُوا مَا لَنَا مِنْهَا قَالَ بِكُلِّ شَعَرَةٍ حَسَنَةٌ قَالُوا يَا رَسُولَ اللَّهِ فَالصُّوفُ قَالَ بِكُلِّ شَعَرَةٍ مِنْ الصُّوفِ حَسَنَةٌ',
        'indo':
            'Dari Zaid bin Arqam ia bekata; Saya berkata atau mereka bertanya, “Wahai Rasulullah, untuk apakah hewan kurban ini?” beliau menjawab: “Yaitu sunnah bapak kalian Ibrahim.” Mereka bertanya lagi, “Lalu kebaikan apakah yang akan kami peroleh darinya?” beliau menjawab: “Setiap helai dari bulunya adalah kebaikan.” Mereka bertanya lagi, “Bagaimana dengan domba?” beliau menjawab: “Setiap helai bulu domba itu adalah bernilai satu kebaikan.” (HR. Ahmad, Ibnu Majah, Al-Hakim,)',
      },
      {
        'arabic':
            'عَنْ جَابِرِ بْنِ عَبْدِ اللهِ قَالَ: شَهِدْتُ مَعَ رَسُوْلِ اللهِ ص اْلاَضْحَى بِاْلمُصَلَّى. فَلَمَّا قَضَى خُطْبَتَهُ نَزَلَ مِنْ مِنْبَرِهِ وَ اُتِيَ بِكَبْشٍ فَذَبَحَهُ رَسُوْلُ اللهِ ص بِيَدِهِ وَ قَالَ: بِسْمِ اللهِ وَ اللهُ اَكْبَرُ، هذَا عَنّى وَ عَمَّنْ لَمْ يُضَحّ مِنْ اُمَّتِى. ابو داود 3: 99، رقم:2810',
        'indo':
            'Dari Jabir bin Abdullah, ia berkata : Aku shalat ‘Iedul Adlha bersama Rasulullah SAW di mushalla. Setelah beliau selesai berkhutbah, lalu turun dari mimbar, maka didatangkan seekor kibasy, lalu beliau menyembelihnya dengan tangan beliau, dan beliau mengucapkan, “Bismillaahi walloohu Akbar, haadzaa ‘annii wa ‘amman lam yudlohhi min ummatii (Dengan nama Allah dan Allah Maha Besar. (Qurban) ini dariku dan dari ummatku yang tidak berqurban)”. [HR. Abu Dawud juz 3, hal. 99, no. 2810]',
      },
      {
        'arabic':
            'عَنْ جَابِرِ بْنِ عَبْدِ اللَّهِ قَالَ شَهِدْتُ مَعَ رَسُولِ اللَّهِ -صلى الله عليه وسلم- الأَضْحَى بِالْمُصَلَّى فَلَمَّا قَضَى خُطْبَتَهُ نَزَلَ مِنْ مِنْبَرِهِ وَأُتِىَ بِكَبْشٍ فَذَبَحَهُ رَسُولُ اللَّهِ -صلى الله عليه وسلم- بِيَدِهِ وَقَالَ: (( بِسْمِ اللَّهِ وَاللَّهُ أَكْبَرُ هَذَا عَنِّى وَعَمَّنْ لَمْ يُضَحِّ مِنْ أُمَّتِى )).',
        'indo':
            '“Diriwayatkan dari Jabir bin ‘Abdillah radhiallahu ‘anhu bahwasanya dia berkata, “Saya menghadiri shalat idul-Adha bersama Rasulullah shallallahu ‘alaihi wa sallam di mushalla (tanah lapang). Setelah beliau berkhutbah, beliau turun dari mimbarnya dan didatangkan kepadanya seekor kambing. Kemudian Rasulullah shallallahu ‘alaihi wa sallam menyembelihnya dengan tangannya, sambil mengatakan: Dengan nama Allah. Allah Maha Besar. Kambing ini dariku dan dari orang-orang yang belum menyembelih di kalangan umatku”',
      },
      {
        'arabic':
            '(( مَنْ وَجَدَ سَعَةً فَلَمْ يُضَحِّ فَلا يَقْرَبَنَّ مُصَلاَّنَا. ))',
        'indo':
            '“Barang siapa mendapatkan kelapangan tetapi tidak berqurban, maka janganlah dia mendekati tempat shalat kami.',
      },
      {
        'arabic':
            'عَنْ شَدَّادِ بْنِ اَوْسٍ قَالَ: ثِنْتَانِ حَفِظْتُهُمَا مِنْ رَسُوْلِ اللهِ ص. قَالَ: اِنَّ اللهَ كَتَبَ اْلاِحْسَانَ عَلَى كُلّ شَيْءٍ. فَاِذَا قَتَلْتُمْ فَاَحْسِنُوا اْلقِتْلَةَ وَ اِذَا ذَبَحْتُمْ فَاَحْسِنُوا الذَّبْحَ وَ لْيُحِدَّ اَحَدُكُمْ شَفْرَتَهُ فَلْيُرِحْ ذَبِيْحَتَهُ. مسلم 3: 1548',
        'indo':
            'Dari Syaddad bin Aus, ia berkata : Dua hal yang aku hafal dari Rasulullah SAW, beliau bersabda, “Sesungguhnya Allah mewajibkan berbuat baik pada segala sesuatu. Maka apabila kalian membunuh, bunuhlah dengan baik. Dan apabila kalian menyembelih, sembelihlah dengan baik, hendaklah salah seorang diantara kalian menajamkan pisaunya, dan mudahkanlah penyembelihannya”. [HR. Muslim juz 3, hal. 1548]',
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
          'Hadist Tentang Qurban',
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
