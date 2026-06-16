import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';

class IkhlasPage extends StatelessWidget {
  const IkhlasPage({super.key});

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
            'عَنْ عُمَرَ بْنِ الْخَطَّابِ رضي الله عنه قَالَ : سَمِعْتُ رَسُولَ اللَّهِ صلى الله عليه وسلم يَقُولُ : إنَّمَا الأَعْمَالُ بِالنِّيَّاتِ – وَفِي رِوَايَةٍ : بِالنِّيَّةِ – وَإِنَّمَا لِكُلِّ امْرِئٍ مَا نَوَى ، فَمَنْ كَانَتْ هِجْرَتُهُ إلَى اللَّهِ وَرَسُولِهِ ، فَهِجْرَتُهُ إلَى اللَّهِ وَرَسُولِهِ ، وَمَنْ كَانَتْ هِجْرَتُهُ إلَى دُنْيَا يُصِيبُهَا أَوْ امْرَأَةٍ يَتَزَوَّجُهَا ، فَهِجْرَتُهُ إلَى مَا هَاجَرَ إلَيْهِ .',
        'indo':
            'Dari Umar bin Khaththab ra, ia berkata; Aku mendengar Rasulullah saw bersabda; Amal itu hanyalah dengan niat, dan bagi setiap orang (balasan) sesuai dengan apa yang diniatkannya. Barangsiapa berhijrah (dengan niat) kepada Allah dan RasulNya, maka (ia mendapatkan balasan) hijrahnya kepada Allah dan RasulNya, dan barangsiapa berhijrah (dengan niat) kepada (keuntungan) dunia yang akan diperolehnya, atau wanita yang akan dinikahinya, maka (ia mendapatkan balasan) hijrahnya kepada apa yang ia hijrah kepadanya.',
      },
      {
        'arabic':
            'عَنْ اَبِى هُرَيْرَةَ رض قَالَ: قَالَ رَسُوْلُ اللهِ ص : اِنَّ اللهَ لاَ يَنْظُرُ اِلىَ اَجْسَامِكُمْ وَلاَ اِلىَ صُوَرِكُمْ وَ لٰكِنْ يَنْظُرُ اِلىَ قُلُوْبِكُمْ. مسلم',
        'indo':
            'Dari Abu Hurairah RA, ia berkata : Rasulullah SAW pernah bersabda, “Sesungguhnya Allah tidak melihat (menilai) bentuk tubuhmu dan tidak pula menilai kebagusan wajahmu, tetapi Allah melihat (menilai) keikhlasan hatimu”. [HR. Muslim]',
      },
      {
        'arabic':
            'وَ رَوَى اْلبُخَارِيُّ وَ مُسْلِمٌ: لَوْ اَنَّ اَحَدُكُمْ يَعْمَلُ فىِ صَخْرَةٍ صَمَّاءَ لَيْسَ لَهَا بَابٌ وَ لاَ كَوَّةٌ لَخَرَجَ عَمَلُهُ كَائِنًا مَا كَانَ. متفق عليه',
        'indo':
            '“Seandainya salah seorang di antara kamu melakukan suatu perbuatan di dalam gua yang tidak ada pintu dan lubangnya, maka amal itu tetap akan bisa keluar (tetap dicatat oleh Allah) menurut keadaannya”. [HR. Bukhari dan Muslim]',
      },
      {
        'arabic': '',
        'indo':
            'Barangsiapa memberi karena Allah, menolak karena Allah, mencintai karena Allah, membenci karena Allah, dan menikah karena Allah, maka sempurnalah imannya. (HR. Abu Dawud)',
      },
      {
        'arabic': '',
        'indo':
            '“Apabila Allah menurunkan adzab kepada sekelompok kaum, maka adzab itu akan menimpa orang-orang yang berada di dalamnya. Kemudian mereka akan dibangkitkan berdasar niat mereka masing-masing” [HR. Bukhari dan Muslim]',
      },
      {
        'arabic': '',
        'indo':
            'Barangsiapa memurkakan (membuat marah) Allah untuk meraih keridhaan manusia maka Allah murka kepadanya dan menjadikan orang yang semula meridhoinya menjadi murka kepadanya. Namun barangsiapa meridhokan Allah (meskipun) dalam kemurkaan manusia maka Allah akan meridhoinya dan meridhokan kepadanya orang yang pernah memurkainya, sehingga Allah memperindahnya, memperindah ucapannya dan perbuatannya dalam pandanganNya. (HR. Ath-Thabrani)',
      },
      {
        'arabic': '',
        'indo':
            'Rasulullah shallallahu ‘alaihi wa sallam bersabda, “Orang yang paling berbahagia dengan syafa\'atku kelak pada hari kiamat adalah orang yang mengucapkan la ilaha illallah dengan ikhlas dari dalam hati atau dirinya.” (HR. Bukhari dari Abu Hurairah radhiyallahu’anhu)',
      },
      {
        'arabic': '',
        'indo':
            'Barangsiapa memperbaiki hubungannya dengan Allah maka Allah akan menyempurnakan hubungannya dengan manusia. Barangsiapa memperbaiki apa yang dirahasiakannya maka Allah akan memperbaiki apa yang dilahirkannya (terang-terangan). (HR. Al Hakim)',
      },
      {
        'arabic': '',
        'indo':
            'Maukah kukabarkan kepada kalian mengenai sesuatu yang lebih aku takutkan menyerang kalian daripada al-Masih ad-Dajjal?”. Para sahabat menjawab, “Mau ya Rasulullah.” Beliau berkata, “Yaitu syirik yang samar. Tatkala seorang berdiri menunaikan sholat lantas membagus-baguskan sholatnya karena merasa dirinya diperhatikan oleh orang lain.” (HR. Ahmad dan Ibnu Majah, al-Bushiri berkata sanadnya hasan)',
      },
      {
        'arabic': '',
        'indo':
            'Seorang sahabat berkata kepada Rasulullah, "Ya Rasulullah, seseorang melakukan amal (kebaikan) dengan dirahasiakan dan bila diketahui orang dia juga menyukainya (merasa senang)." Rasulullah Saw berkata, "Baginya dua pahala yaitu pahala dirahasiakannya dan pahala terang-terangan." (HR. Tirmidzi)',
      },
      {
        'arabic': '',
        'indo':
            'Agama ialah keikhlasan (kesetiaan atau loyalitas). Kami lalu bertanya, "Loyalitas kepada siapa, ya Rasulullah?" Rasulullah Saw menjawab, "Kepada Allah, kepada kitabNya (Al Qur\'an), kepada rasulNya, kepada penguasa muslimin dan kepada rakyat awam." (HR. Muslim)',
      },
      {
        'arabic': '',
        'indo':
            'Nabi s.a.w. telah bersabda: "Yang sangat aku takuti atas kamu adalah syirik kecil". Sahabat bertanya: "Ya Rasulullah apakah syirik kecil itu." Jawab baginda: "Riya\'. Pada hari pembalasan kelak Allah berkata kepada mereka; pergi lah kamu kepada orang-orang yang dahulu kamu beramal kerana mereka di dunia, lihatlah disana kalau-kalau kamu mendapat kebaikkan dari mereka."',
      },
      {
        'arabic': '',
        'indo':
            'Dari Abu Hurairah r.a., Nabi s.a.w bersabda: Ada kalanya orang yang berpuasa tidak mendapat apa-apa dari puasanya kecuali lapar dan dahaga, dan ada kalanya orang yang bangun malam tidak mendapar apa-apa dari ibadatnya kecuali mengantuk, yakni tidak mendapat pahala dari amalnya.',
      },
      {
        'arabic': '',
        'indo':
            'Dari Abu Hurairah r.a., Rasulullah s.a.w bersabda: Apabila hari Khiamat maka Allah akan menghukum diantara para makhluk dan semua umat bertekuk lutut. Yang pertama akan dipanggil ialah orang yang pandai alQur\'an, orang yang mati fisabilillah dan orang kaya. Maka Allah bertanya kepada orang yang pandai AlQur\'an: Tidak kah Aku telah mengajarkan kepada mu atas apa yang Aku turunkan kepada utusanku. Jawab orang itu: Benar Tuhan ku. Firman Allah: Lalu apakah yang telah kamu lakukan atas apa yang kamu ketahui itu. Jawabnya: Aku telah mempelajarinya di waktu malam dan mengamalkannya di waktu siang. Firman Allah: Dusta kau. Malaikat juga berkata: Dusta kau, sebenarnya engkau hanya ingin di gelar qari dan ahli dalam AlQur\'an, dan sudah disebut sedemikian itu.',
      },
      {
        'arabic': '',
        'indo':
            'Lalu dipanggil orang kaya dan ditanya: Apa yang engkau telah perbuatkan terhadap harta yang telah Aku kurniakan itu? Jawabnya: Aku telah mengunakannya untuk membantu sanak saudara dan bersedekah. Firman Allah: Dusta kau. Para Malaikat juga berkata: Dusta kau, kau berbuat begitu hanya ingin disebut sebagai dermawan, dan sudah terkenal demikina itu.',
      },
      {
        'arabic': '',
        'indo':
            'Lalu dihadapkan orang yang mati syahid berjihad fisabilillah, ditanya: Kenapa kamu terbunuh? Jawabnya: Aku telah berperang untuk menegakkan agama Mu sehingga aku terbunuh. Allah berfirman: Dusta engkau. Malaikat juga berkata: Dusta engkau, engkau hanya ingin disebut pahlawan yang gagah berani dan sudah disebut demikian itu. Kemudian Nabi s.a.w memukul paha ku sambil bersabda: Hai Abu Hurairah, ketiga-tiga orang itu lah yang pertama di bakar didalam api neraka pada hari khiamat.',
      },
      {
        'arabic': '',
        'indo':
            'Dari Umamah ra, dia berkata : “seseorang laki-laki datang kepada Rasulullah saw, dan bertanya : “bagaimana pendapat Tuan akan seorang laki-laki yang tampil ke medan laga, untuk berperang dengan tujuan mencari upah dan nama...? apa yang ia dapat...? Rasulullah saw menjawab : “ia tidak memperoleh apa-apa.” Laki-laki itu bertanya sampai tiga kali, Rasul saw tetap menjawab : “ia tidak memperoleh apa-apa”. Kemudian beliau bersabda : “Allah ‘Azza wa Jalla tidak menerima suatu amalan kecuali apabila dilaksanakan dengan ikhlas demi mencari keridhaan-Nya semata” (HR. Abu Daud & Nasa’i)',
      },
      {
        'arabic': '',
        'indo':
            'Sahabat Sa\'ad bin Abi Waqash ra berkata, bahwa Rasulullah saw telah bersabda: "Nafkah yang kamu keluarkan semata-mata mencari keridhaan Allah, akan mendatangkan pahala besar bagimu. Dan termasuk mendapat pahala besar pula nafkah yang kamu berikan kepada istrimu." (HR. Bukhari).',
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
          'Hadist Tentang Ikhlas',
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
