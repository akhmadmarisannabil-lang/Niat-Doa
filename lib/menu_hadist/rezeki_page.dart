import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';

class RezekiPage extends StatelessWidget {
  const RezekiPage({super.key});

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
            'عَنْ أَبي هُرَيْرَةَ ، أَنَّ رَسُولَ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ ، قَالَ : لَيَأْتِيَنَّ عَلَى النَّاسِ زَمَانٌ لَا يُبَالِي الْمَرْءُ بِمَا أَخَذَ الْمَالَ أَ م مِنْ حَلَالٍ أَمْ مِنْ حَرَامٍ (البخارى وأبو يعلى',
        'indo':
            'Dari Abu Hurairah, bahwa Rasulullah Saw bersabda: "Pasti akan datang pada manusia suatu zaman dimana orang tidak perduli lagi dengan apa dia mengambil harta, apakah dari yang halal ataukah dari yang haram." (HR. Bukhari dan Abu Ya’la).',
      },
      {
        'arabic':
            'نَفَثَ رُوحُ الْقُدُسِ فِي رَوْعِي أَنَّ نفْسًا لَنْ تَخْرُجَ مِنَ الدُّنْيَا حَتَّى تَسْتَكْمِلَ أَجَلَهَا، وَتَسْتَوْعِبَ رِزْقَهَا، فَأَجْمِلُوا فِي الطَّلَبِ، وَلا يَحْمِلَنَّكُمِ اسْتِبْطَاءُ الرِّزْقِ أَنْ تَطْلُبُوهُ بِمَعْصِيَةِ اللَّهِ، فَإِنَّ اللَّهَ لا يُنَالُ مَا عِنْدَهُ إِلا بِطَاعَتِهِ”.',
        'indo':
            '“Ruh Kudus (Malaikat Jibril) membisikkan di dadaku bahwa ‘tidaklah suatu jiwa meninggal dunia sampai disempurnakan baginya ajal dan dipenuhi rezekinya. Oleh karenanya perbaguslah di dalam mencari rezeki. Janganlah ia merasa lambatnya rezeki, menyebabkan ia mencari rezeki tersebut dengan bermaksiat kepada Allah, karena sesungguhnya Allah tidak dapat dicapai kecuali dengan mentaati-Nya’” (HR.Thabrani)',
      },
      {
        'arabic':
            'مَرَّ عَلَى النَّبِيِّ n رَجُلٌ فَرَأَى أَصْحَابُ رَسُولِ اللهِ  مِنْ جَلَدِهِ وَنَشَاطِهِ فَقَالُوا: يَا رَسُولَ اللهِ، لَوْ كَانَ هَذَا فِي سَبِيلِ اللهِ. فَقَالَ رَسُولُ اللهِ : إِنْ كَانَ خَرَجَ يَسْعَى عَلَى وَلَدِهِ صِغَارًا فَهُوَ فِي سَبِيلِ اللهِ، وَإِنْ كَانَ خَرَجَ يَسْعَى عَلَى أَبَوَيْنِ شَيْخَيْنِ كَبِيْرَيْنِ فَهُوَ فِي سَبِيلِ اللهِ، وَإِنْ كَانَ خَرَجَ يَسْعَى عَلَى نَفْسِهِ يُعِفُّهَا فَهُوَ فِي سَبِيلِ اللهِ، وَإِنْ كَانَ خَرَجَ يَسْعَى رِيَاءً وَمُفَاخَرَةً فَهُوَ فِي سَبِيلِ الشَّيْطَانِ',
        'indo':
            'Seseorang telah melewati Nabi  maka para sahabat Nabi melihat keuletan dan giatnya, sehingga mereka mengatakan: “Wahai Rasulullah, seandainya ia lakukan itu di jalan Allah .” Maka Rasulullah  bersabda: “Bila ia keluar (rumah) demi mengusahakan untuk anak-anaknya yang kecil maka ia berada di jalan Allah. Bila ia keluar demi mengusahakan untuk kedua orangtuanya yang telah berusia lanjut maka ia berada di jalan Allah. Bila dia keluar demi mengusahakan untuk dirinya sendiri agar terjaga kehormatannya maka ia berada di jalan Allah. Namun bila dia keluar dan berusaha untuk riya’ (mencari pujian orang) atau untuk berbangga diri, maka ia berada di jalan setan.” (Shahih lighairihi, HR. At-Thabarani. Shahih At-Targhib, 2/141 no. 1692)',
      },
      {
        'arabic':
            'سُئِلَ رَسُولُ اللهِ : أَيُّ الْكَسْبِ أَطْيَبُ؟ قَالَ: عَمَلُ الرَّجُلِ بِيَدِه،ِ وَكُلُّ كَسْبٍ مَبْرُورٍ',
        'indo':
            'Rasulullah  ditanya: ”Penghasilan apakah yang paling baik?” Beliau menjawab: ”Pekerjaan seseorang dengan tangannya sendiri dan semua penghasilan yang mabrur (diterima di sisi Allah).” (Shahih Lighairihi, HR. Al Hakim)',
      },
      {
        'arabic':
            'إِنَّ أَحَدَكُمْ لَنْ يَمُوتَ حَتَّى يَسْتَكْمِلَ رِزْقَهُ فَلَا تَسْتَبْطِئُوا الرِّزْقَ، وَاتَّقُوا اللَّهَ أَيُّهَا النَّاسُ، فَأَجْمِلُوا فِي الطَّلَبِ، خُذُوا مَا حَلَّ، وَدَعُوا مَا حَرَّمَ»',
        'indo':
            '“Sesungguhnya salah seorang diantara kalian tidaklah meninggal sampai disempurnakan rezekinya, maka janganlah ia merasa lambat datang rezekinya. Bertakwalah kepada Allah wahai manusia, perbaikilah didalam mencari rezeki, ambil yang halal dan tinggalkan yang haram” (HR. Ibnu Hibban, Baihaqi)',
      },
      {
        'arabic': '',
        'indo':
            'Rasul SAW bersabda, ”Allah berfirman ‘Wahai Bani Adam, fokuskanlah hati kalian dalam beribadah kepada-Ku, niscaya Aku akan lapangkan hatimu, dan Aku penuhi kebutuhanmu. Kalau kamu tidak memfokuskan ibadah kepada-Ku, maka Aku akan penuhi hatimu dengan kesibukan dan kebutuhanmu tidak akan Aku penuhi “ (Hadis qudsi riwayat Ahmad,Tirmidzi, Ibnu Majah dan Al Hakim).',
      },
      {
        'arabic': '',
        'indo':
            '“Barang siapa memperbanyak istighfar maka Allah s.w.t akan menghapuskan segala kedukaannya, menyelesaikan segala masalahnya dan memberinya rezeki dari arah yang tidak disangka.” (Riwayat Ahmad, Abu Daud, an-Nasa’i, Ibnu Majah dan al-Hakim dari Abdullah bin Abbas r.a.)',
      },
      {
        'arabic': '',
        'indo':
            '“… dan seorang lelaki akan diharamkan baginya rezeki kerana dosa yang dibuatnya.” (Riwayat at-Tirmizi)',
      },
      {
        'arabic': '',
        'indo':
            '"Bangunlah pagi hari untuk mencari rezeki dan kebutuhan-kebutuhanmu. Sesungguhnya pada pagi hari terdapat barokah dan keberuntungan." (HR. Ath-Thabrani dan Al-Bazzar)',
      },
      {
        'arabic': '',
        'indo':
            'Abdullah bin Mas’ud r.a. mendengar Rasulullah saw bersabda: “Barangsiapa membaca Surah Al-Waqi’ah setiap malam, maka dia tidak akan tertimpa kefakiran selamanya.” Ia menambahkan, “Sungguh aku memerintahkan anak-anak perempuanku agar membaca Surah Al-Waqi’ah setiap malam.” (dikeluarkan oleh Abu Ubaid dalam Fadha’il Al-Qur’an, Bab. Fadhl Surah Al-Waqi’ah).',
      },
      {
        'arabic': '',
        'indo':
            'Anas r.a. menuturutkan, bahwa Rasulullah saw bersabda, “Ajarkan istri-istri dan anak-anak perempuan kalian Surah Al-Waqi’ah, karena ia Surah memotivasi untuk kaya.”',
      },
      {
        'arabic': '',
        'indo':
            '“Siapa berbakti kepada ibu bapanya maka kebahagiaanlah buatnya dan Allah akan memanjangkan umurnya.” (Riwayat Abu Ya’ala, at-Tabrani, al-Asybahani dan al-Hakim). “Apabila hamba itu meninggalkan berdoa kepada kedua orang tuanya nescaya terputuslah rezeki (Allah ) daripadanya.” (Riwayat al-Hakim dan ad-Dailami)',
      },
      {
        'arabic': '',
        'indo':
            '“Tidaklah kamu diberi pertolongan dan diberi rezeki melainkan kerana orang-orang lemah di kalangan kamu.” (Riwayat Bukhari)',
      },
      {
        'arabic': '',
        'indo':
            '“Siapa yang menunaikan hajat saudaranya maka Allah akan menunaikan hajatnya…” (Riwayat Muslim)',
      },
      {
        'arabic': '',
        'indo':
            '“Barang siapa ingin dilapangkan rezekinya dan dilambatkan ajalnya maka hendaklah dia menghubungi sanak-saudaranya (Silaturahim).” (Riwayat Bukhari)',
      },
      {
        'arabic': '',
        'indo':
            '“Sentiasalah berada dalam keadaan bersih (dari hadas) nescaya Allah akan memurahkan rezeki.” (Diriwayatkan daripada Sayidina Khalid al-Walid)',
      },
      {
        'arabic': '',
        'indo':
            '“Hai Zubair, ketahuilah bahawa kunci rezeki hamba itu ditentang Arasy, yang dikirim oleh Allah azza wajalla kepada setiap hamba sekadar nafkahnya. Maka siapa yang membanyakkan pemberian kepada orang lain, nescaya Allah membanyakkan baginya. Dan siapa yang menyedikitkan, nescaya Allah menyedikitkan baginya.” (Riwayat ad-Daruquthni dari Anas r.a.)',
      },
      {
        'arabic': '',
        'indo':
            '“Wahai anak Adam, jangan sekali-kali engkau malas mengerjakan empat rakaat pada waktu permulaan siang (solat Dhuha), nanti pasti akan Aku cukupkan keperluanmu pada petang harinya.” (Riwayat al-Hakim dan Thabrani)',
      },
      {
        'arabic': '',
        'indo':
            'Rasul SAW bersabda, “Siapa yang ingin diluaskan rezekinya, dan dipanjangkan umurnya,maka sambunglah tali silaturrahim “ (HR.Bukhari, Muslim, Abu Daud dan Nasai).',
      },
      {
        'arabic': '',
        'indo':
            'Rasul SAW bersabda, “Bersedekahlah kalian, dan jangan (terlalu) lama disimpan dan ditahan. Sebab jika demikian, Allah SWT akan menahan (karunia-Nya) untukmu “ (HR. Bukhari ).',
      },
      {
        'arabic': '',
        'indo':
            '“Berinfaklah semampumu, dan jangan menahan hartamu, niscaya Allah akan menahan karunia-Nya bagimu“ (HR. Muslim dan Nasai).',
      },
      {
        'arabic': '',
        'indo':
            '“Seandainya kamu bertawakal kepada Allah dengan sebenar-benar tawakal, nescaya kamu diberi rezeki seperti burung diberi rezeki, ia pagi hari lapar dan petang hari telah kenyang.” (Riwayat Ahmad, at-Tirmizi, Ibnu Majah, Ibnu Hibban, al-Hakim dari Umar bin al-Khattab r.a.)',
      },
      {
        'arabic': '',
        'indo':
            'Rasulullah s.a.w bersabda yang maksudnya:”Berilah dan jangan kamu selalu menutupi kepunyaanmu, kerana dengan itu nanti Allah akan menutupi rezekimu.” (Riwayat Bukhari & Muslim).',
      },
      {
        'arabic': '',
        'indo':
            '“Sesudah shalat Subuh maka janganlah kamu tidur sehingga kamu tidak lalau dalam mencari rezeki.”(HR. Ath-Thabrani)',
      },
      {
        'arabic': '',
        'indo':
            '“Bangunlah di pagi hari untuk mencari rezeki dan kebutuhanmu. Sesungguhnya pada pagi hari terdapat barakah dan keberuntungan.” (HR. Ath-Thabrani dan Al-Bazzar)',
      },
      {
        'arabic': '',
        'indo':
            '“Mencari rezeki yang halal adalah wajib apabila sudah melaksanakan ibadah fardhu.” (Hadits riwayat Ath-Thabrani dan Al-Baihaqi)',
      },
      {
        'arabic': '',
        'indo':
            'Rasulullah s.a.w bersabda, maksudnya: “Meraka yang mencari harta dunia (kekayaan ) dengan jalan yang halal dan menahan dirinya dari meminta-minta (tidak menjadi pengemis ) dan berusaha mencari nafkah untuk keluarganya serta belas kasihan, kasih sayang terhadap jiran tetangganya, nescaya di hari kiamat kelak ia akan berjumpa dengan Allah dengan mukanya berseri-seri seperti bulan purnama pada waktu malam.” (Riwayat At-Tabrani)',
      },
      {
        'arabic': '',
        'indo':
            'Allah berfirman kepada para malaikat yang diserahi urusan rezeki anak Adam: ” Hamba manapun yang kamu dapati yang cita-citanya hanya satu ( iaitu semata-mata untuk akhirat), jaminlah rezekinya di langit dan di bumi. Dan hamba manapun yang kamu dapati mencari rezeki dengan jujur kerana berhati-hati mencari keadilan, berilah rezeki yang baik dan mudahkanlah baginya. Dan jika ia telah melampui batas kepada selain itu, maka biarkanlah dia sendiri mengusahakan apa yang dikehendakinya. Kemudian dia tidak akan mencapai lebih dari apa yang telah aku tetapkannya untuknya. ( Hadis riwayat Abu Na’im dari Abu Hurairah r.a)',
      },
      {
        'arabic': '',
        'indo':
            'Hendaklah kalian meminta segala kebutuhan kalian kepada Allah walaupun tali sandalnya terputus, sesungguhnya jika Allah tidak menggampangkan kepadanya maka hal itu tidaklah gampang baginya. (HR. At-Tirmidzi, Ath-Thabrani, Abu Ya’la dan Abu Al-Bazzar)',
      },
      {
        'arabic': '',
        'indo':
            'Allah berfirman dalam hadits Qudsi, “Wahai hamba-Ku, setiap kalian itu adalah lapar kecuali Aku beri makan, maka mintalah makan kepada-Ku niscaya Aku akan memberi kalian makan. Setiap kalian adalah telanjang kecuali yang Aku beri pakaian, maka mintalah pakaian kepada-Ku niscaya Aku akan memberi kalian pakaian.” (HR. Muslim, At-Tirmidzi, dan Baihaqi)',
      },
      {
        'arabic': '',
        'indo':
            'Rasulullah SAW berdoa, “Ya Allah, berkahilah umatku di waktu pagi. Semoga keberkahan selalu tercurah bagi umatku yang beraktifitas di pagi hari “ (HR.Thabrani).',
      },
      {
        'arabic': '',
        'indo':
            'Shahr Al-Ghamidi menjelaskan, bahwa Rasulullah mengutus pasukan perang di akhir waktu siang. Sementara itu Shahr sebagai seorang pedagang, sering membawa barang dagangannya di pagi hari. Akhirnya ia sering mendapatkan keuntungan yang berlimpah, hingga hartanya banyak. (HR. Imam yang empat).',
      },
      {
        'arabic': '',
        'indo':
            'Dari Umar bin Khattab RA, ia berkata, “Saya mendengar Rasulullah SAW bersabda, ‘Jika kalian bertawakal kepada Allah dengan sebenar-benarnya, niscaya Allah akan memberikan rezeki kepada kalian seperti seekor burung, pagi-pagi ia keluar dari sarangnya dalam keadaan lapar dan pulang disore hari dalam keadaan kenyang “ (HR.Ahmad dan Turmuzi).',
      },
      {
        'arabic': '',
        'indo':
            'Allah telah menjamin rezeki setiap makhluk-Nya. Setiap manusia yang terlahir ke dunia sudah dilengkapi dengan rezekinya masing-masing. Rasul SAW bersabda, “Allah telah menetapkan takdir semua mahluk sejak 50.000 tahun sebelum Dia menciptakan langit dan bumi“ (HR.Muslim).',
      },
      {
        'arabic': '',
        'indo':
            '"Sesungguhnya Allah suka kepada hamba yang berkarya dan terampil (professional atau ahli). Barang siapa bersusah-payah mencari nafkah untuk keluarganya maka dia serupa dengan seorang mujahid di jalan Allah Azza wajalla." (HR. Ahmad)',
      },
      {
        'arabic': '',
        'indo':
            '"Seorang yang membawa tambang lalu pergi mencari dan mengumpulkan kayu bakar lantas dibawanya ke pasar untuk dijual dan uangnya digunakan untuk mencukupi kebutuhan dan nafkah dirinya maka itu lebih baik dari seorang yang meminta-minta kepada orang-orang yang terkadang diberi dan kadang ditolak." (Mutafaq\'alaih)',
      },
      {
        'arabic': '',
        'indo':
            '"Tiada makanan yang lebih baik daripada hasil usaha tangan sendiri." (HR. Bukhari)',
      },
      {
        'arabic': '',
        'indo':
            'Seusai shalat fajar (subuh) janganlah kamu tidur sehingga melalaikan kamu untuk mencari rezeki." (HR. Ath-Thabrani)',
      },
      {
        'arabic': '',
        'indo':
            'Fatimah (putri Rasulullah) berkata bahwa saat Rasulullah saw melihatnya masih terlentang di tempat tidurnya di pagi hari, beliau saw mengatakan kepadanya, “Putriku, bangunlah dan saksikanlah kemurahan-hati Tuhanmu, dan janganlah menjadi seperti kebanyakan orang. Allah membagikan rezeki setiap harinya pada waktu antara mulainya subuh sampai terbitnya matahari.” (HR. al-Baihaqi)',
      },
      {
        'arabic': '',
        'indo':
            'Aisyah juga menceritakan sebuah hadits yang hampir sama maknanya, yang mana Rasulullah saw bersabda: “Bangunlah pagi-pagi untuk mencari  rezekimu dan melakukan tugasmu, karena hal itu membawa berkah dan kesuksesan. (HR. at-Tabarani)',
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
          'Hadist Tentang Rezeki',
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
