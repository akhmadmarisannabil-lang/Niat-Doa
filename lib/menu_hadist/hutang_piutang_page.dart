import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';

class HutangPiutangPage extends StatelessWidget {
  const HutangPiutangPage({super.key});

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
            'نَفْسُ الْمُؤْمِنِ مُعَلَّقَةٌ بِدَيْنِهِ حَتَّى يُقْضَى عَنْهُ',
        'indo':
            '“Jiwa seorang mukmin tergantung karena hutangnya, sampai hutang itu dilunaskannya.”\n\nRasulullah shallallahu ‘alaihi wa sallam bersabda,',
      },
      {
        'arabic':
            'ﺃَﻳُّﻤَﺎ ﺭَﺟُﻞٍ ﻳَﺪَﻳَّﻦُ ﺩَﻳْﻨًﺎ ﻭَﻫُﻮَ ﻣُﺠْﻤِﻊٌ ﺃَﻥ *ﻻَ ﻳُﻮَﻓِّﻴَﻪُ ﺇِﻳَّﺎﻩُ ﻟَﻘِﻰَ ﺍﻟﻠَّﻪَ ﺳَﺎﺭِﻗًﺎ',
        'indo':
            '“Siapa saja yang berhutang lalu berniat tidak mau melunasinya, maka dia akan bertemu Allah (pada hari kiamat) dalam status sebagai pencuri.”',
      },
      {
        'arabic':
            '« مَنْ فَارَقَ الرُّوحُ الْجَسَدَ وَهُوَ بَرِىءٌ مِنْ ثَلاَثٍ دَخَلَ الْجَنَّةَ مِنَ الْكِبْرِ وَالْغُلُولِ وَالدَّيْنِ »',
        'indo':
            '“Barangsiapa yang rohnya berpisah dari jasadnya dalam keadaan terbebas dari tiga hal, niscaya masuk surga: (pertama) bebas dari sombong, (kedua) dari khianat, dan (ketiga) dari tanggungan hutang.” (HR. Ibnu Majah II/806 no: 2412, dan At-Tirmidzi IV/138 no: 1573)',
      },
      {
        'arabic':
            'عَنْ أَبِى هُرَيْرَةَ – رضى الله عنه – أَنَّ رَسُولَ اللَّهِ – صلى الله عليه وسلم – قَالَ « مَطْلُ الْغَنِىِّ ظُلْمٌ ، فَإِذَا أُتْبِعَ أَحَدُكُمْ عَلَى مَلِىٍّ فَلْيَتْبَعْ »',
        'indo':
            'Dari Abu Hurairah , bahwa Rasulullah  bersabda: “Memperlambat pembayaran hutang yang dilakukan oleh orang kaya merupakan perbuatan zhalim. Jika salah seorang kamu dialihkan kepada orang yang mudah membayar hutang, maka hendaklah beralih (diterima pengalihan tersebut)”. (HR. Bukhari dalam Shahihnya IV/585 no.2287, dan Muslim dalam Shahihnya V/471 no.3978, dari hadits Abu Hurairah .)',
      },
      {
        'arabic':
            'قَالَ حُذَيْفَةُ وَسَمِعْتُهُ يَقُولُ « إِنَّ رَجُلاً كَانَ فِيمَنْ كَانَ قَبْلَكُمْ أَتَاهُ الْمَلَكُ لِيَقْبِضَ رُوحَهُ فَقِيلَ لَهُ هَلْ عَمِلْتَ مِنْ خَيْرٍ قَالَ مَا أَعْلَمُ ، قِيلَ لَهُ انْظُرْ . قَالَ مَا أَعْلَمُ شَيْئًا غَيْرَ أَنِّى كُنْتُ أُبَايِعُ النَّاسَ فِى الدُّنْيَا وَأُجَازِيهِمْ ، فَأُنْظِرُ الْمُوسِرَ ، وَأَتَجَاوَزُ عَنِ الْمُعْسِرِ . فَأَدْخَلَهُ اللَّهُ الْجَنَّةَ »',
        'indo':
            'Artinya:Dari sahabat Hudzaifah, beliau pernah mendengar Rasulullah bersabda:“Ada seorang laki-laki yang hidup di zaman sebelum kalian. Lalu datanglah seorang malaikat maut yang akan mencabut rohnya. Dikatakan kepadanya (oleh malaikat maut): “Apakah engkau telah berbuat kebaikan?” Laki-laki itu menjawab: “Aku tidak mengetahuinya.” Malaikat maut berkata: “ Telitilah kembali apakah engkau telah berbuat kebaikan.” Dia menjawab: “Aku tidak mengetahui sesuatu pun amalan baik yang telah aku lakukan selain bahwa dahulu aku suka berjual beli barang dengan manusia ketika di dunia dan aku selalu mencukupi kebutuhan mereka. Aku memberi keluasan dalam pembayaran hutang bagi orang yang memiliki kemampuan dan aku membebaskan tanggungan orang yang kesulitan.” Maka Allah (dengan sebab itu) memasukkannya ke dalam surga.” (HR. Bukhari III/1272 no.3266)',
      },
      {
        'arabic':
            '( أَرَأَيْتَ إِنْ قُتِلْتُ فِى سَبِيلِ اللَّهِ أَتُكَفَّرُ عَنِّى خَطَايَاىَ ؟)',
        'indo':
            'Diriwayatkan dari Abu Qatadah radhiallaahu ‘anhu dari Rasulullah shallallaahu ‘alaihi wa sallam bahwasanya seseorang bertanya kepada Rasulullah shallallaahu ‘alaihi wa sallam:\n\n“Bagaimana menurutmu jika aku terbunuh di jalan Allah, apakah dosa-dosaku akan diampuni?”\n\nBeliau pun menjawab:',
      },
      {
        'arabic':
            '( نَعَمْ وَأَنْتَ صَابِرٌ مُحْتَسِبٌ مُقْبِلٌ غَيْرُ مُدْبِرٍ إِلاَّ الدَّيْنَ فَإِنَّ جِبْرِيلَ عَلَيْهِ السَّلاَمُ قَالَ لِى ذَلِ|}كَ )',
        'indo':
            '“Ya, dengan syarat engkau sabar, mengharapkan ganjarannya, maju berperang dan tidak melarikan diri, kecuali hutang. Sesungguhnya Jibril ‘alaihissalam baru memberitahuku hal tersebut” (HR Muslim no. 4880/1885)',
      },
      {
        'arabic':
            '( مَنْ أَخَذَ أَمْوَالَ النَّاسِ يُرِيدُ أَدَاءَهَا أَدَّى اللَّهُ عَنْهُ ، وَمَنْ أَخَذَ يُرِيدُ إِتْلاَفَهَا أَتْلَفَهُ اللَّهُ.)',
        'indo':
            'Artinya:“Barang siapa meminjam harta manusia dan dia ingin membayarnya, maka Allah akan membayarkannya. Barang siapa yang meminjamnya dan dia tidak ingin membayarnya, maka Allah akan menghilangkan harta tersebut darinya.” (HR Al-Bukhaari no. 2387)',
      },
      {
        'arabic':
            '“كَانَ رَسُولُ اللَّهِ صلى الله عليه وسلم لاَ يُصَلِّى عَلَى رَجُلٍ مَاتَ وَعَلَيْهِ دَيْنٌ فَأُتِىَ بِمَيِّتٍ فَقَالَ: «أَعَلَيْهِ دَيْنٌ». قَالُوا: نَعَمْ دِينَارَانِ. قَالَ: «صَلُّوا عَلَى صَاحِبِكُمْ». فَقَالَ أَبُو قَتَادَةَ الأَنْصَارِىُّ: هُمَا عَلَىَّ يَا رَسُولَ اللَّهِ. فَصَلَّى عَلَيْهِ رَسُولُ اللَّهِ صلى الله عليه وسلم”.',
        'indo':
            '“Dahulu Rosululloh Shollallohu ‘Alaihi wa Sallam tidak mensholatkan seseorang meninggal yang dia memiliki hutang. Didatangkan kepada beliau dengan seorang jenazah, maka beliau berkata: “Apakah dia memiliki hutang?”, mereka menjawab: “Iya, dia memiliki hutang dua dinar”, maka beliau berkata: “Sholatlah kalian untuk saudara kalian!”. Maka Abu Qotadah Al-Anshoriy berkata: “Dua dinar itu aku yang akan bayar wahai Rosululloh, maka Rosululloh Shollallohu ‘Alaihi wa Sallam mensholatkannya”.',
      },
      {
        'arabic':
            'كَانَ يَدْعُو فِى الصَّلاَةِ وَيَقُولُ « اللَّهُمَّ إِنِّى أَعُوذُ بِكَ مِنَ الْمَأْثَمِ وَالْمَغْرَمِ » . فَقَالَ لَهُ قَائِلٌ مَا أَكْثَرَ مَا تَسْتَعِيذُ يَا رَسُولَ اللَّهِ مِنَ الْمَغْرَمِ قَالَ « إِنَّ الرَّجُلَ إِذَا غَرِمَ حَدَّثَ فَكَذَبَ وَوَعَدَ فَأَخْلَفَ » .',
        'indo':
            '“Nabi shallallahu ‘alaihi wa sallam biasa berdo’a di akhir shalat (sebelum salam): ALLAHUMMA INNI A’UDZU BIKA MINAL MA’TSAMI WAL MAGHROM (Ya Allah, aku berlindung kepadamu dari berbuat dosa dan banyak utang).” Lalu ada yang berkata kepada beliau shallallahu ‘alaihi wa sallam, “Kenapa engkau sering meminta perlindungan adalah dalam masalah hutang?” Lalu Rasulullah shallallahu ‘alaihi wa sallam bersabda, “Jika orang yang berhutang berkata, dia akan sering berdusta. Jika dia berjanji, dia akan mengingkari.” (HR. Bukhari no. 2397)\n\nDari Abu Hurairah Radhiyallahu anuma, dari Nabi Shallallahu ‘alaihi wa sallam beliau bersabda :',
      },
      {
        'arabic':
            'نَفْسُ الْـمُؤْمِنِ مُعَلَّقَةٌ بِدَيْنِهِ حَتَّىٰ يُقْضَى عَنْهُ',
        'indo':
            'Jiwa seorang mukmin itu terkatung-katung dengan sebab utangnya sampai hutang dilunasi.',
      },
      {
        'arabic': 'يُغْفَرُ لِلشَّهِيدِ كُلُّ ذَنْبٍ إِلاَّ الدَّيْنَ',
        'indo':
            '“orang yang mati syahid maka akan diampuni dosanya kecuali orang yang memiliki hutang.”(Hadits riwayat Muslim)',
      },
      {
        'arabic': 'إِنَّ خِيَارَكُمْ أَحْسَنُكُمْ قَضَاءً',
        'indo':
            '“Sesungguhnya yang paling di antara kalian adalah yang paling baik dalam membayar hutang.” (HR. Bukhari no. 2393)',
      },
      {
        'arabic':
            'مَنْ أَخَذَ أَمْوَالَ النَّاسِ يُرِيدُ إِتْلاَفَهَا أَتْلَفَهُ اللَّهُ',
        'indo':
            '“Barangsiapa yang mengambil harta manusia, dengan niat ingin menghancurkannya, maka Allah juga akan menghancurkan dirinya.” (HR. Bukhari no. 18 dan Ibnu Majah no. 2411)',
      },
      {
        'arabic':
            'مَنْ مَاتَ وَعَلَيْهِ دِينَارٌ أَوْ دِرْهَمٌ قُضِىَ مِنْ حَسَنَاتِهِ لَيْسَ ثَمَّ دِينَارٌ وَلاَ دِرْهَمٌ',
        'indo':
            '“Barangsiapa yang mati dalam keadaan masih memiliki hutang satu dinar atau satu dirham, maka hutang tersebut akan dilunasi dengan kebaikannya (di hari kiamat nanti) karena di sana (di akhirat) tidak ada lagi dinar dan dirham.” (HR. Ibnu Majah no. 2414)',
      },
      {
        'arabic':
            '«وَمَنْ كَانَ فِي حَاجَةِ أَخِيهِ كَانَ اللهُ فِي حَاجَتِهِ وَمَنْ فَرَّجَ عَنْ مُسْلِمٍ كُرْبَةً فَرَّجَ اللهُ عَنْهُ كُرْبَةً مِنْ كُرُبَاتِ يَوْمِ الْقِيَامَةِ».',
        'indo':
            '“Dan barang siapa yang keberadaannya pada hajat saudaranya maka Allah pada hajatnya, dan barang siapa membebaskan dari seorang muslim terhadap suatu kesulitan maka Alloh membebaskan darinya suatu kesulitan dari kesulitan-kesulitannya pada hari kiamat”. Diriwayatkan oleh Al-Bukhoriy dan Muslim dari hadits Abdulloh bin ‘Umar Rodhiyallohu ‘anhuma.\n\nRasululloh Shollallohu’Alaihi wa Sallam dahulu memberikan jaminan bagi yang hutang, Jabir Radhiyallohu ‘anhu berkata:',
      },
      {
        'arabic':
            '“فَلَمَّا فَتَحَ اللَّهُ عَلَى رَسُولِ اللَّهِ صلى الله عليه وسلم قَالَ: «أَنَا أَوْلَى بِكُلِّ مُؤْمِنٍ مِنْ نَفْسِهِ فَمَنْ تَرَكَ دَيْنًا فَعَلَىَّ قَضَاؤُهُ وَمَنْ تَرَكَ مَالاً فَلِوَرَثَتِهِ».',
        'indo':
            '“Tatkala Allah telah membukakan (pintu kemenangan) kepada Rosululloh Shollallohu ‘Alaihi wa Sallam maka beliau berkata: “Saya lebih utama terhadap setiap mu’min dari dirinya, maka barang siapa meninggalkan hutang maka aku yang akan membayarnya, dan barang siapa meninggalkan harta maka harta itu untuk para pewarisnya”.',
      },
      {
        'arabic':
            'إِنَّ اللَّهَ مَعَ الدَّائِنِ حَتَّى يَقْضِىَ دَيْنَهُ مَا لَمْ يَكُنْ فِيمَا يَكْرَهُ اللَّهُ',
        'indo':
            '“Allah akan bersama (memberi pertolongan pada) orang yang berhutang (yang ingin melunasi hutangnya) sampai dia melunasi hutang tersebut selama hutang tersebut bukanlah sesuatu yang dilarang oleh Allah.” (HR. Ibnu Majah no. 2400)',
      },
      {
        'arabic':
            'من سره أن ينجيه الله من كرب يوم القيامة فلينفس عن معسر أو يضع عنه.',
        'indo':
            'Barang siapa ingin diselamatkan oleh Allah dari kesusahan-kesusahan hari Kiamat maka hendaklah dia memberi tangguh kepada orang yang dalam kesukaran atau menghapuskan utangnya. (H.R. Muslim)',
      },
      {
        'arabic': 'من أنظر معسرا أو وضع له أظله الله في ظله.',
        'indo':
            'Barang siapa memberi tangguh kepada orang yang dalam kesukaran atau menghapuskan utangnya maka Allah akan menanunginya di dalam naungan-Nya. (H.R. Thabrani dan Tirmidzi)',
      },
      {
        'arabic':
            'مَا مِنْ مُسْلِمٍ يُقْرِضُ مُسْلِمًا قَرْضًا مَرَّتَيْنِ إِلاَّ كَانَ كَصَدَقَتِهَا مَرَّةً',
        'indo':
            '“Setiap muslim yang memberikan pinjaman kepada sesamanya dua kali, maka dia itu seperti orang yang bersedekah satu kali.” (HR. Ibnu Majah)',
      },
      {
        'arabic':
            'عَنْ أَبِى هُرَيْرَةَ – رضى الله عنه – قَالَ كَانَ لِرَجُلٍ عَلَى النَّبِىِّ – صلى الله عليه وسلم – سِنٌّ مِنَ الإِبِلِ فَجَاءَهُ يَتَقَاضَاهُ فَقَالَ – صلى الله عليه وسلم – « أَعْطُوهُ » . فَطَلَبُوا سِنَّهُ ، فَلَمْ يَجِدُوا لَهُ إِلاَّ سِنًّا فَوْقَهَا . فَقَالَ « أَعْطُوهُ » . فَقَالَ أَوْفَيْتَنِى ، وَفَّى اللَّهُ بِكَ . قَالَ النَّبِىُّ – صلى الله عليه وسلم – « إِنَّ خِيَارَكُمْ أَحْسَنُكُمْ قَضَاءً »',
        'indo':
            'Dari Abu Hurairah , ia berkata: “Nabi mempunyai hutang kepada seseorang, (yaitu) seekor unta dengan usia tertentu. Orang itupun datang menagihnya. (Maka) beliaupun berkata, “Berikan kepadanya” kemudian mereka mencari yang seusia dengan untanya, akan tetapi mereka tidak menemukan kecuali yang lebih berumur dari untanya. Nabi (pun) berkata: “Berikan kepadanya”, Dia pun menjawab, “Engkau telah menunaikannya dengan lebih. Semoga Allah  membalas dengan setimpal”. Maka Nabi  bersabda, “Sebaik-baik kalian adalah orang yang paling baik dalam pengembalian (hutang)”. (HR. Bukhari)',
      },
      {
        'arabic':
            'وعَنْ جَابِرِ بْنِ عَبْدِ اللَّهِ قَالَ أَتَيْتُ النَّبِىَّ – صلى الله عليه وسلم – وَهُوَ فِى الْمَسْجِدِ – وَكَانَ لِى عَلَيْهِ دَيْنٌ فَقَضَانِى وَزَادَنِى',
        'indo':
            'Dari Jabir bin Abdullah  ia berkata: “Aku mendatangi Nabi di masjid, sedangkan beliau mempunyai hutang kepadaku, lalu beliau membayarnya dam menambahkannya”. (HR. Bukhari)',
      },
      {
        'arabic': 'لاَ يَحِلُّ سَلَفٌ وَبَيْعٌ',
        'indo':
            '“Tidak dihalalkan melakukan peminjaman plus jual beli.” (HR. Abu Daud no.3504, At-Tirmidzi no.1234, An-Nasa’I VII/288)',
      },
      {
        'arabic': '( مَطْلُ الْغَنِيِّ ظُلْمٌ )',
        'indo':
            '“Memperlambat pembayaran hutang untuk orang yang mampu membayarnya adalah kezaliman.” (HR Al-Bukhaari no. 2288 dan Muslim no. 4002/1564)',
      },
      {
        'arabic':
            'عَنْ سَمُرَةَ عَنِ النَّبِىِّ -صلى الله عليه وسلم- قَالَ « عَلَى الْيَدِ مَا أَخَذَتْ حَتَّى تُؤَدِّىَ »',
        'indo':
            'Dari Samurah , Nabi bersabda: “Tangan bertanggung jawab atas semua yang diambilnya, hingga dia menunaikannya”. (HR. Abu Dawud dalam Kitab Al-Buyu’, Tirmidzi dalam kitab Al-buyu’, dan selainnya.)',
      },
      {
        'arabic':
            '« مَنْ أَحَبَّ أَنْ يُظِلَّهُ اللَّهُ فِى ظِلِّهِ – فَلْيُنْظِرْ مُعْسِرًا أَوْ لِيَضَعْ لَهُ »',
        'indo':
            'Artinya:“Barangsiapa yang ingin dinaungi Allah dengan naungan-Nya (pada hari kiamat, pen), maka hendaklah ia menangguhkan waktu pelunasan hutang bagi orang yang sedang kesulitan, atau hendaklah ia menggugurkan hutangnya.” (HR Ibnu Majah II/808 no. 2419)',
      },
      {
        'arabic':
            '( عَنْ سَلَمَةَ بْنِ الأَكْوَعِ –رَضِيَ اللَّهُ عَنْهُ– قَالَ: كُنَّا جُلُوسًا عِنْدَ النَّبِيِّ –صلى الله عليه وسلم– إِذْ أُتِيَ بِجَنَازَةٍ، فَقَالُوا: صَلِّ عَلَيْهَا ، فَقَالَ : (( هَلْ عَلَيْهِ دَيْنٌ ؟ )), قَالُوا: لاَ، قَالَ: (( فَهَلْ تَرَكَ شَيْئًا ؟ )), قَالُوا: لاَ، فَصَلَّى عَلَيْهِ، ثُمَّ أُتِيَ بِجَنَازَةٍ أُخْرَى، فَقَالُوا: يَا رَسُولَ اللهِ، صَلِّ عَلَيْهَا، قَالَ: (( هَلْ عَلَيْهِ دَيْنٌ ؟ )) قِيلَ : نَعَمْ ، قَالَ: (( فَهَلْ تَرَكَ شَيْئًا؟ )) قَالُوا : ثَلاَثَةَ دَنَانِيرَ، فَصَلَّى عَلَيْهَا، ثُمَّ أُتِيَ بِالثَّالِثَةِ، فَقَالُوا: صَلِّ عَلَيْهَا، قَالَ: (( هَلْ تَرَك شَيْئًا؟ )) قَالُوا : لاَ، قَالَ: (( فَهَلْ عَلَيْهِ دَيْنٌ ؟ )) قَالُوا: ثَلاَثَةُ دَنَانِيرَ ، قَالَ: (( صَلُّوا عَلَى صَاحِبِكُمْ ))، قَالَ أَبُو قَتَادَةَ: صَلِّ عَلَيْهِ يَا رَسُولَ اللهِ، وَعَلَيَّ دَيْنُهُ، فَصَلَّى عَلَيْهِ.)',
        'indo':
            'Diriwayatkan dari Salamah bin Al-Akwa’ radhiallaahu ‘anhu, dia berkata, “Dulu kami duduk-duduk di sisi Rasulullah shallallaahu ‘alaihi wa sallam, kemudian didatangkanlah seorang jenazah. Orang-orang yang membawa jenazah itu pun berkata, ‘Shalatilah dia!’ Beliau pun bertanya, ‘Apakah dia punya hutang?’ Mereka pun menjawab, ‘Tidak.’ Beliau pun bertanya, ‘Apakah dia meninggalkan harta peninggalan?’ Mereka pun menjawab, ‘Tidak.’ Kemudian beliau pun menshalatinya. Kemudian didatangkan lagi jenazah yang lain. Orang-orang yang membawanya pun berkata, ‘Shalatilah dia!’ Beliau pun bertanya, ‘Apakah dia punya hutang?’ Mereka pun menjawab, ‘Ya.’ Beliau pun bertanya, ‘Apakah dia meninggalkan harta peninggalan?’ Mereka pun menjawab, ‘Ada tiga dinar.’ Kemudian beliau pun menshalatinya. Kemudian didatangkanlah jenazah yang ketiga. Orang-orang yang membawanya pun berkata, ‘Shalatilah dia!’ Beliau pun bertanya, ‘Apakah dia meninggalkan harta peninggalan?’ Mereka pun menjawab, ‘Tidak.’Beliau pun bertanya, ‘Apakah dia punya hutang?’ Mereka pun menjawab, ‘Ada tiga dinar.’ Beliau pun berkata, ‘Shalatlah kalian kepada sahabat kalian! Kemudian Abu Qatadah pun berkata, ‘Shalatilah dia! Ya Rasulullah! Hutangnya menjadi tanggung jawabku.’ Kemudian beliau pun menshalatinya.” (HR Al-Bukhaari no. 2289)',
      },
      {
        'arabic':
            '( لَعَنَ اللَّهُ آكِلَ الرِّبَا ، وَمُوكِلَهُ ، وَشَاهِدَهُ ، وَكَاتِبَهُ.)',
        'indo':
            '“Allah melaknat pemakan riba, yang memberi makan, saksi dan juru tulisnya” (HR Ahmad no. 3725.)',
      },
      {
        'arabic':
            '“أَنَّهُ تَقَاضَى ابْنَ أَبِي حَدْرَدٍ دَيْنًا لَهُ عَلَيْهِ فِي عَهْدِ رَسُولِ اللهِ صَلى الله عَليهِ وَسَلّمَ فِي الْمَسْجِدِ فَارْتَفَعَتْ أَصْوَاتُهُمَا حَتَّى سَمِعَهَا رَسُولُ اللهِ صَلى الله عَليهِ وَسَلّمَ وَهُوَ فِي بَيْتِهِ فَخَرَجَ إِلَيْهِمَا رَسُولُ اللهِ صَلى الله عَليهِ وَسَلّمَ حَتَّى كَشَفَ سِجْفَ حُجْرَتِهِ وَنَادَى كَعْبَ بْنَ مَالِكٍ قَالَ: «يَا كَعْبُ» قَالَ: لَبَّيْكَ يَا رَسُولَ اللهِ فَأَشَارَ بِيَدِهِ أَنْ: «ضَعِ الشَّطْرَ مِنْ دَيْنِكَ» قَالَ كَعْبٌ: قَدْ فَعَلْتُ يَا رَسُولَ اللهِ، قَالَ رَسُولُ اللهِ صَلى الله عَليهِ وَسَلّمَ: «قُمْ فَاقْضِهِ»”.',
        'indo':
            '“Bahwasanya beliau membayar kepada Ibnu Abi Hadrod suatu hutang beliau kepadanya pada zaman Rosululloh Shollallohu ‘Alaihi wa Sallam di dalam masjid, lalu meninggi suara keduanya sampai Rosululloh Shollallohu ‘Alaihi wa Sallam mendengar suaranya, dan beliau di dalam rumahnya, lalu Beliau Shollallohu ‘Alaihi wa Sallam keluar kepada keduanya hingga membuka kain tabir pintu kamar beliau, dan beliau menyeru Ka’b bin Malik: “Wahai Ka’b!”, Ka’b berkata: “Kupenuhi seruanmu wahai Rosululloh”, lalu Beliau Shollallohu ‘Alaihi wa Sallam memberikan isyarat dengan tangannya: “Bayarlah separoh dari hutangmu”, Ka’b berkata: “Sungguh aku telah melakukannya wahai Rosululloh”, maka Rosululloh Shollallohu ‘Alaihi wa Sallam berkata: “Berdirilah lalu tunaikanlah”. (HR Bukhori)',
      },
      {
        'arabic': '',
        'indo':
            'Dari Jabir bin Abdullah, ia berkata: (Ayahku) Abdullah meninggal dan dia meninggalkan banyak anak dan hutang. Maka aku memohon kepada pemilik hutang agar mereka mau mengurangi jumlah hutangnya, akan tetapi mereka enggan. Akupun mendatangi Nabi  meminta syafaat (bantuan) kepada mereka. (Namun) merekapun tidak mau. Beliau  berkata, “Pisahkan kormamu sesuai dengan jenisnya. Tandan Ibnu Zaid satu kelompok. Yang lembut satu kelompok, dan Ajwa satu kelompok, lalu datangkan kepadaku.” (Maka) akupun melakukannya. Beliau  pun datang lalu duduk dan menimbang setiap mereka sampai lunas, dan kurma masih tersisa seperti tidak disentuh. (HR. Bukhari).',
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
          'Hadist Tentang Hutang Piutang',
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
