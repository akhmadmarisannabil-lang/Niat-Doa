import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';

class ZinaPage extends StatelessWidget {
  const ZinaPage({super.key});

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
            'عَنْ عَبْدِ اللهِ قَالَ: قَالَ رَسُوْلُ اللهِ ص: لاَ يَحِلُّ دَمُ امْرِئٍ مُسْلِمٍ يَشْهَدُ اَنْ لاَ اِلهَ اِلاَّ اللهُ وَ اَنّى رَسُوْلُ اللهِ اِلاَّ بِاِحْدَى ثَلاَثٍ. الثَّيّبُ الزَّانِ وَ النَّفْسُ بِالنَّفْسِ وَ التَّارِكُ لِدِيْنِهِ اْلمُفَارِقُ لِلْجَمَاعَةِ . مسلم 3: 1302',
        'indo':
            'Dari Abdullah (bin Mas’ud) ia berkata, Rasulullah SAW bersabda, “Tidak halal darah orang Islam yang bersaksi bahwa tiada Tuhan selain Allah dan bersaksi bahwa aku utusan Allah, kecuali dengan salah satu dari tiga sebab : 1. Orang yang sudah menikah melakukan zina, 2. Karena membunuh orang, dan 3. Orang yang murtad meninggalkan agamanya, memisahkan dari jamaah kaum muslimin”. [HR. Muslim juz 3, hal. 1302]',
      },
      {
        'arabic':
            'إِنَّ فَتًى شَابًّا أَتَى النَّبِيَّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ فَقَالَ يَا رَسُولَ اللَّهِ ائْذَنْ لِي بِالزِّنَا فَأَقْبَلَ الْقَوْمُ عَلَيْهِ فَزَجَرُوهُ قَالُوا مَهْ مَهْ فَقَالَ ادْنُهْ فَدَنَا مِنْهُ قَرِيبًا قَالَ فَجَلَسَ قَالَ أَتُحِبُّهُ لِأُمِّكَ قَالَ لَا وَاللَّهِ جَعَلَنِي اللَّهُ فِدَاءَكَ قَالَ وَلَا النَّاسُ يُحِبُّونَهُ لِأُمَّهَاتِهِمْ قَالَ أَفَتُحِبُّهُ لِابْنَتِكَ قَالَ لَا وَاللَّهِ يَا رَسُولَ اللَّهِ جَعَلَنِي اللَّهُ فِدَاءَكَ قَالَ وَلَا النَّاسُ يُحِبُّونَهُ لِبَنَاتِهِمْ قَالَ أَفَتُحِبُّهُ لِأُخْتِكَ قَالَ لَا وَاللَّهِ جَعَلَنِي اللَّهُ فِدَاءَكَ قَالَ وَلَا النَّاسُ يُحِبُّونَهُ لِأَخَوَاتِهِمْ قَالَ أَفَتُحِبُّهُ لِعَمَّتِكَ قَالَ لَا وَاللَّهِ جَعَلَنِي اللَّهُ فِدَاءَكَ قَالَ وَلَا النَّاسُ يُحِبُّونَهُ لِعَمَّاتِهِمْ قَالَ أَفَتُحِبُّهُ لِخَالَتِكَ قَالَ لَا وَاللَّهِ جَعَلَنِي اللَّهُ فِدَاءَكَ قَالَ وَلَا النَّاسُ يُحِبُّونَهُ لِخَالَاتِهِمْ قَالَ فَوَضَعَ يَدَهُ عَلَيْهِ وَقَالَ اللَّهُمَّ اغْفِرْ ذَنْبَهُ وَطَهِّرْ قَلْبَهُ وَحَصِّنْ فَرْجَهُ فَلَمْ يَكُنْ بَعْدُ ذَلِكَ الْفَتَى يَلْتَفِتُ إِلَى شَيْءٍ',
        'indo':
            'Dari Abu Umamah: Sesungguhnya seorang pemuda mendatangi Nabi Saw lalu berkata; Wahai Rasulullah! Izinkan aku untuk berzina. Orang-orang mendatanginya lalu melarangnya, mereka berkata; diamlah!. Rasulullah Saw bersabda; "Mendekatlah." Ia mendekat lalu duduk kemudian Rasulullah Saw bersabda; "Apa kau menyukainya (orang lain) berzina dengan ibumu?" pemuda itu menjawab; Tidak, demi Allah wahai Rasulullah, semoga Allah menjadikanku sebagai penebus tuan. Nabi saw bersabda; Orang-orang juga tidak menyukainya berzina dengan ibu-ibu mereka." Rasulullah Saw bersabda; "Apa kau menyukainya berzina dengan putrimu?" Tidak, demi Allah wahai Rasulullah semoga Allah menjadikanku sebagai penebus Tuan. Nabi saw bersabda; Orang-orang juga tidak menyukai berzina dengan putri-putri mereka." … Kemudian Rasulullah Saw meletakkan tangan beliau pada pemuda itu dan berdoa: "Ya Allah! Ampunilah dosanya, bersihkan hatinya, jagalah kemaluannya." Setelahnya pemuda itu tidak pernah melirik apa pun dan zina menjadi hal yang paling ia benci. [HR. Ahmad, No. 21185]',
      },
      {
        'arabic':
            'اللَّهُمَّ اغْفِرْ ذَنْبَهُ وَطَهِّرْ قَلْبَهُ وَحَصِّنْ فَرْجَهُ',
        'indo':
            '"Ya Allah! Ampunilah dosanya, bersihkan hatinya, jagalah kemaluannya."',
      },
      {
        'arabic':
            'كُتِبَ عَلَى ابْنِ آدَمَ نَصِيبُهُ مِنْ الزِّنَا مُدْرِكٌ ذَلِكَ لاَ مَحَالَةَ فَالْعَيْنَانِ زِنَاهُمَا النَّظَرُ وَاْلأُذُنَانِ زِنَاهُمَا الاِسْتِمَاعُ وَاللِّسَانُ زِنَاهُ الْكَلاَمُ وَالْيَدُ زِنَاهَا الْبَطْشُ وَالرِّجْلُ زِنَاهَا الْخُطَا وَالْقَلْبُ يَهْوَى وَيَتَمَنَّى وَيُصَدِّقُ ذَلِكَ الْفَرْجُ وَيُكَذِّبُهُ',
        'indo':
            '“Ditetapkan atas anak cucu Adam bagiannya dari zina akan diperoleh hal itu tidak mustahil. Kedua mata zinanya adalah memandang (yang haram). Kedua telinga zinanya adalah mendengarkan (yang haram). Lisan zinanya adalah berbicara (yang haram). Tangan zinanya adalah memegang (yang haram). Kaki zinanya adalah melangkah (kepada yang diharamkan). Sementara hati berkeinginan dan berangan-angan, sedang kemaluan yang membenarkan semua itu atau mendustakannya.” (HR. Muslim no. 2657)',
      },
      {
        'arabic':
            'عَنْ عَائِشَةَ رض قَالَتْ: قَالَ رَسُوْلُ اللهِ ص: لاَ يَحِلُّ دَمُ امْرِئٍ مُسْلِمٍ يَشْهَدُ اَنْ لاَ اِلهَ اِلاَّ اللهُ وَ اَنَّ مُحَمَّدًا رَسُوْلُ اللهِ اِلاَّ بِاِحْدَى ثَلاَثٍ: رَجُلٌ زَنَى بَعْدَ اِحْصَانٍ فَاِنَّهُ يُرْجَمُ، وَ رَجُلٌ خَرَجَ مُحَارِبًا ِللهِ وَ رَسُوْلِهِ فَاِنَّهُ يُقْتَلُ اَوْ يُصْلَبُ اَوْ يُنْفَى مِنَ اْلاَرْضِ، اَوْ يَقْتُلُ نَفْسًا فَيُقْتَلُ بِهَا . ابو داود 4: 126، رقم: 4353',
        'indo':
            'Dari Aisyah RA, ia berkata : Rasulullah SAW bersabda, “Tidak halal darah orang Islam yang bersaksi bahwa Tiada Tuhan selain Allah dan bersaksi bahwa Muhammad utusan Allah, kecuali salah satu dari tiga sebab : 1. Orang yang berzina padahal ia sudah menikah, maka ia harus dirajam, 2. Orang yang murtad keluar dari agamanya dan memerangi Allah dan Rasul-Nya, maka orang itu dibunuh, atau disalib, atau dibuang dari negerinya, dan 3. Atau karena dia membunuh seseorang, maka dia dibalas bunuh”. [HR. Abu Dawud juz 4, hal. 126, no. 4353]',
      },
      {
        'arabic':
            'فَانْطَلَقْنَا إلَى ثَقَبٍ مِثْلَ التَّنُّورِ أعْلاَهُ ضَيِّقٌ وَأسْفَلَهُ وَاسِعٌ يُتَوَقَّدُ نَارًا ، فَإذَا اقْتَرَبَ ارْتَفَعُوا حَتَّى كَادَ أنْ يَخْرُجُوا فَإذَا خَمِدَتْ رَجَعُوا فِيهَا ، وَفِيهَا رِجَالٌ وَنِسَاءٌ عُرَاةٌ فَقُلْتُ مَنْ هَؤُلاَءِ ؟ قَالاَ لِي : هَؤُلاَءِ هُمُ الزُّنَاةُ وَالزَّوَانِي)) وَجَاءَ فِي الحَدِيثِ أيضًا : ((أنَّ مَنْ زَنَى بِامْرَأَةٍ كَانَ عَلَيهِ وَعَلَيْهَا فِي القَبْرِ نِصْفَ عَذَابِ هَذِهِ الأُمَّةِ',
        'indo':
            '“Maka kamipun menuju ke suatu lobang, seperti tungku yang atasannya sempit dan bawahannya luas lalu dinyalakan api. Bila mendekat maka mereka akan terangkat hingga hampir saja mereka terlempar keluar, dan bila apinya redup maka mereka kembali turun. Di dalamnya terdapat golongan laki-laki dan perempuan yang telanjang, maka saya bertanya: “Siapa mereka? Keduanya menjawab: “Mereka itu adalah tukang zina laki-laki dan perempuan.” Dan di dalam hadits pula terdapat: “Sesungguhnya seorang laki-aki yang berzina dengan seorang wanita, maka bagi keduanya di dalam kubur akan disiksa seperdua siksaan umat ini.”',
      },
      {
        'arabic':
            'عَنْ اَبِى هُرَيْرَةَ اَنَّ رَسُوْلُ اللهِ ص قَالَ: لاَ يَزْنِى الزَّانِى حِيْنَ يَزْنِى وَ هُوَ مُؤْمِنٌ . وَ لاَ يَسْرِقُ السَّارِقُ حِيْنَ يَسْرِقُ وَ هُوَ مُؤْمِنٌ . وَ لاَ يَشْرَبُ اْلخَمْرَ حِيْنَ يَشْرَبُهَا وَ هُوَ مُؤْمِنٌ . مسلم 1: 76',
        'indo':
            'Dari Abu Hurairah RA, bahwasanya Rasulullah SAW bersabda, “Tidaklah berzina seorang yang berzina ketika dia berzina itu dalam keadaan iman. Dan tidaklah mencuri seorang pencuri ketika mencuri itu dalam keadaan iman. Dan tidak pula meminum khamr (seorang peminum khamr) ketika meminumnya itu dalam keadaan iman. [HR. Muslim juz 1, hal. 76].',
      },
      {
        'arabic':
            'وَعَنْ عُبَادَةَ بْنِ اَلصَّامِتِ رضي الله عنه قَالَ: قَالَ رَسُولُ اَللَّهِ صلى الله عليه وسلم ( خُذُوا عَنِّي, خُذُوا عَنِّي, فَقَدْ جَعَلَ اَللَّهُ لَهُنَّ سَبِيلاً, اَلْبِكْرُ بِالْبِكْرِ جَلْدُ مِائَةٍ, وَنَفْيُ سَنَةٍ, وَالثَّيِّبُ بِالثَّيِّبِ جَلْدُ مِائَةٍ, وَالرَّجْمُ )  رَوَاهُ مُسْلِم',
        'indo':
            'Dari Ubadah Ibnu al-Shomit bahwa Rasulullah Shallallaahu \'alaihi wa Sallam bersabda: "Ambillah (hukum) dariku. Ambillah (hukum) dariku. Allah telah membuat jalan untuk mereka (para pezina). Jejaka berzina dengan gadis hukumannya seratus cambukan dan diasingkan setahun. Duda berzina dengan janda hukumannya seratus cambukan and dirajam." Riwayat Muslim.',
      },
      {
        'arabic':
            'عَنْ اَبِى هُرَيْرَةَ قَالَ: قَالَ رَسُوْلُ اللهِ ص: اِذَا زَنَى الرَّجُلُ خَرَجَ مِنْهُ اْلاِيْمَانُ . فَكَانَ عَلَيْهِ كَالظُّلَّةِ . فَاِذَا اِنْقَطَعَ رَجَعَ اِلَيْهِ اْلاِيْمَانُ . ابو داود 4: 222، رقم: 4690',
        'indo':
            'Dari Abu Hurairah, ia berkata : Rasulullah SAW bersabda, “Apabila seseorang berzina maka iman keluar darinya. Maka ia wajib menjaga diri (dari berbuat zina), dan apabila dia berhenti (dari berbuat zina) maka iman kembali kepadanya”. [HR. Abu Dawud juz 4, hal. 222, no. 4690]',
      },
      {
        'arabic':
            'عَنْ اَبِى هُرَيْرَةَ قَالَ: قَالَ رَسُوْلُ اللهِ ص: ثَلاَثَةٌ لاَ يُكَلّمُهُمُ اللهُ يَوْمَ اْلقِيَامَةِ وَ لاَ يُزَكّيْهِمْ وَ لاَ يَنْظُرُ اِلَيْهِم| وَ لَهُمْ عَذَابٌ اَلِيْمٌ: شَيْخٌ زَانٍ وَ مَلِكٌ كَذَّابٌ وَ عَائِلٌ مُسْتَكْبِرٌ . مسلم 1: 102',
        'indo':
            'Dari Abu Hurairah ia berkata, Rasulullah SAW bersabda, “Tiga golongan yang Allah tidak mau berbicara dengan mereka pada hari kiamat. Tidak membersihkan mereka, tidak mau melihat kepada mereka, dan bagi mereka siksa yang pedih : 1. Orang tua yang berzina, 2. Raja (pemimpin) yang suka berdusta dan 3. Orang fakir yang sombong”. [HR. Muslim juz 1, hal. 102]',
      },
      {
        'arabic':
            'إذَا صَامَتِ المَرْأَةُ خَمْسَهَا، وَصَامَتْ شَهْرَهَا، وَحَصَنَتْ فَرْجَهَا، وَأطَاعَتْ بَعْلَهَا، دَخَلَتْ مِنْ أيِّ أبْوَابِ الجَنَّةِ شَاءَتْ))',
        'indo':
            '“Bila seorang wanita sholat lima waktu, puasa di bulan Ramadhan, menjaga kemaluannya dan taat kepada suaminya maka ia akan memasuki pintu-pintu surga mana saja yang ia kehendaki.”',
      },
      {
        'arabic':
            'عَنْ اَبِى هُرَيْرَةَ اَنَّ رَسُوْلُ اللهِ ص قَالَ: اَرْبَعَةٌ يُبْغِضُهُمُ اللهُ: اْلبَيَّاعُ اْلحَلاَّفُ وَ اْلفَقِيْرُ اْلمُخْتَالُ وَ الشَّيْخُ الزَّانِى وَ اْلاِمَامُ اْلجَائِرُ . ابن حبان فى صحيحه 12: 368، 5558',
        'indo':
            'Dari Abu Hurairah, bahwasanya Rasulullah SAW bersabda, “Empat golongan yang Allah benci kepada mereka : 1. Pedagang yang banyak bersumpah, 2. Orang fakir yang sombong, 3. Orang tua yang berzina, dan 4. Pemimpin yang dhalim”. [HR. Ibnu Hibban di dalam Shahihnya, juz 12, hal. 368, no. 5558].',
      },
      {
        'arabic':
            'عَنِ ابْنِ عَبَّاسٍ قَالَ: نَهَى رَسُوْلُ اللهِ ص اَنْ تُشْتَرَى الثَّمْرَةُ حَتىَّ تُطْعَمَ و قَالَ: اِذَا ظَهَرَ الزّنَا وَ الرّبَا فِى قَرْيَةٍ فَقَدْ اَحَلُّوْا بِاَنْفُسِهِمْ عَذَابَ اللهِ . الحاكم فى المستدرك وقال صحيح الاسناد 2: 43، رقم: 2261',
        'indo':
            'Dari Ibnu ‘Abbas, ia berkata : Rasulullah SAW melarang menjual buah sehingga bisa dimakan, dan beliau bersabda, “Apabila zina dan riba sudah merajalela di suatu negeri, berarti mereka telah menghalalkan jatuhnya siksa Allah pada diri mereka sendiri”. [HR. Hakim, dalam Al-Mustadrak, ia berkata shahih sanadnya juz 2, hal. 43, no 2261].',
      },
      {
        'arabic': 'إذا ظهر الزنا و الربا في قرية فقد أحلوا بأنفسهم عذاب الله',
        'indo':
            'Jika telah nampak dengan jelas zina dan riba dalam suatu kota, maka sesungguhnya mereka telah menghalalkan adzab Allah atas mereka',
      },
      {
        'arabic':
            'لاَ يَخْلُوَنَّ رَجُلٌ بِامْرَأَةٍ إِلاَّ كَانَ ثَالِثَهُمَا الشَّيْطَانُ',
        'indo':
            '“Tidaklah seorang pria berduaan dengan seorang wanita kecuali yang ketiganya adalah setan.” (HR. At-Tirmidzi dan Ahmad)',
      },
      {
        'arabic':
            'تُفْتَحُ أبْوَابُ السَّمَاءِ نِصْفَ اللَّيْلِ فَيُنَادِي مُنَادٍ : هَلْ مِنْ دَاعٍ فَيُسْتَجَابُ لَهُ ؟ هَلْ مِنْ سَائِلٍ فَيُعْطَى ؟ هَلْ مِنْ مَكْرُوبٍ فَيُفَرَّجُ عَنْهُ؟ فَلاَ يَبْقَى مُسْلِمٌ يَدْعُو بِدَعْوَةٍ إلاَّ اسْتَجَابَ اللهُ لَهُ إلاَّ زَانِيَةً تَسْعَى بِفَرْجِهَا))',
        'indo':
            '“Pintu-pintu surga akan dibuka pada pertengahan malam lalu, lalu ada yang menyeru: “Adakah orang yang memohon lalu permohonannya dikabulkan? Adakah orang yang meminta lalu permintaannya dipenuhi? Adakah orang yang tertimpa sesuatu yang jelek lalu dibebaskan darinya? Maka tidak ada seorang muslimpun yang memohon dengan suatu permohonan kecuali dikabulkan oleh Allah, kecuali wanita penzina yang menjual kehormatannya.” [H.R. Ahmad dan Tabarani dengan sanad hasan]',
      },
      {
        'arabic':
            'لأَنْ يَطْعَنَ فيِ رَأْسِ رَجُلٍ بِمِخْيَطٍ مِنْ حَدِيدٍ خَيْرٌ مِنْ أَنْ يَمَسَّ امْرَأَةً لاَ تَحِلُّ لَهُ',
        'indo':
            '“Seorang ditusuk kepalanya dengan jarum dari besi adalah lebih baik ketimbang menyentuh wanita yang tidak halal baginya.” (HR. Ath-Thabarani, no. 16880, 16881)',
      },
      {
        'arabic':
            'وَعَنْ أَبِيْ هُرَيْرَةَ قَالَ : جَاءَ الآَسْلَمِيُّ أِلَى رَسُوْلِ آللهِ صم ، فَشَهِدَ عَلَى نَفْسِهِ أَنَّهُ أَصَابَ آمْرَأَةً حَرَامًا أَرْبَعَ مَرَّتٍ ، كُلُّ ذَلِكَ يُعْرِضُ عَنْهُ ، فَأَقْبَلَ عَلَيْهِ فِيْ آلْخَامِسَةِ فَقَالَ : أَنِكْتَهَا؟ قالَ : نَعَمْ . قَالَ : كَمَا يَغِيْبُ آلمِرْوَدُ فِيْ المكْحَلَةِ . وَالرَّشَاءُنِيْ البِؤرِ ؟ قَالَ : نَعَمْ ، قالَ : فَهَلْ تَدْرِيْ مَاالْزِّذَا؟ قَالَ : نَعَمْ ، أَتَيْتُ مِنْهَا حَرَامًا ، مَايَأْتِيْ آلْرَّجُلُ مِنِ امْرَأَتِهِ حَلآلاًز قَال: فَمَا تُرِيْدُ بِهَذَ االْقوْلِ ؟ قَالَ: أُرِيْدُ أَنْ تُطَهِّرَنِيْ ، فَأَمَرَبِهِ فَرُجِمَ  (رواه أبو داود والدرقطنيْ)',
        'indo':
            'Dan dari Abu Hurairah, ia berkata, Al-Aslami datang ke tempat Rasulullah saw, lalu ia mengaku telah melakukan perbuatan haram dengan seorang perempuan, empat kali yang setiap kali pengakuannya itu, Nabi berpaling. Lalu untuk yang kelima kalinya, baru Nabi menghadapinya, seraya bertanya, “Apakah engkau berhubungan badan dengan dia?” ia menjawab, Ya. Nabi bertanya lagi, “ Apakah seperti anak celak masuk kedalam tempat celak dan seperti timba masuk ke dalam sumur?” ia menjawab, Ya. Nabi bertanya lagi, tahukah engkau apa zina itu?” Ia menjawab, Ya, saya tahu, yaitu saya melakukan perbuatan yang haram dengan dia seperti seorang suami melakukan perbuatan halal dengan istrinya. Nabi bertanya lagi, “Apakah yang engkau maksud dengan perkataanmu ini? Ia menjawab, saya bermaksud supaya engkau dapat membersihkan aku (sebagai taubat). Begitulah, lalu dia diperintahkan oleh Nabi saw. Untuk dirajam. (HR. Abu Daud dan Daru quthni).',
      },
      {
        'arabic':
            'أَنَّ الْيَهُودَ جَاءُوا إِلَى النَّبِيِّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ بِرَجُلٍ مِنْهُمْ وَامْرَأَةٍ زَنَيَا فَأَمَرَ بِهِمَا فَرُجِمَا قَرِيبًا مِنْ مَوْضِعِ الْجَنَائِزِ عِنْدَ الْمَسْجِدِ',
        'indo':
            '“Orang-orang Yahudi datang kepada Nabi Shallallahu’alaihiwasallam dengan membawa seorang laki-laki dan seorang perempuan yang keduanya berzina. Maka Beliau memerintahkan untuk merajam keduanya di tempat biasa untuk menyolatkan jenazah, disamping Masjid Nabawi". [HR Bukhory]',
      },
      {
        'arabic':
            'عَنِ ا بْنِ عَبَّاسٍ قال : لَمَّا أَتَى مَاعِزُبْنُ مَالِكٍ النَّبِيَّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ قَالَ : لَعَلَّكَ قَبَّلْتَ،أَوْغَمَّزْتَ أَوْنَظَرْتَ؟ قَالَ : لاَيَكْنِيْ،قَالَ : نَعَمْ.فَعِنْدَ ذَلِكَ أَمَرَ بِرَجْمِهِ (رواه احمد والبخاريّ وأبوداود)',
        'indo':
            'Dari Ibnu Abbas, ia berkata, tatkala Ma’iz bin malik datang ke tempat Nabi SAW, Nabi SAW bertanya, “ apakah barangkali engkau hanya mencium, atau mungkin engkau sekedar bermain mata atau mungkin sekedar melihat?” Ma’iz menjawab, Tidak, ya Rasulullah. Lalu nabi SAW bertanya, “apakah engkau berhubungan badan dengan dia?” dengan tidak menggunakan kata sindiran ia menjawab, Ya. Ketika itulah, lalu dia diperintahkan untuk dirajam. (HR. Ahmad, Bukhari dan Abu Daud)',
      },
      {
        'arabic':
            'عَنْ عَبْدِ اللهِ قَالَ: سَأَلْتُ رَسُوْلُ اللهِ ص: اَيُّ الذَّنْبِ اَعْظَمُ عِنْدَ اللهِ؟ قَالَ: اَنْ تَجْعَلَ ِللهِ نِدًّا وَ هُوَ خَلَقَكَ، قَالَ: قُلْتُ لَهُ: اِنَّ ذلِكَ لَعَظِيْمٌ . ثُمَّ اَيٌّ؟ قَالَ: ثُمَّ اَنْ تَقْتُلَ وَلَدَكَ مَخَافَةَ اَنْ يَطْعَمَ مَعَكَ . قَالَ، قُلْتُ: ثُمَّ اَيٌّ؟ قَالَ: ثُمَّ اَنْ تُزَانِيَ حَلِيْلَةَ جَارِكَ . مسلم 1: 90',
        'indo':
            'Dari ‘Abdullah (bin Mas’ud), ia berkata : Saya bertanya kepada Rasulullah SAW, “Dosa apa yang paling besar di sisi Allah?”. Beliau menjawab, “Kamu menjadikan sekutu bagi Allah, padahal Dia yang menciptakanmu”. Saya berkata, “Sungguh yang demikian itu sangat besar dosanya”. Saya bertanya lagi, “Kemudian apa ?”. Beliau menjawab, “Kamu membunuh anakmu karena takut dia ikut makan bersamamu”. Saya bertanya lagi, “Kemudian apa ?”. Beliau menjawab, “Kemudian kamu berzina dengan istri tetanggamu”. [HR. Muslim juz 1, hal. 90]',
      },
      {
        'arabic':
            'يا علي، لا تتبع النظرة النظرةَ، فإن لك الأولى وليس لك الآخرة',
        'indo':
            '"Hai Ali, Janganlah engkau ikuti satu pandangan dengan pandangan lainnya. sesungguhnya bagimu hanya boleh dalam pandangan yang pertama dan tidak yang selanjutnya."',
      },
      {
        'arabic':
            'عَنِ اْلمِقْدَادِ بْنِ اْلاَسْوَدِ قَالَ: قَالَ رَسُوْلُ اللهِ ص ِلاَصْحَابِهِ: مَا تَقُوْلُوْنَ فِى الزّنَا؟ قَالُوْا حَرَّمَهُ اللهُ وَ رَسُوْلُهُ فَهُوَ حَرَامٌ اِلَى يَوْمِ اْلقِيَامَةِ . فَقَالَ رَسُوْلُ اللهِ ص ِلاَصْحَابِهِ: َلاَنْ يَزْنِيَ الرَّجُلُ بِعَشْرِ نِسْوَةٍ اَيْسَرُ عَلَيْهِ مِنْ اَنْ يَزْنِيَ بِامْرَأَةِ جَارِهِ، قَالَ: فَقَالَ: مَا تَقُوْلُوْنَ فِى السَّرِقَةِ؟ قَالُوْا: حَرَّمَهَا اللهُ وَ رَسُوْلُهُ فَهِيَ حَرَامٌ . قَالَ: َلاَنْ يَسْرِقَ الرَّجُلُ مِنْ عَشَرَةِ اَبْيَاتٍ اَيْسَرُ عَلَيْه مِنْ اَنْ يَسْرِقَ مِنْ جَارِهِ . احمد 9: 226، رقم: 23915',
        'indo':
            'Dari Miqdad bin Aswad, ia berkata, Rasulullah SAW bertanya kepada para sahabatnya, “Apa yang kalian katakan tentang zina?”. Para shahabat menjawab, “Zina adalah sesuatu yang Allah dan Rasul-Nya telah mengharamkannya, maka zina itu haram sampai hari kiamat”. Rasulullah SAW bersabda kepada para sahabatnya, “Sungguh seorang laki-laki berzina dengan sepuluh perempuan itu lebih ringan (dosanya) daripada dia berzina dengan seorang istri tetangganya”. Miqdad berkata : Lalu Rasulullah SAW bertanya lagi, “Apa yang kalian katakan tentang mencuri?”. Para shahabat menjawab, “Sesuatu yang Allah dan Rasul-Nya telah mengharamkannya, maka mencuri itu haram”. Beliau bersabda, “Sesungguhnya seorang laki-laki mencuri dari sepuluh rumah (orang lain) itu lebih ringan dosanya daripada ia mencuri dari rumah tetangganya”. [HR. Ahmad]',
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
          'Hadist Tentang Zina',
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
