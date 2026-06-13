import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';

class HariKiamatPage extends StatelessWidget {
  const HariKiamatPage({super.key});

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
            'بُعِثْتُ أَناَ وَالسَّاعَةُ كَهاتَيْنِ. وَأَشَارَ بِأَصْبِعَيْهِ السَّبَابَةِ وَالْوُسْطَى',
        'indo':
            '“Diutusnya aku dengan datangnya hari kiamat seperti dua jari ini.” Beliau memberi isyarat dengan jari telunjuk dan jari tengahnya. (HR. Al-Bukhari dan Muslim).',
      },
      {
        'arabic': 'لاَ تَقُوْمُ السَّاعَةُ إِلاَّ عَلىَ شِرَارِ النَّاسِ',
        'indo':
            '“Tidak akan datang hari kiamat kecuali pada sejelek-jelek manusia.” (HR. Muslim).',
      },
      {
        'arabic':
            'بَيْنَمَا نَحْنُ عِنْدَ رَسُولِ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ ذَاتَ يَوْمٍ إِذْ طَلَعَ عَلَيْنَا رَجُلٌ شَدِيدُ بَيَاضِ الثِّيَابِ شَدِيدُ سَوَادِ الشَّعَرِ لَا يُرَى عَلَيْهِ أَثَرُ السَّفَرِ وَلَا يَعْرِفُهُ مِنَّا أَحَدٌ حَتَّى جَلَسَ إِلَى النَّبِيِّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ فَأَسْنَدَ رُكْبَتَيْهِ إِلَى رُكْبَتَيْهِ وَوَضَعَ كَفَّيْهِ عَلَى فَخِذَيْهِ وَقَالَ يَا مُحَمَّدُ أَخْبِرْنِي عَنْ الْإِسْلَامِ فَقَالَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ الْإِسْلَامُ أَنْ تَشْهَدَ أَنْ لَا إِلَهَ إِلَّا اللَّهُ وَأَنَّ مُحَمَّدًا رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ وَتُقِيمَ الصَّلَاةَ وَتُؤْتِيَ الزَّكَاةَ وَتَصُومَ رَمَضَانَ وَتَحُجَّ الْبَيْتَ إِنْ اسْتَطَعْتَ إِلَيْهِ سَبِيلًا قَالَ صَدَقْتَ قَالَ فَعَجِبْنَا لَهُ يَسْأَلُهُ وَيُصَدِّقُهُ قَالَ فَأَخْبِرْنِي عَنْ الْإِيمَانِ قَالَ أَنْ تُؤْمِنَ بِاللَّهِ وَمَلَائِكَتِهِ وَكُتُبِهِ وَرُسُلِهِ وَالْيَوْمِ الْآخِرِ وَتُؤْمِنَ بِالْقَدَرِ خَيْرِهِ وَشَرِّهِ قَالَ صَدَقْتَ قَالَ فَأَخْبِرْنِي عَنْ الْإِحْسَانِ قَالَ أَنْ تَعْبُدَ اللَّهَ كَأَنَّكَ تَرَاهُ فَإِنْ لَمْ تَكُنْ تَرَاهُ فَإِنَّهُ يَرَاكَ قَالَ فَأَخْبِرْنِي عَنْ السَّاعَةِ قَالَ مَا الْمَسْئُولُ عَنْهَا بِأَعْلَمَ مِنْ السَّائِلِ قَالَ فَأَخْبِرْنِي عَنْ أَمَارَتِهَا قَالَ أَنْ تَلِدَ الْأَمَةُ رَبَّتَهَا وَأَنْ تَرَى الْحُفَاةَ الْعُرَاةَ الْعَالَةَ رِعَاءَ الشَّاءِ يَتَطَاوَلُونَ فِي الْبُنْيَانِ قَالَ ثُمَّ انْطَلَقَ فَلَبِثْتُ مَلِيًّا ثُمَّ قَالَ لِي يَا عُمَرُ أَتَدْرِي مَنْ السَّائِلُ قُلْتُ اللَّهُ وَرَسُولُهُ أَعْلَمُ قَالَ فَإِنَّهُ جِبْرِيلُ أَتَاكُمْ يُعَلِّمُكُمْ دِينَكُمْ',
        'indo':
            '(Dari Umar bin alKhottob) : ‘Ketika kami sedang berada di samping Rasulullah shollallaahu ‘alaihi wasallam pada suatu hari tiba-tiba muncul di hadapan kami seorang laki-laki yang pakaiannya sangat putih, rambutnya sangat hitam, tidak nampak padanya tanda safar, dan kami tidak ada yang mengenalnya. Kemudian orang itu duduk (mendekati) Nabi shollallahu ‘alaihi wasallam menyandarkan lututnya pada lutut Nabi dan meletakkan kedua telapak tangannya di atas kedua paha Nabi dan berkata: Wahai Muhammad, beritahukan kepadaku tentang Islam. Maka Rasulullah shollallahu ‘alaihi wasallam bersabda: Islam itu adalah engkau bersaksi bahwa tidak ada sesembahan yang berhaq disembah kecuali Allah dan bahwa Muhammad adalah utusan Allah, dan engkau menegakkan sholat, menunaikan zakat, shoum (berpuasa) pada bulan Ramadlan, dan berhaji ke baitullah jika engkau mampu melakukan perjalanan ke sana. Orang itu berkata: Engkau benar. (Umar berkata) Kami heran dengan orang tersebut, ia bertanya tapi ia yang membenarkan. (Orang itu) berkata: Beritahukan kepadaku apakah iman itu? Nabi berkata: engkau beriman kepada Allah, MalaikatNya, kitab-kitabNya, Rasul-rasulNya, hari akhir, dan beriman kepada taqdir baik dan buruknya. (Orang itu) berkata: Engkau benar. Kemudian ia berkata: Beritahukan kepadaku apakah ihsan itu? Nabi bersabda: Engkau beribadah kepada Allah seakan-akan engkau melihatnya. Jika engkau tidak bisa melihatnya, sesungguhnya Ia melihatmu. (Kemudian orang itu berkata) Beritahukan kepadaku tentang hari kiamat (kapan terjadinya). Nabi menyatakan: Tidaklah yang ditanya lebih tahu dibandingkan orang yang bertanya. (Orang itu berkata) Beritahukan kepadaku tentang tanda-tandanya. Nabi bersabda: Budak wanita melahirkan tuannya, dan engkau melihat orang yang tidak beralas kaki, telanjang (kurang pakaiannya), miskin, penggembala kambing, berlomba-lomba meninggikan bangunan. Kemudian orang itu pergi. Setelah berlalunya waktu, Nabi berkata: Wahai Umar, tahukah engkau siapa orang yang bertanya tadi? Umar menjawab: Allah dan RasulNya yang lebih tahu. Nabi menyatakan: itu adalah Jibril, datang untuk mengajari agama kepada kalian (H.R Muslim)',
      },
      {
        'arabic':
            'انها لن تقوم حتى ترى عشر آيات الدخان والدجال والدابة وطلوع الشمس من مغربها ونزول عيسى ابن مريم ويأجوج ومأجوج وثلاثة خسوف خسف بالمشرق وخسف بالمغرب وخسفف بجزيرة العرب وآخر ذلك نار تخرج من قبل عدن تطرد الناس إلى محشرهم.(روه مسلم)',
        'indo':
            '“kiamat itu tidak akan terjadi hingga kalian melihat sepuluh tanda: asap, Dajjal, binatang melata, terbitnya matahari dari barat, turunnya Isa bin Maryam, Ya’juuj dan Ma’juuj, tiga gempa (di timur, barat dan Jazirah arab), dan yang terakhir adalah api yang keluar dari ‘And yang menggiring manusia ke Makhsyar”.(HR. Muslim)',
      },
      {
        'arabic':
            'ثلاثة اذا خرجن لاينفع نفسا ايمانها لم تكن آمنت من قبل أو كسبت في ايمانها خيرا طلوع الشمس من مغربها والدجال والدابة الارض. (رواه مسلم والترمذي)',
        'indo':
            '“ada tiga hal yang apabila telah muncul maka keimanan seseorang tidak lagi berguna baginya jika sebelumnya dia tidak beriman, atau tidak beramal kebajikan selama beriman, yaitu: terbitnya matahri dari arah barat, Dajjal, dan hewan melata” (HR. Muslim dan At-Tirmidzi).',
      },
      {
        'arabic':
            'عَنْ أَبِي هُرَيْرَةَ رَضِيَ اللَّهُ عَنْهُ أَنَّ رَسُولَ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ قَالَ لَا تَقُومُ السَّاعَةُ حَتَّى تَطْلُعَ الشَّمْسُ مِنْ مَغْرِبِهَا فَإِذَا طَلَعَتْ فَرَآهَا النَّاسُ آمَنُوا أَجْمَعُونَ فَذَلِكَ حِينَ { لَا يَنْفَعُ نَفْسًا إِيمَانُهَا لَمْ تَكُنْ آمَنَتْ مِنْ قَبْلُ أَوْ كَسَبَتْ فِي إِيمَانِهَا خَيْرًا }',
        'indo':
            '“tidaklah tiba hari kiamat sehingga matahari terbit dari arah terbenamnya, maka apabila tanda ini telah muncul, seluruh manusia menjadi beriman. Keimanan manusia saat itu tidak bermanfaat bagi dirinya, bagi yang mulanya tak pernah beriman, juga bagi yang semula belum pernah berbuat baik dalam keimanannya.”(HR. Bukhari).',
      },
      {
        'arabic':
            'عَنْ أَبِي هُرَيْرَةَ قَالَ كَانَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ يَوْمًا بَارِزًا لِلنَّاسِ فَأَتَاهُ رَجُلٌ فَقَالَ يَا رَسُولَ اللَّهِ مَا الْإِيمَانُ قَالَ أَنْ تُؤْمِنَ بِاللَّهِ وَمَلَائِكَتِهِ وَكِتَابِهِ وَلِقَائِهِ وَرُسُلِهِ وَتُؤْمِنَ بِالْبَعْثِ الْآخِرِ قَالَ يَا رَسُولَ اللَّهِ مَا الْإِسْلَامُ قَالَ الْإِسْلَامُ أَنْ تَعْبُدَ اللَّهَ وَلَا تُشْرِكَ بِهِ شَيْئًا وَتُقِيمَ الصَّلَاةَ الْمَكْتُوبَةَ وَتُؤَدِّيَ الزَّكَاةَ الْمَفْرُوضَةَ وَتَسُومَ رَمَضَانَ قَالَ يَا رَسُولَ اللَّهِ مَا الْإِحْسَانُ قَالَ أَنْ تَعْبُدَ اللَّهَ كَأَنَّكَ تَرَاهُ فَإِنَّكَ إِنْ لَا تَرَاهُ فَإِنَّهُ يَرَاكَ قَالَ يَا رَسُولَ اللَّهِ مَتَى السَّاعَةُ قَالَ مَا الْمَسْئُولُ عَنْهَا بِأَعْلَمَ مِنْ السَّائِلِ وَلَكِنْ سَأُحَدِّثُكَ عَنْ أَشْرَاطِهَا إِإِذَا وَلَدَتْ الْأَمَةُ رَبَّهَا فَذَاكَ مِنْ أَشْرَاطِهَا وَإِذَا كَانَتْ الْعُرَاةُ الْحُفَاةُ رُءُوسَ النَّاسِ فَذَاكَ مِنْ أَشْرَاطِهَا وَإِذَا تَطَاوَلَ رِعَاءُ الْبَهْمِ فِي الْبُنْيَانِ فَذَاكَ مِنْ أَشْرَاطِهَا',
        'indo':
            '“kapankah kiamat tiba ?”beliau menjawab: “Tidaklah yang ditanya itu lebih mengetahui daripada yang bertanya. Namun aku hendak memberitahukan kepadamu mengenai tanda-tandanya, yakni apabila seorang budak wanita telah melahirkan tuannya, maka hal itu merupakan tanda-tanda hari kiamat. Dan apabila orang-orang bertelanjang kaki telah menjadi pemimpin umat manusia, maka hal itu (termasuk pula) tanda-tanda kiamat. Dan apabila penggembala kambing berlomba-lomba dalam membangun gedung-gedung menjulang tinggi, maka hal itu (termasuk pula) tanda-tanda kiamat.”(HR. Muslim).',
      },
      {
        'arabic':
            'إِنَّ أَوَّلَ اْلآيَاتِ خُرُوْجًا طُلُوعُ الشَّمْسِ مِنْ مَغْرِبِهَا، وَخُرُوْجُ الدَّابَّةِ عَلَى النَّاسِ ضُحَى، وَأَيُّهُمَا مَا كَانَتْ قَبْلَ صَاحِبَتِهَا؛ فَاْلأُخْرَى عَلَى إِثْرِهَا قَرِيْبًا.',
        'indo':
            '“Sesungguhnya tanda (Kiamat) yang pertama kali keluar adalah terbit-nya matahari dari arah barat, lalu keluarnya binatang (dari dalam bumi) kepada manusia pada waktu dhuha. Dan mana saja di antara keduanya yang terlebih dahulu keluar, maka yang lainnya terjadi setelahnya dalam waktu yang dekat.”',
      },
      {
        'arabic':
            'حَدَّثَنَا عَبْدُ اللَّهِ بْنُ سَعِيدٍ حَدَّثَنَا إِسْمَعِيلُ ابْنُ عُلَيَّةَ حَدَّثَنَا دَاوُدُ بْنُ أَبِي هِنْدٍ عَنْ سَعِيدِ بْنِ أَبِي خَيْرَةَ عَنْ الْحَسَنِ عَنْ أَبِي هُرَيْرَةَ قَالَ قَالَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ لَيَأْتِيَنَّ عَلَى النَّاسِ زَمَانٌ لَا يَبْقَى مِنْهُمْ أَحَدٌ إِلَّا آكِلُ الرِّبَا فَمَنْ لَمْ يَأْكُلْ أَصَابَهُ مِنْ غُبَارِهِ',
        'indo':
            'Benar-benar akan datang kepada manusia suatu zaman dimana dimana tidak ada seorang pun diantara mereka kecuali memakan harta riba. Sekiranya ia tidak memakannya, setidaknya ia terkena debunya.',
      },
      {
        'arabic': '',
        'indo':
            'Dari Abu Hurairah radhiyallahu’anhu, Rasulullah shallallahu ‘alaihi wa sallam bersabda, “Allah tabaraka wa ta’ala menggenggam bumi pada hari kiamat, Allah melipat langit dengan tangan kanan-Nya, kemudian Allah berkata; ‘Aku lah Sang Raja, manakah para raja yang dahulu berkuasa di bumi?’.” (HR. Bukhari dan Muslim)',
      },
      {
        'arabic': '',
        'indo':
            'Dari Ibnu ‘Umar radhiyallahu’anhuma, Rasulullah shallallahu ‘alaihi wa sallam bersabda, “Sesungguhnya kezaliman itu akan berubah menjadi kegelapan-kegelapan pada hari kiamat.” (HR. Bukhari dan Muslim)',
      },
      {
        'arabic': '',
        'indo':
            'Dari Abdullah bin Mas’ud dan Abu Musa radhiyallahu’anhuma, Rasulullah shallallahu ‘alaihi wa sallam bersabda, “Sesungguhnya pada saat dekat hendak terjadi kiamat akan ada hari-hari dimana ketika itu kebodohan merata, ilmu diangkat, dan banyak terjadi al-harj.” Yang dimaksud al-harj adalah pembunuhan (HR. Bukhari dan Muslim).',
      },
      {
        'arabic': '',
        'indo':
            'Dalam Shahih al-Bukhari dan Muslim ketika Jibril datang kepada Nabi shalla allahu ‘alaihi wasallam bertanya tentang kapan Kiamat, Nabi saw menjawab “Yang ditanya tentang Hari Kiamat tidak lebih mengetahui dari yang bertanya." (HR. Al-Bukhari dan Muslim).',
      },
      {
        'arabic': '',
        'indo':
            'Rasulullah bersabda: “Kiamat hampir akan terjadi apabila sudah banyak perbuatan bohong, masa (waktu) akan terasa cepat berlalu, dan pasar pasar akan berdekatan (jaraknya karena saking banyaknya)," (sahih Ibnu Hibban).',
      },
      {
        'arabic': '',
        'indo':
            'Rasulullah bersabda: “Pada pintu gerbang kiamat, orang-orang hanya akan mengucapkan salam kepada orang yang khusus (dikenal) saja, dan berkembangnya perniagaan sehingga wanita ikut seperti suaminya (bekerja/berdagang)," (Hadist Shahih Ahmad).',
      },
      {
        'arabic': '',
        'indo':
            'Dari Anas bin Malik Ra. Rasulullah bersabda: “Tidak akan terjadi kiamat hingga manusia berbangga-bangga dengan masjid," (hadist sahih musnad Ahmad3:134,145, An Nasa’i 2:32, Abu Dawud 449,Ibnu Majah 779). Padahal Rasulullah di lain tempat berkata “Aku tidak diutus untuk menjulangkan masjid-masjid," (sahih sunan Abu Dawud: 448).',
      },
      {
        'arabic': '',
        'indo':
            'Dari Anas bin Malik Ra. ia berkata: Rasulullah shallallahu ‘alaihi wa sallam bersabda: “Tidak akan terjadi qiamat sehingga waktu terasa pendek, maka setahun dirasakan seperti sebulan, sebulan dirasakan seperti seminggu, seminggu dirasakan seperti sehari, sehari dirasakan seperti satu jam serta satu jam dirasakan seperti satu kilatan api." (sebentar saja, hanya seperti kilatan api sekejap). (HR. Tirmizi).',
      },
      {
        'arabic': '',
        'indo':
            'Dari Abu Hurairah Ra. Ia berkata: Rasulullah shallallahu ‘alaihi wa sallam bersabda: “Islam mulai berkembang dalam keadaan asing. Dan ia akan kembali asing pula. Maka beruntunglah orang-orang yang asing." (HR. Muslim).',
      },
      {
        'arabic': '',
        'indo':
            'Ali bin Thalib r.a. berkata bahawa beliau mendengar Rasulullah shallallahu ‘alaihi wa sallam bersabda: “Kelak akan muncul di antara umatku suatu kaum yang membaca al-Qur’an bukan seperti lazimnya kamu membaca, dan sembahyangmu jauh berbeda dengan cara mereka bersembahyang. Mereka membaca al-Qur’an dengan mengira bahawa al-Qur’an itu sebagai alat propaganda mereka, padahal al-Qur’an itu berisi peringatan yang harus mereka junjung. Bacaan mereka itu tidak melebihi kerongkongnya (tidak sampai meresap ke dalam hati). Mereka itu sebenarnya keluar dari Islam, bagaikan anak panah yang lepas dari busurnya." (Riwayat Muslim)',
      },
      {
        'arabic': '',
        'indo':
            'Abu Hurairah r.a. berkata, Nabi shallallahu ‘alaihi wa sallam bersabda: “Qiamat tidak akan tiba selagi belum muncul 30 dajjal, semua berbohong mengenai Allah dan RasulNya." [Musnad Ahmad, 2/450].',
      },
      {
        'arabic': '',
        'indo':
            'Rasulullah shallallahu ‘alaihi wa sallam bersabda: “Di antara tanda-tanda dekatnya Hari Kiamat adalah laki-laki menyerupai wanita dan wanita menyerupai laki-laki." (Riwayat Abu Nu’aim).',
      },
      {
        'arabic': '',
        'indo':
            'Dari Aisyah r.a. berkata, aku mendengar Rasulullah shallallahu ‘alaihi wa sallam bersabda: “Tidak akan berlaku hari qiamat sehingga anak seseorang menjadi puncak kemarahan (bagi ibu bapaknya) dan hujan akan menjadi panas (hujan akan berkurang dan cuaca akan menjadi panas) dan akan bertambah banyak orang yang tercela dan akan berkurang orang yang baik dan anak-anak menjadi berani melawan orang-orang tua dan orang yang jahat berani melawan orang-orang baik." (Riwayat Thabrani).',
      },
      {
        'arabic': '',
        'indo':
            'Dari Ali bin Abi Thalib Ra. ia berkata: Telah bersabda Rasulullah Shallallahu ‘Alaihi wa Sallam.: “Sudah hampir tiba suatu zaman, kala itu tidak ada lagi dari Islam kecuali hanya namanya, dan tidak ada dari Al-Qur’an kecuali hanya tulisannya. Masjid-masjid mereka indah, tetapi kosong dari hidayah. Ulama mereka adalah sejahat-jahat makhluk yang ada di bawah kolong langit. Dari merekalah keluar fitnah, dan kepada mereka fitnah itu akan kembali .” (HR. al-Baihaqi).',
      },
      {
        'arabic': '',
        'indo':
            'Dari Abu Malik Al-Asy’ari Ra. katanya Rasulullah Shallallahu ‘Alaihi wa Sallam bersabda; “Sesungguhnya akan ada sebagian dari umatku yang meminum khamar dan mereka menamakannya dengan nama yang lain. (Mereka meminum) sambi! diiringi dengan alunan musik dan suara biduanita. Allah Subhanahu wa Ta’ala akan menenggelamkan mereka ke dalam bumi (dengan gempa) dan Allah Subhanahu wa Ta’ala akan mengubah mereka menjadi kera atau babi.” (HR. Ibnu Majah).',
      },
      {
        'arabic': '',
        'indo':
            'Dari Tsauban Ra. berkata Rasulullah Shallallahu ‘Alaihi wa Sallam bersabda; “Hampir tiba suatu zaman di mana bangsa-bangsa dari seluruh dunia akan datang mengerumuni kamu bagaikan orang-orang yang kelaparan mengerumuni talam hidangan mereka”. Maka salah seorang sahabat bertanya, “Apakah karena kami sedikit pada hari itu?” Nabi Rasulullah Shallallahu ‘Alaihi wa Sallam menjawab, “Bahkan kamu pada hari itu banyak sekali, tetapi kamu umpama buih di waktu banjir, dan Allah akan mencabut rasa gentar terhadap kamu dari hati musuh-musuh kamu, dan Allah akan melemparkan ke dalam hati kamu penyakit ‘wahan’. Seorang sahabat bertanya: “Apakah ‘wahan’ itu, hai Rasulullah?”. Rasulullah menjawab: “Cinta dunia dan takut mati”. (HR. Abu Daud).',
      },
      {
        'arabic': '',
        'indo':
            'Hadis riwayat Zainab binti Jahsy ra.:Bahwa Nabi saw. bangun dari tidurnya sambil bersabda: Laa ilaaha illallaah, celakalah orang-orang Arab karena suatu bencana akan terjadi, yaitu hari ini dinding (bendungan) Yakjuj dan Makjuj telah terbuka sebesar ini. Dan Sufyan (perawi hadis ini) melingkarkan jarinya membentuk angka sepuluh (membuat lingkaran dengan jari telunjuk dan ibu jari). Aku (Zainab binti Jahsy) bertanya: Wahai Rasulullah, apakah kita semua akan binasa padahal di antara kita banyak terdapat orang-orang saleh? Beliau menjawab: Ya, jika banyak terjadi kemaksiatan. (Shahih Muslim No.5128)',
      },
      {
        'arabic': '',
        'indo':
            'Hadis riwayat Abu Hurairah ra.:Dari Nabi saw., beliau bersabda: Hari ini dinding Yakjuj dan Makjuj telah terbuka sebesar ini. Wuhaib (perawi hadis) melingkarkan jarinya membentuk angka sembilan puluh (menekuk jari telunjuk sampai ke pangkal ibu jari). (Shahih Muslim No.5130) .',
      },
      {
        'arabic': '',
        'indo':
            'Hadis riwayat Abu Hurairah ra., ia berkata:Bahwa Rasulullah saw. bersabda: Akan terjadi fitnah di mana orang yang duduk (menghindar dari fitnah itu) lebih baik daripada yang berdiri dan orang yang berdiri lebih baik daripada yang berjalan dan orang yang berjalan lebih baik daripada yang berlari (yang terlibat dalam fitnah). Orang yang mendekatinya akan dibinasakan. Barang siapa yang mendapatkan tempat berlindung darinya, hendaklah ia berlindung. (Shahih Muslim No.5136)',
      },
      {
        'arabic': '',
        'indo':
            'Hadis riwayat Abu Hurairah ra., ia berkata:Rasulullah saw. bersabda: Hari kiamat tidak akan terjadi kecuali setelah dua golongan besar saling berperang sehingga pecahlah peperangan hebat antara keduanya padahal dakwah mereka adalah satu. (Shahih Muslim No.5142)',
      },
      {
        'arabic': '',
        'indo':
            'Hadis riwayat Abu Hurairah ra.:Bahwa Rasulullah saw. bersabda: Tidak akan terjadi hari kiamat kecuali setelah banyak peristiwa haraj. Mereka bertanya: Wahai Rasulullah, apakah haraj itu? Beliau menjawab: Pembunuhan, pembunuhan. (Shahih Muslim No.5143)',
      },
      {
        'arabic': '',
        'indo':
            'Hadis riwayat Hudzaifah bin Yaman ra.:Hudzaifah bin Yaman berkata: Demi Allah, aku adalah orang yang paling mengetahui setiap fitnah yang akan terjadi dari sejak zamanku sekarang sampai hari kiamat, karena Rasulullah saw. pernah membisikkan kepadaku sesuatu tentang hal itu yang tidak pernah dibicarakan kepada orang selainku. Tetapi Rasulullah saw. pernah bersabda ketika beliau bicara dalam suatu majelis yang aku hadiri tentang fitnah. Kemudian Rasulullah saw. bersabda sambil menyebutkan satu-persatu fitnah-fitnah itu di antaranya adalah tiga fitnah yang hampir tidak meninggalkan sesuatu apa pun, di antaranya juga ada fitnah yang seperti hembusan angin musim panas, ada yang kecil dan ada yang besar. (Shahih Muslim No.5146)',
      },
      {
        'arabic': '',
        'indo':
            'Hadis riwayat Abu Hurairah ra.:Bahwa Rasulullah saw. bersabda: Hari kiamat tidak akan terjadi sebelum sungai Euphrat menyingkap gunung emas, sehingga manusia saling membunuh (berperang) untuk mendapatkannya. Lalu terbunuhlah dari setiap seratus orang sebanyak sembilan puluh sembilan dan setiap orang dari mereka berkata: Semoga akulah orang yang selamat. (Shahih Muslim No.5152)',
      },
      {
        'arabic': '',
        'indo':
            'Hadis riwayat Abu Hurairah ra.:Bahwa Rasulullah saw. bersabda: Kiamat tidak akan terjadi sebelum api muncul dari tanah Hijaz yang dapat menerangi leher-leher unta di Basrah. (Shahih Muslim No.5164)',
      },
      {
        'arabic': '',
        'indo':
            'Dari Abu Sa’id Al-Khudri Ra. ia berkata: Bahwasanya Rasulullah shallallahu ‘alaihi wa sallam bersabda: “Kamu akan mengikuti jejak langkah umat-umat sebelum kamu, sejengkal demi sejengkal, sehasta demi sehasta, sehingga jikalau mereka masuk ke lobang biawakpun kamu akan mengikuti mereka". Sahabat bertanya: “Ya Rasulullah! Apakah Yahudi dan Nashrani yang Tuan maksudkan?" Nabi Shallallahu ‘Alaihi wa Sallam menjawab, “Siapa lagi?" (kalau bukan mereka). (HR. Muslim).',
      },
      {
        'arabic': '',
        'indo':
            'Dari Umar bin Tsa’lab r.a. berkata bahawa Rasulullah shallallahu ‘alaihi wa sallam bersabda: “Sebahagian dari tanda-tanda dekatnya Hari Kiamat, adalah tersebarnya (melimpahnya) harta benda dan luasnya perniagaan. Dan pena-pena akan bermunculan yang menunjukkan banyaknya bacaan dan tulisan." (Riwayat An-Nasa’i).',
      },
      {
        'arabic': '',
        'indo':
            'Hadis riwayat Ibnu Umar ra.:Bahwa ia mendengar Rasulullah saw. bersabda sambil menghadap ke arah timur: Ketahuilah, sesungguhnya fitnah akan terjadi di sana! Ketahuilah, sesungguhnya fitnah akan terjadi di sana. Yaitu tempat muncul tanduk setan. (Shahih Muslim No.5167)',
      },
      {
        'arabic': '',
        'indo':
            'Hadis riwayat Abu Hurairah ra.:Bahwa Rasulullah saw. bersabda: Kiamat tidak akan terjadi sebelum seseorang melewati kuburan orang lain lalu berkata: Alangkah senangnya bila aku menempati tempatnya!. (Shahih Muslim No.5175)',
      },
      {
        'arabic': '',
        'indo':
            'Hadis riwayat Abu Hurairah ra.:Bahwa Rasulullah saw. bersabda: Kiamat tidak akan terjadi before seorang lelaki muncul dari Qahthan menggiring manusia dengan tongkatnya. (Shahih Muslim No.5182)',
      },
      {
        'arabic': '',
        'indo':
            'Hadis riwayat Abu Hurairah ra.:Bahwa Rasulullah saw. bersabda: Kiamat tidak akan terjadi sebelum kalian memerangi suatu kaum yang wajahnya seperti perisai dan kiamat tidak akan tiba sebelum kalian memerangi suatu kaum yang sandalnya terbuat dari bulu. (Shahih Muslim No.5184)',
      },
      {
        'arabic': '',
        'indo':
            'Hadis riwayat Ibnu Umar ra.:Dari Nabi saw. bersabda: Kamu sekalian pasti akan memerangi orang-orang Yahudi, lalu kamu akan membunuh mereka, sehingga batu berkata: Hai muslim, ini orang Yahudi, kemari dan bunuhlah dia!. (Shahih Muslim No.5200)',
      },
      {
        'arabic': '',
        'indo':
            'Hadis riwayat Abu Hurairah ra.:Bahwa Rasulullah saw. bersabda: Kiamat tidak akan terjadi sebelum kaum muslimin memerangi orang-orang Yahudi, lalu kaum muslimin dapat mengalahkan (membunuh) mereka, sampai-sampai seorang Yahudi bersembunyi di balik batu dan pohon lalu batu dan pohon itu berseru: Hai orang muslim, hai hamba Allah, ini seorang Yahudi di belakangku, kemari dan bunuhlah dia! Kecuali pohon gharqad (sejenis pohon cemara atau pohon berduri), karena pohon itu adalah pohon orang Yahudi. (Shahih Muslim No.5203)',
      },
      {
        'arabic': '',
        'indo':
            'Hadis riwayat Abu Hurairah ra.:Dari Nabi saw., beliau bersabda: Kiamat tidak akan terjadi sebelum dibangkitkan dajjal-dajjal pendusta yang berjumlah sekitar tiga puluh, semuanya mengaku bahwa ia adalah utusan Allah. (Shahih Muslim No.5205)',
      },
      {
        'arabic': '',
        'indo':
            'Hadis riwayat Abu Said Al-Khudri ra., ia berkata:Aku menemani Ibnu Shaid pergi ke Mekah, ia berkata kepadaku: Aku telah bertemu dengan beberapa orang yang menganggap bahwa aku adalah seorang Dajjal. Apakah kamu pernah mendengar Rasulullah saw. bersabda: Sesungguhnya Dajjal itu tidak mempunyai anak. Aku jawab: Ya! Ia berkata lagi: Dan aku telah mempunyai anak. Bukankah kamu telah mendengar Rasulullah saw. bersabda: Dajjal itu tidak akan memasuki Madinah dan Mekah. Aku menjawab: Ya! Ia berkata lagi: Dan aku telah dilahirkan di Madinah dan sekarang aku sedang menuju ke Mekah. Kemudian di akhir pertanyaannya dia berkata kepadaku: Demi Allah, sesungguhnya aku tahu waktu kelahirannya, tempatnya dan di mana dia. Ia berkata: Ia telah mengaburkanku tentang perkara itu. (Shahih Muslim No.5209)',
      },
      {
        'arabic': '',
        'indo':
            'Hadis riwayat Jabir bin Abdullah ra.:Dari Muhammad Al-Munkadir ia berkata: Aku melihat Jabir bin Abdullah bersumpah demi Allah bahwa Ibnu Shaid adalah seorang Dajjal, maka aku bertanya: Kenapa kamu bersumpah demi Allah? Dia menjawab: Aku mendengar Umar bersumpah tentang hal itu di hadapan Nabi saw. dan beliau tidak mengingkarinya. (Shahih Muslim No.5214)',
      },
      {
        'arabic': '',
        'indo':
            'Hadis riwayat Abdullah bin Umar ra.:Bahwa Umar bin Khathab pergi bersama Rasulullah saw. dalam suatu rombongan menuju tempat Ibnu Shayyad dan menjumpainya sedang bermain dengan anak-anak kecil di dekat gedung Bani Maghalah, sedangkan pada waktu itu Ibnu Shayyad sudah mendekati usia balig. Ia tidak merasa kalau ada Nabi saw. sehingga beliau menepuk punggungnya lalu Nabi berkata kepada Ibnu Shayyad: Apakah kamu bersaksi bahwa aku ini utusan Allah? Ibnu Shayyad memandang beliau lalu berkata: Aku bersaksi bahwa engkau adalah utusan orang-orang yang buta huruf. Lalu Ibnu Shayyad balik bertanya kepada Rasulullah saw.: Apakah engkau bersaksi bahwa aku utusan Allah? Beliau menolaknya dan bersabda: Aku beriman kepada Allah dan para rasul-Nya. Kemudian Rasulullah berkata kepadanya: Apa yang kamu lihat? Ibnu Shayyad berkata: Aku didatangi orang yang jujur dan pendusta. Maka Rasulullah saw. bersabda: Perkara ini telah menjadi kabur bagimu. Lalu Rasulullah melanjutkan: Aku menyembunyikan sesuatu untukmu. Ibnu Shayyad berkata: Asap. Beliau bersabda: Pergilah kau orang yang hina! Kamu tidak akan melewati derajatmu! Umar bin Khathab berkata: Wahai Rasulullah, izinkan aku memenggal lehernya! Beliau bersabda: Kalau dia Dajjal, dia tidak akan dapat dikalahkan, kalau bukan maka tidak ada baiknya kamu membunuh dia. Salim bin Abdullah berkata: Aku mendengar Abdullah bin Umar berkata: Sesudah demikian, Rasulullah dan Ubay bin Kaab Al-Anshari pergi menuju ke kebun korma di mana terdapat Ibnu Shayyad. Setelah masuk ke kebun beliau segera berlindung di balik batang pohon korma mencari kelengahan untuk mendengarkan sesuatu yang dikatakan Ibnu Shayyad sebelum Ibnu Shayyad melihat beliau. Maka Rasulullah saw. dapat melihat ia sedang berbaring di atas tikar kasar sambil mengeluarkan suara yang tidak dapat dipahami. Tiba-tiba ibu Ibnu Shayyad melihat Rasulullah saw. yang sedang bersembunyi di balik batang pohon korma lalu menyapa Ibnu Shayyad: Hai Shaaf, (nama panggilan Ibnu Shayyad), ini ada Muhammad! Lalu bangunlah Ibnu Shayyad. Kemudian Rasulullah saw. bersabda: Seandainya ibunya membiarkannya, maka akan jelaslah perkara dia. Diceritakan oleh Salim, bahwa Abdullah bin Umar berkata: Maka Rasulullah saw. berdiri di tengah-tengah orang banyak lalu memuji Allah dengan apa yang layak bagi-Nya kemudian menyebut Dajjal seraya bersabda: Sungguh aku peringatkan kamu darinya dan tiada seorang nabi pun kecuali pasti memperingatkan kaumnya dari Dajjal tersebut. Nabi Nuh as. telah memperingatkan kaumnya, tetapi aku terangkan kepadamu sesuatu yang belum pernah diterangkan nabi-nabi kepada kaumnya. Ketahuilah, Dajjal itu buta sebelah matanya, sedangkan Allah Maha Suci lagi Maha Luhur tidak buta. (Shahih Muslim No.5215)',
      },
      {
        'arabic': '',
        'indo':
            'Hadis riwayat Anas bin Malik ra. ia berkata:Rasulullah saw. bersabda: Tidak seorang nabi kecuali ia telah memperingatkan kaumnya terhadap sang pendusta yang buta sebelah mata. Ketahuilah bahwa Dajjal itu buta sebelah matanya sedangkan Tuhanmu tidak buta sebelah mata dan di antara kedua matanya tertulis "kaaf", "faa", "raa". (Shahih Muslim No.5219)',
      },
      {
        'arabic': '',
        'indo':
            'Hadis riwayat Hudzaifah ra., ia berkata:Rasulullah saw. bersabda: Dajjal itu buta mata kirinya, berambut lebat, ia membawa surga dan neraka, nerakanya adalah surga dan surganya adalah neraka. (Shahih Muslim No.5222)',
      },
      {
        'arabic': '',
        'indo':
            'Hadis riwayat Abu Hurairah ra., ia berkata:Rasulullah saw. bersabda: Inginkah kamu sekalian aku beritahukan tentang Dajjal, suatu keterangan yang belum pernah diceritakan seorang nabi kepada kaumnya? Sesungguhnya ia buta sebelah mata, ia datang dengan membawa sesuatu seperti surga dan neraka. Maka apa yang dikatakannya surga adalah neraka dan aku telah memperingatkan kalian terhadapnya sebagaimana Nabi Nuh telah memperingatkan kaumnya. (Shahih Muslim No.5227)',
      },
      {
        'arabic': '',
        'indo':
            'Hadis riwayat Abu Said Al-Khudri ra., ia berkata:Suatu hari Rasulullah saw. pernah bercerita kepada kami suatu cerita panjang tentang Dajjal. Di antara yang beliau ceritakan kepada kami adalah: Ia akan datang tetapi ia diharamkan memasuki jalan-jalan Madinah, kemudian ia tiba di tanah lapang tandus yang berada di dekat Madinah. Lalu pada hari itu keluarlah seorang lelaki yang terbaik di antara manusia atau termasuk manusia terbaik menemuinya dan berkata: Aku bersaksi bahwa kamu adalah Dajjal yang telah diceritakan Rasulullah saw. kepada kami. Dajjal berkata: Bagaimana pendapat kalian jika aku membunuh orang ini lalu menghidupkannya lagi, apakah kamu masih meragukan perihalku? Mereka berkata: Tidak! Maka Dajjal membunuhnya lalu menghidupkannya kembali. Ketika telah dihidupkan, lelaki itu berkata: Demi Allah, aku sekarang lebih yakin tentang dirimu dari sebelumnya. Maka Dajjal itu hendak membunuhnya kembali, namun ia tidak kuasa melakukannya. (Shahih Muslim No.5229)',
      },
      {
        'arabic': '',
        'indo':
            'Hadis riwayat Mughirah bin Syu`bah ra., ia berkata:Tidak ada seorang yang bertanya kepada Nabi saw. tentang Dajjal lebih banyak dari apa yang aku tanyakan. Beliau bersabda: Kenapa kamu bersusah-payah menanyakan hal itu? Sesungguhnya ia tidak akan membahayakan kamu. Aku bertanya: Wahai Rasulullah, mereka mengatakan bahwa Dajjal itu membawa makanan dan sungai? Beliau menjawab: Perkaranya lebih ringan di hadapan Allah dari itu. (Shahih Muslim No.5231)',
      },
      {
        'arabic': '',
        'indo':
            'Hadis riwayat Anas bin Malik ra., ia berkata:Rasulullah saw. bersabda: Tidak ada satu negeri yang tidak dimasuki Dajjal, kecuali Mekah dan Madinah, dan tidak ada satu jalan di Madinah, kecuali terdapat malaikat yang berbaris menjaganya. Maka Dajjal singgah di daerah rawa, kemudian Madinah bergoncang tiga kali goncangan, sehingga seluruh orang kafir dan munafik keluar dari sana menuju ke tempat Dajjal. (Shahih Muslim No.5236)',
      },
      {
        'arabic': '',
        'indo':
            'Hadis riwayat Aisyah ra., ia berkata:Apabila orang-orang Arab badui datang menghadap Nabi saw. mereka bertanya: Kapankah kiamat akan tiba? Lalu beliau memandang kepada orang yang paling muda di antara mereka dan bersabda: Seandainya dia hidup, sebelum dia menjadi tua renta, maka kiamat akan terjadi. (Shahih Muslim No.5248)',
      },
      {
        'arabic': '',
        'indo':
            'Hadis riwayat Anas bin Malik ra.:Bahwa seorang lelaki bertanya kepada Rasulullah saw.: Kapankah kiamat akan tiba? Di sebelahnya terdapat seorang pemuda Ansar yang masih belia bernama Muhammad, maka Rasulullah saw. bersabda: Ketika pemuda ini hidup lama, maka sebelum ia mencapai usia tua renta kiamat sudah tiba. (Shahih Muslim No.5249)',
      },
      {
        'arabic': '',
        'indo':
            'Hadis riwayat Abu Hurairah ra., ia berkata:Rasulullah saw. bersabda: Jarak waktu antara dua tiupan sangkakala itu adalah empat puluh. Mereka bertanya: Wahai Abu Hurairah, apakah empat puluh hari? Ia menjawab: Aku tidak dapat menyebutkan. Mereka bertanya lagi: Empat puluh bulan? Ia menjawab: Aku tidak dapat menyebutkan. Mereka bertanya lagi: Empat puluh tahun? Ia menjawab: Aku tidak dapat menyebutkan. Kemudian Rasulullah saw. bersabda lagi: Lalu Allah menurunkan hujan, sehingga mayat-mayat tumbuh (bangkit) seperti tumbuhnya tanaman sayuran. Tidak ada satu bagian tubuh manusia kecuali semua telah hancur selain satu tulang, yaitu tulang ekornya dan dari tulang itulah jasad manusia akan disusun kembali pada hari kiamat. (Shahih Muslim No.5253)',
      },
      {
        'arabic': '',
        'indo':
            'Dari Abi Hurairah ra., ia berkata: "Ketika Rasulullah saw. sedang dalam perjalanan suatu majlis berbincang dengan sekelompok orang (para sahabat), datanglah kepada beliau seorang desa yang lantas saja bertanya: "Kapankah hari kiamat itu?" Rasulullah saw. meneruskan pembicaraannya. Sebagian orang berbisik: "Beliau (Rasulullah) mendengar apa yang ditanyakan orang itu, tetapi tidak suka apa yang ditanyakan itu." Yang lain berkata: "Tidak, belia tidak mendengar." Setelah pembicaraan beliau selesai, beliau bertanya: "Mana orang yang bertanya tentang hari kiamat tadi?" Orang yang bertanya menyahut: "Ini aku wahai Rasulullah." Rasulullah bersabda: "Apabila amanat telah disia-siakan, maka tunggulah hari kiamat." Orang itu bertanya: "Bagaimana menyia-nyiakan amanat itu?" Rasulullah bersabda: "Apabila suatu urusan diserahkan kepada orang yang bukan ahlinya, maka tunggulah hari kiamat."(HR. Bukhari)',
      },
      {
        'arabic': '',
        'indo':
            'Dari Abu Sa\'id Al Khudriy ra. bahwasanya Nabi saw. bersabda: "Nanti pada akhir zaman ada di antara pemimpin-pemimpin kalian yang menabur-naburkan uang dan tidak bisa dihitung."(HR. Muslim)',
      },
      {
        'arabic': '',
        'indo':
            'Dari Abu Musa Al Asy\'ariy ra. bahwasanya Nabi saw. bersabda: "Akan datang kepada manusia suatu zaman dimana seseorang berkeliling mengeluarkan sedekah yang berupa emas, tetapi tidak ada seorangpun yang bersedia menerimanya. Dan akan kelihatan seorang laki-laki diikuti oleh empat puluh perempuan yang ingin berlindung kepadanya, karena sedikitnya orang laki-laki dan banyaknya orang perempuan."(HR. Muslim)',
      },
      {
        'arabic': '',
        'indo':
            'Di antara tanda-tanda (datangnya) kiamat ialah: ada orang di dalam masjid tapi tidak melaksanakan shalat dua rakaat, orang tidak lagi mengucapkan salam kecuali kepada orang yang dikenalnya, dan anak kecil menyuruh-nyuruh orang tua.(HR. At Thabrani dari Ibnu Mas\'ud)',
      },
      {
        'arabic': '',
        'indo':
            'Ketika hari kiamat telah dekat, maka manusia semakin rakus pada dunia dan semakin jauh dari Allah.(HR. Hakim dari Ibnu Mas\'ud)',
      },
      {
        'arabic': '',
        'indo':
            'Di akhir zaman sedikit sekali ditemukan uang yang halal dan saudara (teman) yang dapat dipercaya.(HR. Ibn Asakir dari Ibn Umar)',
      },
      {
        'arabic': '',
        'indo':
            'Akan datang kepada manusia suatu zaman dimana orang mukmin di waktu itu lebih hina daripada dombanya.(HR. Ibn Asakir dari Anas)',
      },
      {
        'arabic': '',
        'indo':
            'Di akhir zaman nanti banyak orang ahli ibadah yang bodoh dan ahli qira\'ah yang fasik.(HR. Abu Na\'im)',
      },
      {
        'arabic': '',
        'indo':
            'Akan datang suatu zaman dimana manusia tak lagi mempedulikan apakah yang dia cari itu halal ataukah haram.(HR. Bukhari dari Abu Hurairah)',
      },
      {
        'arabic': '',
        'indo':
            'Rasullah saw. bersabda: "Akan datang kepada umatku suatu zaman dimana mereka mencintai lima perkara dan melupakan lima perkara, yaitu: mereka mencintai dunia dan melupakan akhirat, mencintai hidup dan melupakan mati, mencintai gedung dan melupakan kubur, mencintai harta dan melupakan hari penghitungan, dan mencintai makhluk dan melupakan Khalik.',
      },
      {
        'arabic': '',
        'indo':
            '“Pada akhir zaman akan terjadi longsor, kerusuhan dan perubahan muka. “Ada yang bertanya kepada Rasulullah saw;” Wahai Rasulullah bilakah hal ini terjadi? “Beliau menjawab,” Apabila telah merajalela bunyian (musik) dan penyanyi-penyanyi wanita “(H.R. Ibnu Majah)',
      },
      {
        'arabic': '',
        'indo':
            'Ketika hari kiamat sudah dekat, jadi insan terus rakus pada dunia serta terus jauh dari Allah.(HR. Hakim dari Ibnu Mas\'ud)',
      },
      {
        'arabic': '',
        'indo':
            'Di akhir zaman sedikit sekali ditemukan uang yg halal serta saudara (teman) yg mampu dipercaya.(HR. Ibn Asakir dari Ibn Umar)',
      },
      {
        'arabic': '',
        'indo':
            'Rasulullah SAW bersabda; “Bahwasannya Allah SWT tidak akan menghilangkan ilmu dengan sekaligus dari manusia. Namun Allah akan menghilangkan ilmu agama dengan mematikan para ulama besar. Apabila para ulama sudah tidak ada, maka orang-orang akan memilih orang yang jahil sebagai pemimpinnya. Para pemimpin itu akan berfatwa tanpa ilmu pengetahuan. Mereka sesat dan akan menyesatkan orang lain. (HR. Muslim)',
      },
      {
        'arabic': '',
        'indo':
            'Rasulullah bersabda: “Kiamat akan terjadi bila musim penhujan akan melanda bumi sepanjang tahun, sedangkan tanah tidak menumbuhkan sedikit pun tanaman.” (HR. Ahmad)',
      },
      {
        'arabic': '',
        'indo':
            'Dan tinggallah manusia-manusia yang buruk, yang seenaknya melakukan persetubuhan seperti himar (keledai). Maka pada zaman mereka inilah kiamat akan datang.”(Imam Muslim)',
      },
      {
        'arabic': '',
        'indo':
            '“Pada akhir zaman akan terjadi longsor, kerusuhan dan perubahan muka. “Ada yang bertanya kepada Rasulullah saw;” Wahai Rasulullah bilakah hal ini terjadi?” Beliau menjawab, “Apabila telah merajalela bunyian (musik) dan penyanyi-penyanyi wanita.” (H.R. Ibnu Majah)',
      },
      {
        'arabic': '',
        'indo':
            '“Tidak akan datang kiamat sehingga banyak perbuatan dan perkataan keji, memutuskan hubungan silaturrahim dan sikap yang buruk dalam bertetangga.” H.R. Ahmad dan Hakim',
      },
      {
        'arabic': '',
        'indo':
            '“Tidak akan datang hari kiamat sehingga Allah mengambil orang-orang yang baik & ahli agama di muka bumi, maka tidak ada yang tinggal padanya kecuali orang-orang yang hina dan buruk yang tidak mengetahui yang ma’ruf dan tidak mengingkari kemungkaran.” H.R. Ahmad',
      },
      {
        'arabic': '',
        'indo':
            '“Di antara tanda-tanda telah dekatnya hari kiamat ialah menggelembung (membesarnya) bulan sabit.” H.R. Thabrani.',
      },
      {
        'arabic': '',
        'indo':
            '“Pada akhir zaman akan muncul pembohong-pembohong besar yang datang kepadamu dengan membawa berita-berita yang belum pernah kamu dengar dan belum pernah didengar oleh ayah kamu sebelumnya, karena itu jauhkanlah dirimu dari mereka agar mereka tidak menyesatkanmu dan memfitnahmu.” H.R. Muslim',
      },
      {
        'arabic': '',
        'indo':
            '“Sesungguhnya sebelum datangnya hari kiamat akan banyak kesaksian palsu dan disembunyikan kesaksian yang benar.” H.R. Ahmad',
      },
      {
        'arabic': '',
        'indo':
            '“Tidak akan datang hari kiamat sehingga negeri Arab kembali menjadi padang rumput dan sungai-sungai” H.R. Muslim.',
      },
      {
        'arabic': '',
        'indo':
            '“Pada akhir zaman akan muncul suatu kaum yang mencelupi rambut mereka dengan warna hitam seperti ‘bulu merpati’ yang mereka itu tidak akan mencium bau surga.” H.R. Abu Daud dan Nasai.',
      },
      {
        'arabic': '',
        'indo':
            'Dari Ubadah bin Shomit ia berkata, Rasulullah shallallahu alaihi wa sallam bersabda: “Sesungguhnya Dajjal adalah seorang laki-laki pendek, berkaki bengkok, keriting, buta sebelah mata, terhapus mata, tidak menonjol dan tidak bermata cekung. Jika disamarkan kepadamu, maka ketahuilah bahwa Tuhanmu Subhanahu wa Ta’ala tidak buta sebelah matanya.” (HR. Ahmad)',
      },
      {
        'arabic': '',
        'indo':
            'Dari Abu Hurairah dari Nabi shollallahu alaihi wa sallam, beliau bersabda: “Bersegeralah beramal shaleh (sebelum) enam perkara: terbitnya matahari dari tempat tenggelamnya (sebelah barat) atau kabut atau Dajjal atau binatang atau kematian atau hari kiamat.” (HR. Muslim)',
      },
      {
        'arabic': '',
        'indo':
            'Dari Abu Hurairoh, sesungguhnya Rasulullah shollallahu alaihi wa sallam bersabda, “Tidak akan terjadi hari kiamat sehingga terbit matahari dari sebelah barat. Apabila matahari telah terbit dari sebelah barat maka semua manusia akan beriman, pada hari itu: tidaklah bermanfaat lagi iman seseorang bagi dirinya sendiri yang belum beriman sebelum itu, atau dia (belum) mengusahakan kebaikan dalam masa imannya.” (Muttafaq alaihi)',
      },
      {
        'arabic': '',
        'indo':
            'Dari Abu Hurairah, ia berkata, Rasulullah shollallahu alaihi wa sallam bersabda: “Jika telah keluar tiga perkara maka tidaklah bermanfaat lagi iman seseorang bagi dirinya sendiri yang belum beriman sebelum itu, atau dia (belum) mengusahakan kebaikan dalam masa imannya: terbitnya matahari dari sebelah Barat, Dajjal dan binatang melata dari bumi.” (HR. Muslim)',
      },
      {
        'arabic': '',
        'indo':
            'Dari Anas bin Malik, sesungguhnya Abdullah bin Salam ketika masuk Islam, ia bertanya kepada Nabi shollallahu alaihi wa sallam tentang beberapa masalah. Di antaranya: “apakah pertama-tama tanda hari kiamat?”Nabi shollallahu alaihi wa sallam menjawab, “Adapun pertama-tama tanda hari kiamat adalah adanya api yang menggiring manusia dari Timur ke Barat.” ( HR. Bukhari).',
      },
      {
        'arabic': '',
        'indo':
            'Sebagaimana telah disebutkan di dalam sebuah hadits Rasulullah SAW: “Tanda-tanda kiamat yang akan dirasakan oleh manusia adalah timbulnya berbagai penyakit menular yang mengakibatkan banyak orang yang meninggal karenanya.”',
      },
      {
        'arabic': '',
        'indo':
            '"Kiamat tidak akan berlaku kecuali apabila ilmu telah diangkat, banyaknya berlaku gempa bumi, timbulnya huru-hara dan banyak pergaduhan iaitu pembunuhan - Sahih Bukhari ”',
      },
      {
        'arabic': '',
        'indo':
            'Rasulullah SAW bersabda, “Sesunguhnya di antara tanda-tanda kiamat adalah terbukanya perzinaan secara bebas.” (HR. Bukhari)',
      },
      {
        'arabic': '',
        'indo':
            'Rasulullah SAW bersabda, “Hari kiamat ditandai dengan seringnya terjadi gempa bumi terjadi dimana-mana.” (HR. Bukhari)',
      },
      {
        'arabic': '',
        'indo':
            'Dalam sebuah hadist Rasulullah bersabda, “Akan ada pada akhir zaman dari umat manusia, lelaki yang berkendaraan super mewah untuk datang ke masjid. Sedangkan kau wanita banyak yang berpakaian telanjang.” (HR. Hakim)',
      },
      {
        'arabic': '',
        'indo':
            'Rasulullah SAW berdabda, “Suatu saat nanti akan adanya ancaman tentang dihancurkannya Ka’bah oleh orang-orang Habasyah.” (HR. Ahmad)',
      },
      {
        'arabic': '',
        'indo':
            'Dari Tsauban Ra. Berkata, Rasulullah shallallahu ‘alaihi wa sallam bersabda: “Hampir tiba suatu zaman di mana bangsa-bangsa dari seluruh dunia akan datang mengerumuni kamu bagaikan orang-orang yang kelaparan mengerumuni talam hidangan mereka". Maka salah seorang sahabat bertanya, “Apakah karena kami sedikit pada hari itu?" Rasulullah menjawab, “Bahkan kamu pada hari itu banyak sekali, tetapi kamu umpama buih di waktu banjir, dan Allah akan mencabut rasa gentar terhadap kamu dari hati musuh-musuh kamu, dan Allah akan melemparkan ke dalam hati kamu penyakit ‘wahan’". Seorang sahabat bertanya: “Apakah ‘wahan’ itu, hai Rasulullah?". Rasulullah menjawab: “Cinta dunia dan takut mati". (HR. Abu Daud).',
      },
      {
        'arabic': '',
        'indo':
            'Dari Sahl bin Saad as-Sa ‘idi Ra. ia berkata: Rasulullah Shallallahu ‘Alaihi wa Sallam bersabda: “Ya Allah! Jangan Engkau pertemukan aku dan mudah-mudahan kamu (sahabat) tidak bertemu dengan suatu zaman dikala para ulama sudah tidak diikuti lagi, dan orang yang penyantun sudah tidak dihiraukan lagi. Hati mereka seperti hati orang Ajam (pada fasiqnya), lidah mereka seperti lidah orang Arab (pada fasihnya).” (HR. Ahmad).',
      },
      {
        'arabic': '',
        'indo':
            'Dari Ali bin Abi Thalib Ra. ia berkata: Telah bersabda Rasulullah Shallallahu ‘Alaihi wa Sallam.: “Sudah hampir tiba suatu zaman, kala itu tidak ada lagi dari Islam kecuali hanya namanya, dan tidak ada dari Al-Qur’an kecuali hanya tulisannya. Masjid-masjid mereka indah, tetapi kosong dari hidayah. Ulama mereka adalah sejahat-jahat makhluk yang ada di bawah kolong langit. Dari merekalah keluar fitnah, dan kepada mereka fitnah itu akan kembali .” (HR. al-Baihaqi).',
      },
      {
        'arabic': '',
        'indo':
            'Dari Abu Hurairah Ra. bahwasanya Rasulullah Shallallahu ‘Alaihi wa Sallam bersabda: “Bersegeralah kamu beramal sebelum menemui fitnah (ujian berat terhadap iman) seumpama malam yang sangat gelap. Seseorang yang masih beriman di waktu pagi, kemudian di waktu sore dia sudah menjadi kafir, atau (Syak Perawi Hadits) seseorang yang masih beriman di waktu sore, kemudian pada keesokan harinya dia sudah menjadi kafir. Dia telah menjual agamanya dengan sedikit harta benda dunia “, (HR. Muslim).',
      },
      {
        'arabic': '',
        'indo':
            'Dari Anas Ra. berkata Rasulullah Shallallahu ‘Alaihi wa Sallam bersabda: ”Akan datang pada manusia suatu zaman saat itu orang yang berpegang teguh (sabar) di an tara mereka kepada agamanya laksana orang yang memegang bara api. (HR. Tirmidzi).',
      },
      {
        'arabic': '',
        'indo':
            'Dari Abu Malik Al-Asy’ari Ra. katanya Rasulullah Shallallahu ‘Alaihi wa Sallam bersabda; “Sesungguhnya akan ada sebagian dari umatku yang meminum khamar dan mereka menamakannya dengan nama yang lain. (Mereka meminum) sambi! diiringi dengan alunan musik dan suara biduanita. Allah Subhanahu wa Ta’ala akan menenggelamkan mereka ke dalam bumi (dengan gempa) dan Allah Subhanahu wa Ta’ala akan mengubah mereka menjadi kera atau babi.” (HR. Ibnu Majah).',
      },
      {
        'arabic': '',
        'indo':
            'Dari Abu Hurairah ra., ia berkata: "Rasulullah saw. bersabda: "Hari kiamat tidak akan datang sebelum sungai Eufrat memunculkan suatu bukit emas yang menimbulkan perang, dimana setiap seratus orang akan mati sembilan puluh sembilan, dan masing-masing orang di antara mereka itu berkata: "Semoga saya yang selamat."\nDalam sebuah riwayat dikatakan: "Sungai Eufrat nyaris memunculkan emas yang disimpannya, barangsiapa yang mendapatkannya, maka janganlah ia mengambil sesuatu daripadanya."(HR. Bukhari dan Muslim)',
      },
      {
        'arabic': '',
        'indo':
            'Dari Abi Hurairah ra., ia berkata: "Ketika Rasulullah saw. sedang dalam perjalanan sebuah majlis berbincang dengan sekelompok orang-orang (para sahabat), datanglah terhadap beliau seorang desa yg lantas saja bertanya: "Kapankah hari kiamat itu?" Rasulullah saw. meneruskan pembicaraannya. Sebagian orang-orang berbisik: "Beliau (Rasulullah) mendengar apa yg ditanyakan orang-orang itu, melainkan tidak suka apa yg ditanyakan itu." Yang lain berkata: "Tidak, muda tidak mendengar." Setelah pembicaraan beliau selesai, beliau bertanya: "Mana orang-orang yg bertanya mengenai hari kiamat tadi?" Orang yg bertanya menyahut: "Ini aku wahai Rasulullah." Rasulullah bersabda: "Apabila amanat sudah disia-siakan, jadi tunggulah hari kiamat." Orang itu bertanya: "Bagaimana menyia-nyiakan amanat itu?" Rasulullah bersabda: "Apabila sebuah urusan diserahkan terhadap orang-orang yg bukan ahlinya, jadi tunggulah hari kiamat."(HR. Bukhari)',
      },
      {
        'arabic': '',
        'indo':
            '“Kiamat tidak akan terjadi hingga matahari terbit dari barat. Kalau sudah terbit dari barat dan manusia menyaksikannya, mereka semua akan beriman. Dan itu adalah saat ketika iman seseorang tidak lagi bermanfaat kepada diri sendiri yang belum beriman sebelum itu, atau dia (belum) mengusahakan kebaikan dalam masa imannya. Kiamat pasti terjadi, sementara dua orang sedang melakukan transaksi pakaian, namun mereka tidak sempat berjual beli atau melipatnya. Kiamat pasti terjadi, sementara seseorang sudah bersiap meminum susu untanya, tetapi dia tidak ingat untuk menenggaknya. Kiamat pasti terjadi, sementara seseorang sedang mengolah tanahnya, namun dia tidak sempat menyiramnya. Dan kiamat pasti terjadi, sementara seseorang sedang menyuapkan makanan ke dalam mulutnya, tetapi dia tidak sempat memakannya.” (HR Bukhari dalam Kitab Ar Riqaaq)',
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
          'Hadist Tentang Hari Kiamat',
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
