import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';

class NiatPage extends StatelessWidget {
  const NiatPage({super.key});

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
            'عَنْ أَمِيْرِ الْمُؤْمِنِيْنَ أَبِيْ حَفْصٍ عُمَرَ بْنِ الْخَطَّابِ رَضِيَ اللهُ عَنْهُ قَالَ: سَمِعْتُ رَسُوْلُ اللهِ صلى الله عليه وسلم يَقُوْلُ: إِنَّمَا اْلأَعْمَالُ بِالنِّيَّاتِ وَإِنَّمَا لِكُلِّ امْرِئٍ مَا نَوَى. فَمَنْ كَانَتْ هِجْرَتُهُ إِلَى اللهِ وَرَسُوْلِهِ فَهِجْرَتُهُ إِلَى اللهِ وَرَسُوْلِهِ، وَمَنْ كَانَتْ هِجْرَتُهُ لِدُنْيَا يُصِيْبُهَا أَوْ امْرَأَةٍ يَنْكِحُهَا فَهِجْرَتُهُ إِلَى مَا هَاجَرَ إِلَيْهِ.',
        'indo':
            'Artinya : Dari Amirul Mu’minin, Abi Hafs Umar bin Al Khattab radhiallahuanhu, dia berkata, "Saya mendengar Rasulullah shallahu`alaihi wa sallam bersabda: Sesungguhnya setiap perbuatantergantung niatnya. Dan sesungguhnya setiap orang (akan dibalas) berdasarkan apa yang dia niatkan. Siapa yang hijrahnya karena (ingin mendapatkan keridhaan) Allah dan Rasul-Nya, maka hijrahnya kepada (keridhaan) Allah dan Rasul-Nya. Dan siapa yang hijrahnya karena menginginkan kehidupan yang layak di dunia atau karena wanita yang ingin dinikahinya maka hijrahnya (akan bernilai sebagaimana) yang dia niatkan.\n\n'
            'Penjelasan Hadits Tentang Niat\n\n'
            'Pendapat para ulama :\n\n'
            'Imam Syafi’i berkata “ Hadits ini mencangkup sepertiga ilmu “.\n\n'
            'Abu Ubaid berkata “ Tidak ada di antara hadits-hadits Nabi Saw yang lebih mencangkup sesuatu, lebih mencukupi dan lebih banyak faedahnya selain hadits ini “.\n\n'
            'Kenapa bisa dikatakan sepertiga ilmu ? karena sesungguhnya perbuatan seorang hamba adakalanya dari hatinya, lisannya dan anggota tubuhnya, maka niat merupakan salah satu dari tiga bagian tersebut dan lebih kuat karena niat terkadang menjadi ibadah yang tersendiri sedangkan selainnya butuh terhadap niat. Oleh karenanya ada hadits yang mengatakan “ Niat seorang mukmin lebih baik dari amalnya “.\n\n'
            'Asbabul wurud Hadits :\n\n'
            'Ketika Rasul Saw tiba di Madinah untuk hijrah, beliau berkhutbah dengan hadits tersebut, karena beliau mengetahui ada seorang sahabat yang melakukan hijrah untuk menikahi seorang wanita yang bernama Muhajir Ummu Qois, maka Nabi Saw mengingatkannya dan semua sahabatnya akan pentingnya niat di dalam berhijrah.\n\n'
            'Rasulullah Saw menghkhususkan hijrah adalah تنبيها على الكل بالبعض (sebagai peringatan untuk keseluruhan dengan menggunakan kata khusus) atau istilah ushul fiqihnya خاص معموم (khusus namun umum jangkauannya).\n\n'
            'Fiqhul Hadits :\n\n'
            'Ada banyak faedah dan hikmah yang bisa di ambil dalam hadits tersebut, di antaranya :\n\n'
            '- Sesungguhnya tidak ada amalan yang diterima kecuali berdasarkan niat, misalnya tidak sah melakukan wudhu atau sholat jika tidak di awali dengan niatnya masing-masing.\n\n'
            '- Sesungguhnya manusia diberi pahala dan siksa menurut niatnya, jika niatnya baik, maka amalnya baik. Jika niatnya buruk maka amalnya buruk walaupun bentuknya baik.\n\n'
            '- Segala perbuatan manusia terdiri dari tiga bagian yaitu; keta’atan, kema’shiatan dan perkara mubah.\n\n'
            'Pertama:\n\n'
            'Kema’shiatan ; Perbuatan maksiat tidak bisa dirubah sama sekali dengan niat baik. Seperti seseorang yang mencuri harta orang lain dengan niat untuk disedahkan ke faqir miskin, maka ini hukumnya tetap dosa dan haram. Atau membangun masjid dengan biaya dari hasil riba atau berangkat haji dengan biaya hasil korupsi, maka ini semua hukumnya haram and berdosa karena itu perbuatan maksyiat dan tidak bisa dirubah dengan niat baik.\n\n'
            'Maka apa yg sering kita dengar dari saudara kita yang melakukan perbuatan maksyiat tapi dia berasalan “ Yang penting niatnya baik “, misalnya tidak memakai kerudung dengan niat beradaptasi dengan warga yang ada dilingkungannya yg tidak memakai kerudung, maka ini adalah suatu kesalahan. Atau duduk bersama teman-temannya yang sedang menggunjing orang lain dengan niatan idkhoolus surur (supaya menyenangkan hati teman), walaupun idkholus surur itu merupakan ibadah yang baik maka ia tetap berdosa karena ia telah salah meletakkan niat. Bahkan orang yang seperti ini mendapatkan dua dosa karena niatnya yang baik dengan perbuatan buruk merupakan satu keburukan lainnya.\n\n'
            'Dan jika ia sudah mengetahui hal ini, maka ia berarti sengaja menentang syare’at dan jika ia tidak mengetahui hal ini, maka ia berdosa sebab ketidaktahuannya. Karena menuntut ilmu itu hukumnya wajib bagi setriap oran Islam. Dari sinilah pentingnya belajar ilmu karena segala bentuk kebaikan dan keburukan bisa diketahui dengan syare’at. Maka orang bodoh sudah pasti steiap waktunya condong menuju kesetan dan kehancuran.\n\n'
            'Oleh karena itu Sahl At-Tusturi Rh berkata “ Tidak ada maksyiat kepada Allah swt yang lebih besar dari pada kebodohan. Kemudian seseorg bertanya “ Wahai Abu Muhammad, apakah engkau mengetahui sesautu yang lebih berbahaya daripada kebodohan ? beliau menjawab “ Ya ada yaitu bodoh dengan kebodohannya “.\n\n'
            'Nabi Muhammad Saw bersabda “ Orang bodoh tidak ditoleran atas kebodohannya dan tidaklah halal orang bodoh berdiam atas kebodohannya dan tidaklah halal orang alim berdiam atas ilmunya “.\n\n'
            'Kedua :\n\n'
            'Keta’atan ; segala perbuatan ta’at berkaitan dengan niat di dalam kebsahan dan kelipatan pahalanya. Misalnya ia berbuat ta’at dengan niat karena Allah Swt bukan karena riya (pamer) untuk org lain maka keta’atannya diterima oleh Allah Swt dan sebaliknya jika niat riya maka keta’atannya akan berubah menjadi maksyiat.\n\n'
            'Dan jika di dalm satu kebaikan atau keta’atan memungkinkan untuk mendapatkan pahala yang berlipat jika niat baiknya di perbanyak, misalnya duduk di masjid, dari duduk di masjid ini kita bisa memperoleh pahala yang banyak dan berlipat dengan niat :\n\n'
            '1. Berkeyakinan masjid adalah rumah Allah swt, maka org yang masuk ke dalamnya adalah pengunjung atau tamu Allah. Maka dia berniat mengunjungi Allah Swt. Nabi Saw telah menjanjikan orang yang niat bertamu ke rumah Allah dalam sabdanya “ Barangsiapa yg duduk di masjid maka ia berarti telah ziarah ke Allah Swt, maka berhak bagi yg diziarahi memuliakan tamunya “.\n'
            '2. Menunggu sholat, maka duduknya di masjid ditulis sholat oleh Allah Swt.\n'
            '3. Menghindari anggota tubuh dari perbuatan dosa\n'
            '4. Memfokuskan pikiran untuk Allah dan bertafakkur tentang nikmat Allah.\n'
            '5. Untuk berdzikir kpd Allah Swt atau untuk mendngarkan dzikir. Nabi Saw bersabda “ Barangsiapa yang berangkat ke masjid untuk berdzikir kpd Allah Swt atau untuk mendengarkan dzikir, maka ia seperti mujahid di jalan Allah “.\n'
            '6. Niat mendapat faedah ilmu dengan amar makruf nahi munkar, karena di dalam masjid terkadang ada orang yang salah dalam sholatnya atau ada orang yang melakukan kesalahan, maka dia memberi petunjuk kepdanya maka ia pun mendapat pahala yang berlipat, karena orang yg menunjukkan kebaikan pada orang lain seperti orang yg melakukannya.\n'
            '7. Niat mencari teman untuk bersaudara kerena Allah swt.\n'
            'Dan seterusnya…\n\n'
            'Ketiga :\n\n'
            'Perkara Mubah, bisa menjadi pahala atau qurbah (kedekatan kepada Allah) dengan niat yang baik atau bisa memperoleh pahala yang berlipat dengan niat baik yang banyak. Misalnya makan, ini adalah hal mubah dan bisa mendapat pahala degannya jika diniatkan dengan niat yang baik, misalnya melaksanakan perintah Allah swt dan supaya kuat dalam beribadah.',
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
          'Hadist Niat',
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
