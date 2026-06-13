import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';

class ShalatPage extends StatelessWidget {
  const ShalatPage({super.key});

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
            'عَنْ اَبِى هُرَيْرَةَ قَالَ: سَمِعْتُ رَسُوْلُ اللهِ ص يَقُوْلُ: اِنَّ اَوَّلَ مَا يُحَاسَبُ بِهِ اْلعَبْدُ يَوْمَ اْلقِيَامَةِ الصَّلاَةُ اْلمَكْتُوْبَةُ فَاِنْ اَتَمَّهَا وَ اِلاَّ قِيْلَ. اُنْظُرُوْا، هَلْ لَهُ مِنْ تَطَوُّعٍ؟ فَاِنْ كَانَ لَهُ تَطَوُّعٌ اُكْمِلَتِ اْلفَرِيْضَةُ مِنْ تَطَوُّعِهِ، ثُمَّ يُفْعَلُ بِسَائِرِ اْلاَعْمَالِ اْلمَفْرُوْضَةِ مِثْلُ ذلِكَ. الخمسة، فى نيل الاوطار 1: 345',
        'indo':
            'Dari Abu Hurairah, ia berkata : Saya mendengar Rasulullah SAW bersabda, “Sesungguhnya pertama-tama perbuatan manusia yang dihisab pada hari qiyamat, adalah shalat wajib. Maka apabila ia telah menyempurnakannya (maka selesailah persoalannya). Tetapi apabila tidak sempurna shalatnya, dikatakan (kepada malaikat), “Lihatlah dulu, apakah ia pernah mengerjakan shalat sunnah ! Jika ia mengerjakan shalat sunnah, maka kekurangan dalam shalat wajib disempurnakan dengan shalat sunnahnya”. Kemudian semua amal-amal yang wajib diperlakukan seperti itu”. [HR. Khamsah, dalam Nailul Authar juz 1, hal. 345]',
      },
      {
        'arabic': 'مَنْ صَلَّى الْبَرْدَيْنِ دَخَلَ الْجَنَّة',
        'indo':
            '“Barangsiapa yang mengerjakan shalat bardain (yaitu shalat shubuh dan ashar) maka dia akan masuk surga.” (HR. Bukhari no. 574 dan Muslim no. 635)',
      },
      {
        'arabic':
            'بَيْنَ الرَّجُلِ وَبَيْنَ الشِّرْكِ وَالْكُفْرِ تَرْكُ الصَّلاَةِ',
        'indo':
            '“(Pembatas) antara seorang muslim dan kesyirikan serta kekafiran adalah meninggalkan shalat.” (HR. Muslim no. 257)',
      },
      {
        'arabic':
            'مَنْ صَلَّى صَلَاةَ الصُّبْحِ فَهُوَ فِي ذِمَّةِ اللَّهِ فَلَا يَطْلُبَنَّكُمْ اللَّهُ مِنْ ذِمَّتِهِ بِشَيْءٍ فَإِنَّهُ مَنْ يَطْلُبْهُ مِنْ ذِمَّتِهِ بِشَيْءٍ يُدْرِكْهُ ثُمَّ يَكُبَّهُ عَلَى وَجْهِهِ فِي نَارِ جَهَنَّمَ',
        'indo':
            '“Barangsiapa yang shalat subuh maka dia berada dalam jaminan Allah. Oleh karena itu jangan sampai Allah menuntut sesuatu kepada kalian dari jaminan-Nya. Karena siapa yang Allah menuntutnya dengan sesuatu dari jaminan-Nya, maka Allah pasti akan menemukannya, dan akan menelungkupkannya di atas wajahnya dalam neraka jahannam.” (HR. Muslim no. 163)',
      },
      {
        'arabic':
            'الْعَهْدُ الَّذِى بَيْنَنَا وَبَيْنَهُمُ الصَّلاَةُ فَمَنْ تَرَكَهَا فَقَدْ كَفَرَ',
        'indo':
            '“Perjanjian antara kami dan mereka (orang kafir) adalah shalat. Barangsiapa meninggalkannya maka dia telah kafir.” (HR. Ahmad, Tirmidzi, An Nasa’i, Ibnu Majah.)',
      },
      {
        'arabic':
            'إِنَّ أَثْقَلَ صَلَاةٍ عَلَى الْمُنَافِقِينَ صَلَاةُ الْعِشَاءِ وَصَلَاةُ الْفَجْرِ وَلَوْ يَعْلَمُونَ مَا فِيهِمَا لَأَتَوْهُمَا وَلَوْ حَبْوًا',
        'indo':
            '“Sesungguhnya shalat yang paling berat dilaksanakan oleh orang-orang munafik adalah shalat isya dan shalat subuh. Sekiranya mereka mengetahui keutamaan keduanya, niscaya mereka akan mendatanginya sekalipun dengan merangkak.” (HR. Bukhari no. 657 dan Muslim no. 651)',
      },
      {
        'arabic':
            'بَيْنَ العَبْدِ وَبَيْنَ الكُفْرِ وَالإِيْمَانِ الصَّلَاةُ فَإِذَا تَرَكَهَا فَقَد_أَشْرَكَ',
        'indo':
            '“Pemisah Antara seorang hamba dengan kekufuran dan keimanan adalah shalat. Apabila dia meninggalkannya, maka dia melakukan kesyirikan.” (HR. Ath Thobariy dengan sanad shohih.)',
      },
      {
        'arabic':
            'عَنْ عَمْرِو بْنِ شُعَيْبٍ عَنْ اَبِيْهِ عَنْ جَدّهِ قَالَ: قَالَ رَسُوْلُ اللهِ ص. مُرُوْا صِبْيَانَكُم بِالصَّلاَةِ لِسَبْعِ سِنِيْنَ وَ اضْرِبُوْهُمْ عَلَيْهَا لِعَشْرِ سِنِيْنَ وَ فَرّقُوْا بَيْنَهُمْ فِى اْلمَضَاجِعِ. احمد و ابو داود، فى نيل الاوطار 1: 348',
        'indo':
            'Dari ‘Amr bin Syu’aib, dari ayahnya, dari datuknya, ia berkata : Rasulullah SAW bersabda, “Suruhlah anak-anak kecilmu melakukan shalat pada (usia) tujuh tahun, dan pukullah mereka (bila lalai) atasnya pada (usia) sepuluh tahun, dan pisahkanlah mereka pada tempat-tempat tidur”. [HR. Ahmad dan Abu Dawud, dalam Nailul Authar juz 1, hal. 348]',
      },
      {
        'arabic':
            'مَنْ تَرَكَ صَلاَةً مَكْتُوبَةً مُتَعَمِّداً فَقَدْ بَرِئَتْ مِنْهُ ذِمَّةُ اللَّهِ',
        'indo':
            '“Barangsiapa meninggalkan shalat yang wajib dengan sengaja, maka janji Allah terlepas darinya. ” (HR. Ahmad no.22128.)',
      },
      {
        'arabic':
            'عَنْ اَنَسِ بْنَ مَالِكٍ رض قَالَ: فُرِضَتْ عَلَى النَّبِيّ ص الصَّلَوَاتُ لَيْلَةَ اُسْرِيَ بِهِ خَمْسِيْنَ، ثُمَّ نُقِصَتْ حَتَّى جُعِلَتْ خَمْسًا. ثُمَّ نُوْدِيَ: يَا مُحَمَّدُ اِنَّهُ لاَ يُبَدَّلُ اْلقَوْلُ لَدَيَّ وَ اِنَّ لَكَ بِهذِهِ اْلخَمْسِ خَمْسِيْنَ. احمد و النسائى و الترمذى و صححه، فى نيل الاوطار 1: 334',
        'indo':
            'Dari Anas bin Malik RA, ia berkata : Diwajibkan shalat itu pada Nabi SAW pada malam Isra’, lima puluh kali. Kemudian dikurangi sehingga menjadi lima kali, kemudian Nabi dipanggil, “Ya Muhammad, sesungguhnya tidak diganti (diubah) ketetapan itu di sisi-Ku. Dan sesungguhnya lima kali itu sama dengan lima puluh kali”. [HR. Ahmad, Nasai dan Tirmidzi. Dan Tirmidzi menshahihkannya, dalam Nailul Authar juz 1, hal. 334]',
      },
      {
        'arabic': 'رَأْسُ الأَمْرِ الإِسْلاَمُ وَعَمُودُهُ الصَّلاَةُ',
        'indo':
            '”Inti (pokok) segala perkara adalah Islam dan tiangnya (penopangnya) adalah shalat.” (HR. Tirmidzi no. 2825.)',
      },
      {
        'arabic':
            'بُنِىَ الإِسْلاَمُ عَلَى خَمْسٍ شَهَادَةِ أَنْ لاَ إِلَهَ إِلاَّ اللَّهُ وَأَنَّ مُحَمَّدًا عَبْدُهُ وَرَسُولُهُ وَإِقَامِ الصَّلاَةِ وَإِيتَاءِ الزَّكَاةِ وَحَجِّ الْبَيْتِ وَصَوْمِ رَمَضَانَ',
        'indo':
            '”Islam dibangun atas lima perkara, yaitu : (1) bersaksi bahwa tidak ada sesembahan yang benar untuk diibadahi kecuali Allah dan bersaksi bahwa Muhammad adalah utusan-Nya, (2) mendirikan shalat, (3) menunaikan zakat, (4) naik haji ke Baitullah (bagi yang mampu, pen), (5) berpuasa di bulan Ramadhan.” (Lafadz ini adalah lafadz Muslim no. 122)',
      },
      {
        'arabic':
            'عَنْ عَبْدِ اللهِ بْنِ عَمْرِو بْنِ اْلعَاصِ عَنِ النَّبِيّ ص اَنَّهُ ذَكَرَ الصَّلاَةَ يَوْمًا فَقَالَ: مَنْ حَافَظَ عَلَيْهَا كَانَتْ لَهُ نُوْرًا وَ بُرْهَانًا وَ نَجَاةً يَوْمَ اْلقِيَامَةِ. وَ مَنْ لَمْ يُحَافِظ_عَلَيْهَا لَمْ تَكُنْ لَهُ نُوْرًا وَ لاَ بُرْهَانًا وَ لاَ نَجَاةً. وَ كَانَ يَوْمَ اْلقِيَامَةِ مَعَ قَارُوْنَ وَ فِرْعَوْنَ وَ هَامَانَ وَ اُبَيّ بْنِ خَلَفٍ. احمد، فى نيل الاوطار 1: 343',
        'indo':
            'Dari ‘Abdullah bin ‘Amr bin Al-’Ash, dari Nabi SAW bahwa beliau pada suatu hari menerangkan tentang shalat, lalu beliau bersabda, “Barangsiapa memeliharanya, maka shalat itu baginya sebagai cahaya, bukti dan penyelamat pada hari qiyamat. Dan barangsiapa tidak memeliharanya, maka shalat itu baginya tidak merupakan cahaya, tidak sebagai bukti, dan tidak (pula) sebagai penyelamat. Dan adalah dia pada hari qiyamat bersama-sama Qarun, Fir’aun, Haaman, dan Ubay bin Khalaf”. [HR. Ahmad, dalam Nailul Authar juz 1, hal. 343]',
      },
      {
        'arabic':
            'سَتَكُونُ أُمَرَاءُ فَتَعْرِفُونَ وَتُنْكِرُونَ فَمَنْ عَرَفَ بَرِئَ وَمَنْ أَنْكَرَ سَلِمَ وَلَكِنْ مَنْ رَضِىَ وَتَابَعَ ... لاَ مَا صَلَّوْا',
        'indo':
            'Dalam Shohih Muslim dari Ummu Salamah radhiyallahu ‘anha berkata bahwa Nabi shallallahu ‘aimhi wa sallam bersabda, “Suatu saat akan datang para pemimpin. Mereka melakukan amalan ma’ruf (kebajikan) dan kemungkaran (kejelekan). Barangsiapa mengetahui bahwa itu adalah kemungkaran maka dia telah bebas. Barangsiapa mengingkarinya maka dia selamat. Sedangkan (dosa dan hukuman adalah) bagi siapa yang ridho dan mengikutinya.” Kemudian para shahabat berkata, “Apakah kami boleh memerangi mereka.” Rasulullah shallallahu ‘alaihi wa sallam menjawab, “Jangan selama mereka mengerjakan shalat.” (HR. Muslim no. 4906.)',
      },
      {
        'arabic':
            'عَنْ اَبِى سَعِيْدِ اْلخُدْرِيّ قَالَ: بَعَثَ عَلِيٌّ وَ هُوَ بِاْليَمَنِ اِلَى النَّبِيّ ص بِذُهَيْبَةٍ فَقَسَّمَهَا بَيْنَ اَرْبَعَةٍ. فَقَالَ رَجُلٌ: يَا رَسُوْلَ اللهِ، اِتَّقِ اللهَ. فَقَالَ: وَيْلَكَ اَوَلَسْتُ اَحَقَّ اَهْلِ اْلاَرْضِ اَنْ يَتَّقِيَ اللهَ! ثُمَّ وَلَّى الرَّجُل... فَقَالَ خَالِدُ بْنُ اْلوَلِيْدِ: يَا رَسُوْلَ اللهِ، اَلاَ اَضْرِبُ عُنُقَهُ؟ فَقَالَ: لاَ، لَعَلَّهُ اَنْ يَكُوْنَ يُصَلّى. فَقَالَ خَالِدٌ: وَ كَمْ مِنْ مُصَلّ يَقُوْلُ بِلِسَانِهِ مَا لَيْسَ فِى قَلْبِهِ. فَقَالَ رَسُوْلُ اللهِ ص: اِنّى لَمْ اُوْمَرْ اَنْ اُنَقّبَ عَنْ قُلُوْبِ النَّاسِ وَ لاَ اَشُقَّ بُطُوْنَهُمْ. مختصر من حديث احمد و البخارى و مسلم، فى نيل الاوطار 1: 338',
        'indo':
            'Dari Abu Sa’id Al-Khudriy, ia berkata : Ali yang waktu itu berada di Yaman, pernah mengirim sekeping emas pada Nabi SAW. Lalu Nabi SAW membagikannya kepada empat orang. Kemudian ada seorang laki-laki berkata, “Ya Rasulullah, takutlah kepada Allah (karena menganggap Nabi SAW tidak adil dalam pembagian itu). Lalu Nabi SAW menjawab, “Celaka kamu, bukankah aku orang yang paling baik diantara penduduk bumi ini yang bertaqwa kepada Allah ?”. Kemudian laki-laki itu berpaling. Lalu Khalid bin Walid bertanya, “Ya Rasulullah, bolehkah aku penggal lehernya ?”. Nabi SAW menjawab, “Jangan, barangkali dia melakukan shalat”. Khalid berkata, “Berapa banyak orang yang shalat yang hanya menyatakan dengan lisannya saja, tetapi tidak demikian di dalam hatinya”. Lalu Rasulullah SAW menjawab, “Sesungguhnya aku tidak diperintahkan untuk menyelidiki hati-hati manusia, dan tidak pula untuk membelah perut-perut mereka”. [Diringkas dari suatu hadits yang diriwayatkan oleh Ahmad, Bukhari dan Muslim, dalam Nailul Authar juz 1, hal. 338]',
      },
      {
        'arabic': '',
        'indo':
            '“Shalat adalah sebaik-baik amalan yang ditetapkan Allah untuk hamba-Nya.”',
      },
      {
        'arabic': '',
        'indo':
            'Abdullah ibnu Mas\'ud Ra berkata, \"Aku bertanya kepada Rasulullah, \"Ya Rasulullah, amal perbuatan apa yang paling afdol?\" Beliau menjawab, \"Shalat tepat pada waktunya.\" Aku bertanya lagi, \"Lalu apa lagi?\" Beliau menjawab, \"Berbakti kepada kedua orang tua.\" Aku bertanya lagi, \"Kemudian apa lagi, ya Rasulullah?\" Beliau menjawab, \"Berjihad di jalan Allah.\" (HR. Bukhari)',
      },
      {
        'arabic': '',
        'indo':
            '“Dari Abu Dzar r.a., bahwasanya Rasulullah saw. keluar dari rumahnya ketika musim dingin, waktu itu daun-daun berguguran. Rasulullah saw. mengambil ranting dari sebatang pohon, sehingga daun-daun di ranting itupun banyak berguguran. Kemudian Rasulullah saw. bersabda, Wahai Abu Dzar!’ Saya menyahut, ‘Labbaik, ya Rasulullah.’ Lalu beliau bersabda, ‘Sesungguhnya seorang hamba yang muslim, jika menunaikan shalat dengan ikhlas karena Allah, maka dosa-dosanya akan berguguran seperti gugurnya daun-daun ini dari pohonnya.” (Hr. Ahmad -At Targhib)',
      },
      {
        'arabic': '',
        'indo':
            'Shalat dua rakaat (yakni shalat sunnah fajar) lebih baik dari dunia dan segala isinya. (HR. Tirmidzi)',
      },
      {
        'arabic': '',
        'indo':
            'Dari Abu Hurairah r.a. berkata, “Saya mendengar Rasulullah saw. ber-sabda, ‘Bagaimana pendapat kalian, jika di depan rumah salah seorang dari kalian terdapat sebuah sungai yang mengalir dan dia mandi di dalam¬nya lima kali sehari, apakah akan tersisa kotoran di tubuhnya?’ Mereka menjawab, ‘Tidak akan tersisa kotoran di tubuhnya sedikitpun.’ Rasulullah saw. bersabda, ‘Begitulah perumpamaan shalat lima waktu, dengannya Allah akan mengampuni dosa-dosa.” (Hr. Bukhari, Muslim, Tirmidzi dan Nasai)',
      },
      {
        'arabic': '',
        'indo':
            'Barangsiapa meninggalkan shalat dengan sengaja maka dia kafir terang-terangan. (HR. Ahmad)',
      },
      {
        'arabic': '',
        'indo':
            'Dari Hudzaifah r.a. dia berkata, “Apabila Rasulullah saw. mengalami kesulitan, maka beliau segera melaksakan shalat.” (Hr. Ahmad dan Abu Dawud)',
      },
      {
        'arabic': '',
        'indo':
            'Shalat pada awal waktu adalah keridhoan Allah dan shalat pada akhir waktu adalah pengampunan Allah. (HR. Tirmidzi)',
      },
      {
        'arabic': '',
        'indo':
            '“Dan mintalah pertolongan dengan sabar dan shalat’dan sesungguhnya hal yang demikian itu amat berat, kecuali bagi orang-orang yang khusyu.”',
      },
      {
        'arabic': '',
        'indo':
            'Barangsiapa lupa shalat atau ketiduran maka tebusannya ialah melakukannya pada saat dia ingat. (HR. Ahmad)',
      },
      {
        'arabic': '',
        'indo':
            '“Dari Abu Hurairah r.a., “Dua orang dari kabilah Baliy satu kaum dari kabilah keturunan Qudaah telah memeluk Islam. Maka salah seorang darinya telah mati syahid, dan seorang lagi hidup selama satu tahun. Thalhah bin Ubaidillah r.a. berkata, “Saya melihat di dalam mimpi, bahwa orang yang meninggal setahun kemudian itu dimasukkan ke dalam surga lebih dahulu daripada si syahid. Saya merasa heran atas peristiwa itu. Maka pada pagi harinya saya menceritakannya kepada Nabi saw., atau hal itu diceritakan oleh orang lain (yang mendengarnya dari saya) kepada Rasulullah saw.. Beliau saw. bersabda, ‘Bukankah dia telah berpuasa sebulan penuh pada bulan Ramadhan setelah kematian temannya, dan mengerjakan shalat sebanyak 6.000 rakaat, dan beberapa rakaat lagi dalam shalatnya selama satu tahun?’” (Hr. Ahmad)',
      },
      {
        'arabic': '',
        'indo':
            'Nabi Saw ditanya tentang shalat, \"Bagaimana shalat yang paling afdol?\" Beliau menjawab, \"Berdiri yang lama.\" (HR. Muslim)',
      },
      {
        'arabic': '',
        'indo':
            '“Diriwayatkan oleh Ibnu Mas’ud r.a., dari Rasulullah saw., bahwa beliau bersabda, “Setiap tiba waktu shalat, seorang malaikat diutus untuk menyeru, ‘Wahai anak Adam, bangun dan padamkanlah api yang sedang kalian nyalakan untuk membakar diri kalian.’ Maka orang-orangpun berdiri, lalu bersuci dan melaksanakan shalat Zhuhur, sehingga dosa-dosa antara Shubuh hingga Zhuhur diampuni. Apabila datang waktu Ashar, seperti itu juga, waktu Maghrib seperti itu juga, waktu Isya seperti itu juga, setelah itu mereka tidur. Maka ada yang bermalam dengan kebaikan dan ada juga yang bermalam dengan keburukan. (Hr. Thabrani)',
      },
      {
        'arabic': '',
        'indo':
            'Maukah aku beritahu apa yang dapat menghapus dosa-dosa dan mengangkat derajat?\" Para sahabat menjawab: \"Baik ya Rasulullah.\" Beliau berkata, \"Berwudhu dengan baik, menghilangkan kotoran-kotoran, banyak langkah diayunkan menuju mesjid, dan menunggu shalat (Isya) sesudah shalat (Maghrib). Itulah kewaspadaan (kesiagaan).\" (HR. Muslim)',
      },
      {
        'arabic': '',
        'indo':
            'Dari Abu Qatadah bin Rib’i r.a., Rasulullah saw. bersabda bahwa Allah Swt. berfirman, “Sesungguhya Aku telah mewajibkan shalat lima waktu kepada umatmu. Dan Aku telah berjanji pada diri-Ku, bahwa barangsiapa yang menjaga shalat pada waktunya, niscaya akan Aku masukkan ke dalam surga dengan jaminan-Ku. Dan barangsiapa yang tidak menjaga shalatnya, maka Aku tidak memberi jaminan baginya.” (Hr. Abu Dawud dan Ibnu Majah)',
      },
      {
        'arabic': '',
        'indo':
            'Paling dekat seorang hamba kepada Robbnya ialah ketika ia bersujud maka perbanyaklah do\'a (saat bersujud) (HR. Muslim)',
      },
      {
        'arabic': '',
        'indo':
            'Dari Ibnu Salman r.a. berkata, “Seorang lelaki dari kalangan sahabat berkata kepada Rasulullah saw, ‘Ketika kami menaklukkan kota Khaibar dalam suatu peperangan, orang-orang mulai mengeluarkan harta rampasan perang yang terdiri dari berbagai macam barang dan tawanan. Maka orang-orang pun mulai berjual beli dengan harta rampasan perangnya. Tiba-tiba datang seorang lelaki kepada Rasulullah saw. dan berkata, “Wahai Rasulullah, sesungguhya pada hari ini saya telah memperoleh keuntungan besar dan tidak ada seorang pun dari penduduk lembah ini yang dapat menyamai keuntungan saya.” Dengan terheran-heran Rasulullah saw. bertanya, “Berapa keuntungan yang engkau dapatkan?” Dia menjawab, “Saya terus menerus berjual beli sehingga mendapatkan keuntungan 300 Uqiyah.” Rasulullah saw. bersabda, “Maukah aku beritahukan kepadamu sebaik-baik orang yang mendapat keuntungan?” Dia bertanya, “Apakah itu, ya Rasulullah?” Beliau saw. menjawab, “Dua rakaat shalat sunnat setelah shalat fardhu.” (Hr. Abu Dawud)',
      },
      {
        'arabic': '',
        'indo':
            'Paling afdol (utama) shalat seorang (adalah) di rumahnya kecuali (shalat) yang fardhu (lima waktu). (HR. Bukhari dan Muslim)',
      },
      {
        'arabic': '',
        'indo':
            'Perbanyaklah sujud kepada Allah, sesungguhnya bila sujud sekali Allah akan mengangkatmu satu derajat dan menghapus satu dosamu. (HR. Muslim)',
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
          'Hadist Tentang Shalat',
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
