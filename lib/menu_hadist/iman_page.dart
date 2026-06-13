import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';

class ImanPage extends StatelessWidget {
  const ImanPage({super.key});

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
            'لِلنَّاسِ فَأَتَاهُ رَجُلٌ فَقَالَ : مَاالْاِيْمَانُ؟ قَالَ : الْاِيْمَانُ اَنْ تُؤْمِنُ بِالله وَمَلَائِكَتِهِ وَبِلقَائِهِ وَبِرُسُلِهِ وَتُؤْمِنَ بِالبَعْثِ،قَالَ:مَاالْاِسْلاَمُ؟ قَالَ: الْاِسْلاَمُ اَنْ تَعْبُدَاللهَ وَلَاتُشْرِكْ بِهِ وَتُقِيْمَ الصَّـلَاةَ وَتُؤَدِّىَ الزَّكَاةَ الْمَفْرُوْضَةَ وَتَصُوْمَ رَمَضَانَ. قَالَ: مَاالْاِحْسَانُ؟ قَالَ : اَنْ تَعْبُدَاللهَ كَأَنَّكَ تَرَاهُ، فَأِنهُ يَرَاكَ. قَالَ: مَتَى السَّـاعَةُ؟ قَالَ: مَااْلمسْـئُوْلُ عَنْهَا بِأَعْلَمَ مِنَ السَّـائِلِ، وَسَأُخْبِرُكَ عَنْ اَشْرَاطِهَا، اِذَا وَلَدَتِ الاَمَةُ رَبَّهَا، وَاِذَاَ تَطَاوَلَ رُعَاةُ الْاِبِلِ الْبَهْمُ فِى الْبُنْيَانِ، فِى خَمْسٍ لَايَعْلَمُهُنَّ اِلّااللهُ. ثُمَّ تَلاَ النَّبِىُّ ص م اِنَّ اللهَ عِنْدَهُ عِلْمُ السّـاعَةِ،الآية. ثُمَّ اَدْبَرَ. فَقَلَ: رُدُّوْهُ، فَلَمْ يَرَوْا شَيْئاً.فَقَلَ: هَذاَ جِبْرِيْلُ جَاءَ يُعَلِّمُ النَّاسَ دِيْنَهُمْ.',
        'indo':
            'Artinya : Hadits Abu Hurairah ra. Dimana ia berkata : “pada suatu hari Nabi SAW. Berada di tengah-tengah para sahabat, lalu ada seseorang datang kepada beliau lantas bertanya : “Apakah iman itu?”. Beliau menjawab : “Iman adalah kamu percaya kepada Allah dan malaikatNya, percaya dengan adanya pertemuan denganNya, dan dengan adanya rasul-rasulNya, dan kamu percaya dengan adanya hari kebangkitan (setelah mati)”. Ia bertanya : “Apakah Islam itu?”. Beliau menjawab : “Islam yaitu kamu yang menyembah kepada Allah dan tidak mempersekutukanNya, mendirikan shalat, menunaikan zakat yang diwajibkan, dan berpuasa pada bulan ramadhlan”. Ia bertanya : “Apakah Ihsan itu?”. Beliau menjawab : “kamu menyembah Allah seakan-akan kamu melihatNya, dan jika kamu tidak bisa (seakan-akan) melihatNya maka (beryakinlah) bahwa sesungguhnya Allah melihat kamu”. Ia bertanya : “Kapan hari kiamat itu?”. Beliau menjawab : “Orang yang ditanya tentang hari kiamat itu tidak lebih tahu daripada orang yang bertanya. Akan tetapi aku akan memberitahukan kepadamu tentang tanda-tandanya (yaitu)apabila seorang budak perempuan melahirkan tuannya, apabila pengembala unta dan ternak berlomba-lomba dalam bangunan; dalam lima hal tidak mengetahuinya kecuali Allah”. Kemudian Nabi SAW. Membaca ayat (yang artinya) : “Sesungguhnya Allah, hanya pada sisiNya sajalah pengetahuan tentang hari kiamat; dan Dialah yang menurunkan hujan dan mengetahui apa yang ada dalam rahim. Dan tiada seorangpun yang dapat mengetahui di bumi mana dia akan mati. Sesungguhnya Allah Maha mengetahui lagi maha mengenal”. Orang yang bertanya itu lantas pergi , lalu beliau bersabda : “itu adalah Jibril yang datang untuk mengajarkan manusia tentang agama mereka”. (HR Bukhari; Muslim ).',
      },
      {
        'arabic':
            'حَدَّثَنَا عُبَيْدُ اللَّهِ بْنُ مُوسَى قَالَ أَخْبَرَنَا حَنْظَلَةُ بْنُ أَبِي سُفْيَانَ عَنْ عِكْرِمَةَ بْنِ خَالِدٍ عَنْ ابْنِ عُمَرَ رَضِيَ اللَّهُ عَنْهُمَا قَالَ قَالَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ بُنِيَ الإِسْلاَمُ عَلَى خَمْسٍ شَهَادَةِ أَنْ لاَ إِلَهَ إِلاَّ اللَّهُ وَأَنَّ مُحَمَّدًا رَسُولُ اللَّهِ وَإِقَامِ الصَّلاَةِ وَإِإتَاءِ الزَّكَاةِ وَالْحَجِّ وَصَوْمِ رَمَضَانَ.(رواه البخاري(',
        'indo':
            'Artinya: ‘Abdullah ibn Musa telah menceritakan kepada kami, ia berkata bahwa Hanzhalah ibn Abi Sufyan telah memberitakan kepada kami, dari Ikrimah ibn Khalid, dari ibn Umar r.a berkata: Rasulullah saw. telah bersabda: “Islam didirikan atas lima perkara, yakni bersaksi bahwa tiada Tuhan selain Allah swt, dan Muhammad adalah utusan-Nya, mendirikan shalat, menunaikan zakat, melaksanakan ibadah haji (ke Baitullah), dan berpuasa dibulan Ramadhan”. (H.R. Al-Bukhari)',
      },
      {
        'arabic':
            'حَدِيثُ ابْنِ عُمَرَ، أَنَّ رَسُولَ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ مَرَّ عَلَى رَجُلٍ مِنَ الأَنْصَارِ وَهُوَ يَعِظُ أَخَاهُ فِي الْحَيَاءِ، فَقَالَ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: «دَعْهُ فَإِنَّ الْحَيَاءَ مِنَ الإِيْمَانِ',
        'indo':
            'Ibnu Umar r.a. berkata bahwa Nabi SAW melewati (melihat) seorang lelaki kaum Anshar yang sedang menasehati saudaranya karena malu, maka Nabi SAW telah bersabda: Biarkanlah ia karena sesungguhnya malu itu sebagian dari iman.',
      },
      {
        'arabic':
            'أَنْ تُؤْمِنَ بِاللَّهِ وَمَلاَئِكَتِهِ وَكُتُبِهِ وَرُسُلِهِ وَالْيَوْمِ الْآخِرِ وَتُؤْمِنَ بِالْقَدَرِ خَيْرِهِ وَشَرِّهِ',
        'indo':
            'Iman adalah engkau beriman kepada Allah, malaikat-malaikat-Nya, kitab-kitab-Nya, rasul-rasul-Nya, hari akhir, dan engkau beriman kepada qadar, yang baik dan yang buruk.',
      },
      {
        'arabic':
            'عَنْ أَبِي هُرَيْرَةَ رَضِيَ اللهُ عَنْهُ أَنَّ رَسُوْلَ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ قَالَ: مَنْ كَانَ يُؤْمِنُ بِاللهِ وَالْيَوْمِ الآخِرِ فَلْيُقُلْ خَيْراً أًوْ لِيَصْمُتْ، وَمَنْ كَانَ يُؤْمِنُ بِاللهِ وَاْليَوْمِ الآخِرِ فَلْيُكْرِمْ جَارَهُ، وَمَنْ كَانَ يُؤْمِنُ بِاللهِ وَالْيَوْمِ الآخِرِ فَلْيُكْرِمْ ضَيْفَهُ. [رواه البخاري ومسلم]',
        'indo':
            'Dari Abu Hurairah radhiallahuanhu, sesungguhnya Rasulullah shallallahu`alaihi wa sallam bersabda, "Siapa yang beriman kepada Allah dan hari akhir hendaklah dia berkata baik atau diam, siapa yang beriman kepada Allah dan hari akhir hendaklah dia menghormati tetangganya dan barangsiapa yang beriman kepada Allah dan hari akhir maka hendaklah dia memuliakan tamunya" (Riwayat Bukhari dan Muslim)',
      },
      {
        'arabic':
            'حَدِيْثُ ابْنِ عُمَرَ رَضِيَ اللهُ عَنْهُمَا : سَمِعَ النَّبِيُّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ رَجُلًا يَعِظُ اَخَاهُ فِيْ الحَيَاءِ فَقَالَ الحَيَاءُ مِنَ الْلأِيْمَانِ',
        'indo':
            'Diriwayatkan dari Abu Umar Ra katanya : Nabi Saw mendengar seorang menasehati saudaranya dalam hal malu dan menganggap perbuatan itu buruk, lalu Nabi Saw bersabda. ‘malu itu sebagian dari iman”',
      },
      {
        'arabic':
            'الْإِيمَانُ بِضْعٌ وَسَبْعُونَ شُعْبَةً أَفْضَلُهَا لَا إِلَهَ إِلَّا اللَّهُ وَأَوْضَعُهَا إِمَاطَةُ الْأَذَى عَنْ الطَّرِيقِ وَالْحَيَاءُ شُعْبَةٌ مِنْ الْإِيمَان',
        'indo':
            '“Iman itu ada tujuh puluh sekian cabang, iman yang paling utama adalah persaksian bahwa tidak ada Tuhan yang berhak disembah kecuali Allah dan yang paling rendah adalah menyingkirkan gangguan dari jalan. Dan rasa malu adalah salah satu cabang dari keimanan.”(HR Bukhori, HR Muslim).',
      },
      {
        'arabic':
            'الايمان معرفة بالقلب و قول باللسا ن و عمل بالاركان (رواه الطبران)',
        'indo':
            'Artinya : “Iman adalah pengakuan dengan hati, pengucapan dengan lisan, dan pengamalan dengan anggota badan.”(HR Thabrani)',
      },
      {
        'arabic':
            'عَنْ اَنَسٍ عَنِ النَّبِيِّ صَلَّى اللهُ عَلَيْهِ وَ سَلَّمَ قَالَ ثَلَاثٌ مَنْ كُنَّ فِيْهِ وَ جَدَ حَلَاوَةَ الإِيْمَانِ: أنْ يَكُوْنَ اللهُ وَ رَسُوْلُهُ اَحَبَّ اِلَيْهِ مِمَّا سِوَاهُمَا وَاَنْ يُحِبَّ الْمَرْءُ لَا يُحِبُّحُ اِلَّا لِلهِ وَ اَنْ يَكْرَهَ اَنْ يَعُوْدَ فِى الْكُفْرِ كَمَا يَكْرَهُ اَنْ يُقْذَفَ فِى الْنَّا رِ. (رواه البخاري)',
        'indo':
            'Artinya: Dari Anas r.a dari Nabi SAW, beliau bersabda: tiga hal bila terdapat pada diri seseorang, maka ia mendapatkan manisnya iman, yaitu apabila Allah dan Rasul-Nya lebih ia cintai dari pada yang lain, apabila ia mencintai seseorang hanya karena Allah, dan apabila ia benci untuk kembali ke dalam kekafiran sebagaimana bencinya untuk dicampakkan ke dalam neraka. (HR. Bukhari)',
      },
      {
        'arabic':
            'لَا يُؤْمِنُ أَحَدُكُمْ حَتَّى يُحِبَّ لِأَخِيهِ مَا يُحِبُّ لِنَفْسِهِ',
        'indo':
            'Dari Anas bin Malik radhiallahu ‘anhu, Rasulullah shallallahu ‘alaihi wa sallam bersabda,\n\n“Tidak sempurna keimanan salah seorang dari kalian sampai dia mencintai (kebaikan) untuk saudaranya sesuatu yang dia cintai untuk dirinya”. (HR. Bukhari dan Muslim).',
      },
      {
        'arabic':
            'لَا يَزْنِي الزَّانِي حِينَ يَزْنِي وَهُوَ مُؤْمِنٌ ، وَلَا يَشْرَبُ الْخَمْرَ شَارِبُهَا حِينَ يَشْرَبُهَا وَهُوَ مُؤْمِنٌ ، وَلَا يَسْرِقُ السَّارِقُ حِينَ يَسْرِقُ وَهُوَ مُؤْمِنٌ ، وَلَا يَنْتَهِبُ نُهْبَةً يَرْفَعُ النَّاسُ إِلَيْهِ فِيهَا أَبْصَارَهُمْ حِينَ يَنْتَهِبُهَا وَهُوَ مُؤْمِنٌ',
        'indo':
            '“Tidaklah seseorang berzina dalam keadaan beriman, tidaklah seseorang meminum minuman keras ketika meminumnya dalam keadaan beriman, tidaklah seseorang melakukan pencuria dalam keadaan beriman dan tidaklah seseorang merampas sebuah barang rampasan di mana orang-orang melihatnya, ketika melakukannya dalam keadaan beriman.” (HR. Bukhari dan Muslim).',
      },
      {
        'arabic': 'لَا إِيمَانَ لِمَنْ لَا أَمَانَةَ لَهُ',
        'indo':
            'Nabi shallallahu ‘alaihi wa sallam bersabda,\n\n“Tidak keimanan bagi mereka yang tidak memiliki amanah.”',
      },
      {
        'arabic':
            'عَنْ أَبِيْ مَالِكْ الْحَارِثِي ابْنِ عَاصِمْ اْلأَشْعَرِي رَضِيَ اللهُ عَنْهُ قَالَ : قَالَ رَسُوْلُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ : الطُّهُوْرُ شَطْرُ اْلإِيْمَانِ، وَالْحَمْدُ للهِ تَمْلأُ الْمِيْزَانِ، وَسُبْحَانَ اللهِ وَالْحَمْدُ للهِ تَمْلأُ - أَوْ تَمْلآنِ - مَا بَيْنَ السَّمَاءِ وَاْلأَرْضِ، وَالصَّلاَةُ نُوْرٌ، وَالصَّدَقَةُ بُرْهَانٌ، وَالْقُرْآنُ حُجَّةٌ لَكَ أَوْ عَلَيْكَ . كُلُّ النَّاسِ يَغْدُو فَباَئِعٌ نَفْسَهُ فَمُعْتِقُهَا أَوْ مُوْبِقُهَا [رواه مسلم]',
        'indo':
            'Dari Abu Malik, Al Harits bin Al Asy\'ari\' : Suci itu sebagian dari iman, (bacaan) alhamdulillaah memenuhi timbangan, (bacaan) subhaanallaah dan alhamdulillaah keduanya memenuhi ruang yang ada di antara langit dan bumi. Shalat itu adalah nur, shadaqah adalah pembela, sabar adalah cahaya, dan Al-Qur\'an menjadi pembela kamu atau musuh kamu. Setiap manusia bekerja, lalu dia menjual dirinya, kemudian pekerjaan itu dapat menyelamatkannya atau mencelakakannya".(HR. Muslim)',
      },
      {
        'arabic':
            'عَنِ ابْنِ حَجَرٍ رَضِيَ الله عَنْهُ قَالَ: قَالَ رَسُوْلُ الله صَلىَّ الله ُعَلَيْهِ وَسَلَّمَ: أْلإِيْمَانُ مَعْرِفَةٌ بِاْلقَلْبِ وَقَوْلٌ بِالِّلسَانِ وَعَمَلٌ بِاْلأَرْكَانِ (رواه ابن ماجه والطبراني)',
        'indo':
            'Artinya: “Dari Ibnu Hajar Radhiyallahu ‘Anhu beliau berkata: Rasulullah SAW telah bersabda: Iman adalah Pengetahuan hati, pengucapan lisan dan pengamalan dengan anggota badan” (H.R. Ibnu Majah dan At-Tabrani).',
      },
      {
        'arabic':
            'حَدِيْثُ اَبِيْ هُرَيْرَةَ رَضِيَ اللهُ عَنْهُ قَالَ : أَنَّ رَسُولُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمْ اُمِرْتُ اَنْ اُقَاتِلَ النَّاسَ حَتَّى يَقُوْلُوْا لَآ اِلَهَ اِلَّا اللهُ فَمَنْ قَالَ لَا اِلَهَ اِلَّا اللهُ عَصَمَ مِنِّيْ مَا لَهُ وَنَفْسَهُ اَلَّا بِحَقّهِ وَحِسَابُهُ عَلَى اللهِ',
        'indo':
            'Diriwayatkan dari Abu Hurairah Ra. Katanya : “Aku diarahkan supaya memerangi manusia sehingga mereka mengucapkan dua kalimah syahadat. Siapa yang mengucapkannya berarti dia dan hartanya bebas dari aku kecuali dibenarkan oleh syariat dan segala-galanya terserahlah kepada Allah Swt untuk menentukannya.',
      },
      {
        'arabic':
            'عَنْ أَبِيْ سَعِيْدِ اْلخُدْرِيِّ رَضِيَ الله ُعَنْهُ ، قَالَ : سَمِعْتُ رَسُوْلُ الله ِصَلي الله عليه وسلم يَقُوْلُ : (( مَنْ رَّأَى مِنْكُمْ مُنْكَرًا فَلْيُغَيِّرْهُ بِيَدِهِ ، فَإِنْ لمَّ ْيَسْتَطِعْ فَبِلِسَانِهِ ، فَإِنْ لمَّ ْيَسْتَطِعْ فَبِقَلْبِهِ ، وَذَلِكَ أَضْعَفُ اْلإِيْمَانِ )). رواه مسلم [ رقم : 49 ]',
        'indo':
            'Artinya: “Dari Abu Sa’d Al-Khudriy Radhiyallahu ‘Anhu, beliau berkata : Saya pernah mendengar Rasulallah SAW berkata: barang siapa diantara kalian melihat suatu kemunkaran maka hendaknya dia merubah dengan kekuasannya, apabila dia merasa tidak mampu maka dengan lisannya, maka apabila dia tidak mampu hendaknya dia membenci kemunkaran tersebut dengan hatinya, yang demikian itu adalah tingkatan iman yang paling lemah ” (H.R. Muslim).',
      },
      {
        'arabic':
            'عَنْ أَبِيْ هُرَيْرَةَ رَضِيَ الله ُعَنْهُ ، أَنَّ رَسُوْلُ اللهِ صَلَّى الله ُعَلَيْهِ وَسَلَّمَ قَالَ:  وَمَنْ كَانَ يُؤْمِنُ بِاللهِ وَاْليَوْمِ اْلآخِرِ فَلْيُكْرِمْ جَارَهُ (رواه البخاري و مسلم)',
        'indo':
            'Artinya: “Dari Abu Hurairah Radhiyallahu ‘Anhu: Sesungguhnya Rasulullah SAW telah bersabda: barang siapa yang beriman kepada Allah hari akhir maka hendaknya dia mengormati (tidak menyakiti) tetangganya (orang yang berada di sekelilingnya” . (H.R. Bukhari dan Muslim).',
      },
      {
        'arabic': 'وَالْحَيَاءُ شُعْبَةٌ مِنَ الْأِيْمَانِ',
        'indo':
            'Diriwayatkan dari Abu Hurairah Ra katanay: Rasulullah Saw bersabda : “Iman terdiri lebih dari tujuh puluh bagian, dan malu dalah salah satu dari bagian-bagian Iman.”',
      },
      {
        'arabic':
            'حَدِيْثُ اَنَسِ بن مالك رَضِيَ اللهُ عَنْهُ :  عَنِ النّبِيِّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ قَالَ لَا يُؤْمِنُ اَحَدُكُمْ حَتَّى يُحِبُّ لِأَحِيْهِ اَوْ قَالَ لِجَارِهِ مَا يَحِبُّ لِنَفْسِهِ',
        'indo':
            'Diriwayatkan dari Anas bin Malik  Ra katnya : Nabi Saw telah bersabda : “tidak sempurna iman seseorang itu, before ia mengasihi saudaranya sebagaimana ia mengasihi dirinya sendiri.”',
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
          'Hadist Tentang Iman',
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
