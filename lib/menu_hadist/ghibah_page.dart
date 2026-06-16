import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart'; // Sesuaikan dengan jalur file ThemeProvider Anda

class GhibahPage extends StatelessWidget {
  const GhibahPage({super.key});

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

    // Data List konten tentang Ghibah asli sesuai input (tanpa diubah, dipotong, atau ditambah)
    final List<Map<String, String>> kontenGhibah = [
      {
        'arabic': '',
        'indo':
            'Dari Abu Hurairah radhiyallahu \'anhu bahwa Rasulullah shallallahu \'alaihi wa \'ala aalihi wa sallam bersabda: ',
      },
      {
        'arabic':
            'أَتَدْرُونَ مَا الْغِيبَةُ قَالُوا اللَّهُ وَرَسُولُهُ أَعْلَمُ قَالَ ذِكْرُكَ أَخَاكَ بِمَا يَكْرَهُ قِيلَ أَفَرَأَيْتَ إِنْ كَانَ فِي أَخِي مَا أَقُولُ قَالَ إِنْ كَانَ فِيهِ مَا تَقُولُ فَقَدْ اغْتَبْتَهُ وَإِنْ لَمْ يَكُنْ فِيهِ فَقَدْ بَهَتَّهُ ',
        'indo':
            'Tahukah kalian apa itu ghibah?, Mereka menjawab, Allah dan Rasul-Nya yang lebih tahu. Beliau bersabda, Yaitu engkau menceritakan tentang saudaramu yang membuatnya tidak suka. Lalu ditanyakan kepada beliau, Lalu bagaimana apabila pada diri saudara saya itu kenyataannya sebagaimana yang saya ungkapkan? Maka beliau bersabda, Apabila cerita yang engkau katakan itu sesuai dengan kenyataan maka engkau telah meng-ghibahinya. Dan apabila ternyata tidak sesuai dengan kenyataan dirinya maka engkau telah berdusta atas namanya (berbuat buhtan). (HR. Muslim).',
      },
      {
        'arabic': '',
        'indo':
            ' Sunan Abu Dawud tercantum sebuah hadits yang diriwayatkan dari jalan \'Aisyah. Beliau berkata: ',
      },
      {
        'arabic':
            'حَسْبُكَ مِنْ صَفِيَّةَ كَذَا وَكَذَا قَالَ غَيْرُ مُسَدَّدٍ تَعْنِي قَصِيرَةً فَقَالَ لَقَدْ قُلْتِ كَلِمَةً لَوْ مُزِجَتْ بِمَاءِ الْبَحْرِ لَمَزَجَتْهُ ',
        'indo':
            'Wahai Rasulullah, cukuplah menjadi bukti bagimu kalau ternyata Shafiyah itu memiliki sifat demikian dan demikian. Salah seorang periwayat hadits menjelaskan maksud ucapan \'Aisyah bahwa Shafiyah itu orangnya pendek. Maka Nabi shallallahu \'alaihi wa sallam bersabda: Sungguh engkau telah mengucapkan sebuah kalimat yang seandainya dicelupkan ke dalam lautan maka niscaya akan merubahnya.',
      },
      {
        'arabic': '',
        'indo':
            'Dari shahabat Sa’id bin Zaid radhiyallahu \'anhu sesungguhnya Rasulullah Shallallahu’alaihi wasallam bersabda:',
      },
      {
        'arabic':
            'إِنَّ مِنْ أَرْبَى الرِّبَا الإِسْتِطَالهَ فِي عِرْضِ المُسْلِمِ بِغَيْرِ الْحَقِّ وَفِي رِوَايَة : مِنْ أَكْبَرِ الْكَبَائِرِ',
        'indo':
            'Sesungguhnya termasuk riba yang paling besar (dalam riwayat lain: termasuk dari sebesar besarnya dosa besar) adalah memperpanjang dalam membeberkan aib saudaranya muslim tanpa alasan yang benar. (H.R. Abu Dawud no. 4866-4967)',
      },
      {
        'arabic':
            'إِنَّ دِمَاءَكُمْ وَأَمْوَالَكُمْ حَرَامٌ عَلَيْكُمْ كَحُرْمَةِ يَوْمِكُمْ هَذَا فِي شَهْرِكُمْ هَذَا فِي بَلَدِكُمْ هَذَا ',
        'indo':
            'Sesungguhnya darah-darah kalian, harta-harta kalian, (dan juga kehormatan kalian) semua itu adalah haram atas kalian sebagaimana kesucian hari kalian ini (hari \'Arafah), pada bulan kalian ini dan di negeri kalian yang suci ini.',
      },
      {
        'arabic':
            'المُسْلِمُ مَنْ سَلِمَ الْمُسْلِمُوْنَ مِنْ لِسَانِهِ وَيَدِهِ',
        'indo':
            'Seorang muslim sejati adalah bila kaum muslimin merasa selamat dari gangguan lisan dan tangannya. (H.R. Muslim) ',
      },
      {
        'arabic':
            'حَدَّثَنَا عَبْدُ اللَّهِ بْنُ بَرَّادٍ الْأَشْعَرِيُّ وَمُحَمَّدُ بْنُ الْعَلَاءِ الْهَمْدَانِيُّ قَالَا حَدَّثَنَا أَبُو أُسَامَةَ حَدَّثَنِي بُرَيْدٌ عَنْ أَبِي بُرْدَةَ عَنْ أَبِي مُوسَى قَالَ بَلَغَنَا مَخْرَجُ رَسُولِ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ وَنَحْنُ بِالْيَمَنِ فَخَرَجْنَا مُهَاجِرِينَ إِلَيْهِ أَنَا وَأَخَوَانِ لِي أَنَا أَصْغَرُهُمَا أَحَدُهُمَا أَبُو بُرْدَةَ وَالْآخَرُ أَبُو رُهْمٍ إِمَّا قَالَ بِضْعًا وَإِمَّا قَالَ ثَلَاثَةً وَخَمْسِينَ أَوْ اثْنَيْنِ وَخَمْسِينَ رَجُلًا مِنْ قَوْمِي قَالَ فَرَكِبْنَا سَفِينَةً فَأَلْقَتْنَا سَفِينَتُنَا إِلَى النَّجَاشِيِّ بِالْحَبَشَةِ فَوَافَقْنَا جَعْفَرَ بْنَ أَبِي طَالِبٍ وَأَصْحَابَهُ عِنْدَهُ فَقَالَ جَعْفَرٌ إِنَّ رَسُولَ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ بَعَثَنَا هَاهُنَا وَأَمَرَنَا بِالْإِقَامَةِ فَأَقِيمُوا مَعَنَا فَأَقَمْنَا مَعَهُ حَتَّى قَدِمْنَا جَمِيعًا قَالَ فَوَافَقْنَا رَسُولَ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ حِينَ افْتَتَحَ خَيْبَرَ فَأَسْهَمَ لَنَا أَوْ قَالَ أَعْطَانَا مِنْهَا وَمَا قَسَمَ لِأَحَدٍ غَابَ عَنْ فَتْحِ خَيْبَرَ مِنْهَا شَيْئًا إِلَّا لِمَنْ شَهِدَ مَعَهُ إِلَّا لِأَصْحَابِ سَفِينَتِنَا مَعَ جَعْفَرٍ وَأَصْحَابِهِ قَسَمَ لَهُمْ مَعَهُمْ قَالَ فَكَانَ نَاسٌ مِنْ النَّاسِ يَقُولُونَ لَنَا يَعْنِي لِأَهْلِ السَّفِينَةِ نَحْنُ سَبَقْنَاكُمْ بِالْهِجْرَةِ قَالَ فَدَخَلَتْ أَسْمَاءُ بِنْتُ عُمَيْسٍ وَهِيَ مِمَّنْ قَدِمَ مَعَنَا عَلَى حَفْصَةَ زَوْجِ النَّبِيِّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ زَائِرَةً وَقَدْ كَانَتْ هَاجَرَتْ إِلَى النَّجَاشِيِّ فِيمَنْ هَاجَرَ إِلَيْهِ فَدَخَلَ عُمَرُ عَلَى حَفْصَةَ وَأَسْمَاءُ عِنْدَهَا فَقَالَ عُمَرُ حِينَ رَأَى أَسْمَاءَ مَنْ هَذِهِ قَالَتْ أَسْمَاءُ بِنْتُ عُمَيْسٍ قَالَ عُمَرُ الْحَبَشِيَّةُ هَذِهِ الْبَحْرِيَّةُ هَذِهِ فَقَالَتْ أَسْمَاءُ نَعَمْ فَقَالَ عُمَرُ سَبَقْنَاكُمْ بِالْهِجْرَةِ فَنَحْنُ أَحَقُّ بِرَسُولِ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ مِنْكُمْ فَغَضِبَتْ وَقَالَتْ كَلِمَةً كَذَبْتَ يَا عُمَرُ كَلَّا وَاللَّهِ كُنْتُمْ مَعَ رَسُولِ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ يُطْعِمُ جَائِعَكُمْ وَيَعِظُ جَاهِلَكُمْ وَكُنَّا فِي دَارِ أَوْ فِي أَرْضِ الْبُعَدَاءِ الْبُغَضَاءِ فِي الْحَبَشَةِ وَذَلِكَ فِي اللَّهِ وَفِي رَسُولِهِ وَايْمُ اللَّهِ لَا أَطْعَمُ طَعَامًا وَلَا أَشْرَبُ شَرَابًا حَتَّى أَذْكُرَ مَا قُلْتَ لِرَسُولِ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ وَنَحْنُ كُنَّا نُؤْذَى وَنُخَافُ وَسَأَذْكُرُ ذَلِكَ لِرَسُولِ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ وَأَسْأَلُهُ وَ وَاللَّهِ لَا أَكْذِبُ وَلَا أَزِيغُ وَلَا أَزِيدُ عَلَى ذَلِكَ قَالَ فَلَمَّا جَاءَ النَّبِيُّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ قَالَتْ يَا نَبِيَّ اللَّهِ إِنَّ عُمَرَ قَالَ كَذَا وَكَذَا فَقَالَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ لَيْسَ بِأَحَقَّ بِي مِنْكُمْ وَلَهُ وَلِأَصْحَابِهِ هِجْرَةٌ وَاحِدَةٌ وَلَكُمْ أَنْتُمْ أَهْلَ السَّفِينَةِ هِجْرَتَانِ قَالَتْ فَلَقَدْ رَأَيْتُ أَبَا مُوسَى وَأَصْحَابَ السَّفِينَةِ يَأْتُونِي أَرْسَالًا يَسْأَلُونِي عَنْ هَذَا الْحَدِيثِ مَا مِنْ الدُّنْيَا شَيْءٌ هُمْ بِهِ أَفْرَحُ وَلَا أَعْظَمُ فِي أَنْفُسِهِمْ مِمَّا قَالَ لَهُمْ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ قَالَ أَبُو بُرْدَةَ فَقَالَتْ أَسْمَاءُ فَلَقَدْ رَأَيْتُ أَبَا مُوسَى وَإِنَّهُ لَيَسْتَعِيدُ هَذَا الْحَدِيثَ مِنِّي',
        'indo':
            'Artinya : Basyar ibn Ahmad telah bercerita kepada kami dari Abdullah dari Mu’ammar dari Hammam ibn Munabbih dari Abi Hurairah ra, dari Nabi Muhammad SAW telah bersabda : Takutlah kalian akan berprasangka. Karena berprasangka adalah ucapan bohong besar. Janganlah kalian saling saling iri, saling meneliti kesalahan orang, saling hasud, saling membelakangi, saling bermusuhan. Jadilah kamu sekalian hamba-hamba Allah yang bersaudara. ( HR al-Bukhari )',
      },
      {
        'arabic':
            'لما عٌرج بى مررت بقوم لهم اظفار من نحاس يخمشون وجوههم و صدورهم فقلت :من هؤلاء يا جبريل؟ قال: هؤلاء الذين يأكلون لحوم الناس و يقعون فى أعراضهم.',
        'indo':
            'Artinya: Ketika aku dinaikkan ke langit, aku melewati suatu kaum yang memiliki kuku-kuku dari tembaga, mereka melukai (mencakari) wajah-wajah mereka dan dada-dada mereka. Maka aku bertanya :Siapakah mereka ya Jibril? Jibril berkata :Mereka adalah orang-orang yang memakan daging-daging manusia dan mereka mencela kehormatan-kehormatan manusia. (Hadits riwayat Ahmad dan Abu Dawud) ',
      },
      {
        'arabic': '',
        'indo':
            'Dari shahabat Ibnu Umar radhiyallahu’anhu, bahwa beliau Shallallahu’alaihi wasallam bersabda:',
      },
      {
        'arabic':
            'يَا مَعْشَرَ مَنْ آمَنَ بِلِسَانَهِ وَلَمْ يَفْضِ الإِيْمَانُ إِلَى قَلْبِهِ لاَ تُؤْذُوا المُسْلِمِيْنَ وَلاَ تَتَّبِعُوا عَوْرَاتِهِمْ فَإِنَّهُ مَنْ يَتَّبِعْ عَوْرَةَ أَخِيْهِ الْمُسْلِمِ تَتَّبَعَ اللهُ عَوْرَتَهُ وَمَنْ يَتَّبَعِ اللهُ يَفْضَحْهُ لَهُ وَلَو في جَوْفِ رَحْلِهِ',
        'indo':
            'Artinya:Wahai sekalian orang yang beriman dengan lisannya yang belum sampai ke dalam hatinya, janganlah kalian mengganggu kaum muslimin, janganlah kalian menjelek-jelekkannya, janganlah kalian mencari-cari aibnya. Barang siapa yang mencari-cari aib saudaranya sesama muslim niscaya Allah akan mencari aibnya. Barang siapa yang Allah mencari aibnya niscaya Allah akan menyingkapnya walaupun di dalam rumahnya. (H.R. At Tirmidzi dan lainnya) ',
      },
      {
        'arabic': '',
        'indo':
            'Ada seorang wanita yang menemui \'Aisyah radhiyallahu \'anha. Tatkala wanita itu hendak keluar, \'Aisyah berisyarat pada Nabi shallallahu \'alaihi wa sallam dengan tangannya untuk menunjukkan bahwa wanita tersebut pendek. Nabi shallallahu \'alaihi wa sallam lantas bersabda,',
      },
      {
        'arabic': 'قَدِ اغْتَبْتِيهَا',
        'indo':
            'Engkau telah mengghibahnya. (HR. Ahmad 6: 136. Syaikh Syu’aib Al Arnauth mengatakan bahwa sanad hadits ini shahih sesuai syarat Muslim) ',
      },
      {
        'arabic': 'من كان يؤمن بالله واليوم الآخر فليقل خيرا أو ليصمت',
        'indo':
            'Barang siapa yang beriman kepada Allah dan hari akhir maka hendaknya dia berkata yang baik atau diam. (HR. Bukhari dan Muslim) ',
      },
      {
        'arabic':
            'كُنَّا مَعَ النَّبِىِّ -صلى الله عليه وسلم- فَارْتَفَعَتْ رِيحُ جِيفَةٍ مُنْتِنَةٍ فَقَالَ رَسُولُ اللَّهِ -صلى الله عليه وسلم- أَتَدْرُونَ مَا هَذِهِ الرِّيحُ هَذِهِ رِيحُ الَّذِينَ يَغْتَابُونَ الْمُؤْمِنِينَ',
        'indo':
            'Artinya: Kami pernah bersama Nabi tiba-tiba tercium bau busuk yang tidak mengenakan. Kemudian Rasulullah bersabda, \'Tahukah kamu, bau apakah ini? Ini adalah bau orang-orang yang mengghibah (menggosip) kaum mu’minin.(Hadits riwayat Ahmad dari Jabir bin Abdullah)',
      },
      {
        'arabic':
            'مَنْ رَدَّ عِرْضَ أَخِيْهِ رَدَّ اللهُ عَنْ وَجْهِهِ يَوْمَ الْقِيَامَةِ',
        'indo':
            'Artinya : Barang siapa yang mencegah terbukanya aib saudaranya niscaya Allah akan mencegah wajahnya dari api neraka pada hari kiamat nanti. (H.R. At Tirmidzi no. 1931 dan lainnya)',
      },
      {
        'arabic': '',
        'indo':
            'Di dalam Sunan Tirmidzi terdapat riwayat yang menceritakan hadits dari jalan Ibnu \'Umar, beliau berkata: Rasulullah shallallahu \'alaihi wa sallam naik mimbar dan menyeru dengan suara yang lantang: Wahai segenap manusia yang masih beriman dengan lisannya namun iman itu belum meresap ke dalam hatinya janganlah kalian menyakiti kaum muslimin. Dan janganlah melecehkan mereka. Dan janganlah mencari-cari kesalahan-kesalahan mereka. Karena sesungguhnya barang siapa yang sengaja mencari-cari kejelekan saudaranya sesama muslim maka Allah akan mengorek-ngorek kesalahan-kesalahannya. Dan barang siapa yang dikorek-korek kesalahannya oleh Allah maka pasti dihinakan, meskipun dia berada di dalam bilik rumahnya. (Hadits ini tercantum dalam Shahihul Musnad, 1/508) ',
      },
      {
        'arabic': '',
        'indo':
            'Demi Allah, salah seorang dari kalian memakan daging bangkai ini (hingga memenuhi perutnya) lebih baik baginya daripada ia memakan daging saudaranya (yang muslim). (H.R. Bukhari) ',
      },
      {
        'arabic': '',
        'indo':
            'Ghibah itu (dosanya) lebih berat dari (dosa) zina. Ditanyakan (pada Nabi): Bagaimana mungkin? Nabi menjawab: Lelaki yang berzina lalu bertaubat, maka Allah akan menerima taubatnya. Sedangkan pelaku ghibah dosanya tidak akan diterima kecuali ia dimaafkan oleh yang dighibahi. (H.R. Tabrani) ',
      },
      {
        'arabic': '',
        'indo':
            'Siapa yang berkata tentang seorang mukmin dengan sesuatu yang tidak terjadi (tidak dia perbuat), maka Allah SWT akan mengurungnya di dalam lumpur keringat ahli neraka, sehingga dia menarik diri dari ucapannya (malakukan sesuatu yang dapat membebaskannya) (HR. Ahmad).',
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
          'Hadist Tentang Ghibah',
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
              ...kontenGhibah.asMap().entries.map((entry) {
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
                    if (idx < kontenGhibah.length - 1) ...[
                      const SizedBox(height: 24),
                      Divider(color: dividerColor, thickness: 1),
                      const SizedBox(height: 24),
                    ],
                  ],
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
