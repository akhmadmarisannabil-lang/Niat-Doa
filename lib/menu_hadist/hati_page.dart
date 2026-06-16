import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart'; // Sesuaikan dengan jalur file ThemeProvider Anda

class HatiPage extends StatelessWidget {
  const HatiPage({super.key});

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

    // Data List konten tentang Aqiqah asli sesuai input (tanpa diubah, dipotong, atau ditambah)
    final List<Map<String, String>> kontenAqiqah = [
      {
        'arabic': '',
        'indo':
            'Dari \'Abdullah bin \'Amru bin Al \'Ash radhiyallahu \'anhu, ia berkata bahwasanya ia pernah mendengar Rasulullah shallallahu \'alaihi wa sallam bersabda,',
      },
      {
        'arabic':
            'إِنَّ قُلُوبَ بَنِي آدَمَ كُلَّهَا بَيْنَ إِصْبَعَيْنِ مِنْ أَصَابِعِ الرَّحْمَنِ كَقَلْبٍ وَاحِدٍ يُصَرِّفُهُ حَيْثُ يَشَاءُ ثُمَّ قَالَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ اللَّهُمَّ مُصَرِّفَ الْقُلُوبِ صَرِّفْ قُلُوبَنَا عَلَى طَاعَتِكَ',
        'indo':
            'Sesungguhnya hati semua manusia itu berada di antara dua jari dari sekian jari Allah Yang Maha Pemurah. Allah Subhanahu wa Ta’ala akan memalingkan hati manusia menurut kehendak-Nya. Setelah itu, Rasulullah shallallahu \'alaihi wa sallam berdoa; Allahumma mushorrifal quluub shorrif quluubanaa \'ala tho’atik [Ya Allah, Dzat yang memalingkan hati, palingkanlah hati kami kepada ketaatan beribadah kepada-Mu] (HR. Muslim no. 2654).',
      },
      {
        'arabic':
            'أَلَا وَإِنَّ فِي الْجَسَدِ مُضْغَةً إِذَا صَلَحَتْ صَلَحَ الْجَسَدُ كُلُّهُ وَإِذَا فَسَدَتْ فَسَدَ الْجَسَدُ كُلُّهُ أَلَا وَهِيَ الْقَلْبُ',
        'indo':
            'Ketahuilah, sesungguhnya di dalam tubuh manusia terdapat segumpal daging. Jika ia baik, seluruh tubuh baik. Jika ia rusak, seluruh tubuh juga rusak. Ketahuilah (segumpal daging) itu ialah hati.. (HR. Muslim).',
      },
      {
        'arabic': '',
        'indo':
            'Doa Nabi shallallahu \'alahi wasallam yang sering beliau ucapkan adalah,',
      },
      {
        'arabic':
            'اَللَّهُمَّ مُقَلِّبَ الْقُلُوْبِ ثَبِّتْ قَلْبِيْ عَلَى دِيْنِكَ',
        'indo':
            'Ya Allah, Tuhan yang membolak-balikkan hati, tetapkanlah hatiku ini pada agama-Mu',
      },
      {'arabic': '', 'indo': 'Dan di antara doa beliau juga adalah,'},
      {
        'arabic': 'وَأَسْأَلُكَ قَلْبًا سَلِيْمًا',
        'indo':
            'Aku memohon kepada-Mu hati yang bersih. (Diriwayatkan oleh Ahmad [4/123, 125]; At- Tirmidzi, nomor 3407 dan An-Nasa’i, nomor 1305)',
      },
      {
        'arabic': '',
        'indo':
            'Abu Hurairah radhiyallahu \'anhu menuturkan, Rasulullah shallallahu \'alahi wasallam bersabda,',
      },
      {
        'arabic':
            'إِنَّ اللَّهَ لاَ يَنْظُرُ إِلَى أَجْسَادِكُمْ وَلاَ إِلَى صُوَرِكُمْ وَلَكِنْ يَنْظُرُ إِلَى قُلُوْبِكُمْ وَأَشَارَ بِأَصْبَعِهِ إِلَى صَدْرِهِ',
        'indo':
            'Artinya:Sesungguhnya Allah tidak melihat kepada jasad atau bentuk kamu, akan tetapi Dia melihat kepada hati kamu, beliau menunjuk ke dadanya dengan telunjuknya. (Muslim, no. 2564)',
      },
      {
        'arabic': '',
        'indo':
            'Imam Ahmad, telah meriwayatkan sebuah hadits yang bersumber dari Anas radhiyallahu \'anhu. Ia bertutur, Rasulullah shallallahu \'alahi wasallam bersabda,',
      },
      {
        'arabic':
            'لاَ يَسْتَقِيْمُ إِيْمَانُ عَبْدٍ حَتَّى يَسْتَقِيْمَ قَلْبُهُ',
        'indo':
            'Iman seseorang tidak akan lurus (benar) sebelum hatinya lurus. (Al-Musnad, hadits no.13079)',
      },
      {
        'arabic':
            'لَقَلْبُ ابْنِ آدَمَ أَشَدُّ انْقِلاَبًا مِنَ الْقَدَرِ إِذَا اجْتَمَعَتْ غَلْيًا',
        'indo':
            'Sungguh hati manusia itu lebih cepat bolak-baliknya daripada periuk ketika sedang sangat mendidih (H.R. Ahmad).',
      },
      {
        'arabic':
            'إِنَّ الْعَبْدَ إِذَا أَخْطَأَ خَطِيئَةً نُكِتَتْ فِى قَلْبِهِ نُكْتَةٌ سَوْدَاءُ فَإِذَا هُوَ نَزَعَ وَاسْتَغْفَرَ وَتَابَ سُقِلَ قَلْبُهُ وَإِنْ عَادَ زِيدَ فِيهَا حَتَّى تَعْلُوَ قَلْبَهُ وَهُوَ الرَّانُ الَّذِى ذَكَرَ اللَّهُ ( كَلاَّ بَلْ رَانَ عَلَى قُلُوبِهِمْ مَا كَانُوا يَكْسِبُونَ',
        'indo':
            'Jika seorang hamba berbuat sebuah dosa, maka akan ditorehkan sebuah noktah hitam di dalam hatinya. Tapi jika ia meninggalkannya dan beristigfar niscaya hatinya akan dibersihkan dari noktah hitam itu. Sebaliknya jika ia terus berbuat dosa, noktah-noktah hitam akan terus bertambah hingga menutup hatinya. Itulah dinding penutup yang Allah sebutkan dalam ayat, \'Sekali-kali tidak demikian, sebenarnya apa yang selalu mereka kerjakan itu menutup hati mereka.’ (QS.al-Muthaffifin: 14). (HR. Tirmidzi dan Ibnu Majah)',
      },
      {
        'arabic':
            'وَعَنْ أَبِي هُرَيْرَةَ عَبْدِ الرَّحْمَنِ بْنِ صَخْرٍ رَضِيَ اللَّهُ عَنْهُ قَالَ : قَالَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ : إِنَّ اللَّهَ لاَ يَنْظُرُ إِلَى أَجْسَامِكُمْ وَلاَ إِلَى صُوَ رِكُمْ ، وَلَكِنْ يَنْظُرُ إِلَى قُلُوبِكُمْ',
        'indo':
            'Diriwayatkan dari Abu Hurairah Abdirrahman bin Syahrin radhiyallahu \'anhu, \'Rasulullah Shallallahu Alaihi wa Sallam bersabda, \'Sesungguhnya Allah tidak melihat kepada tubuh kalian dan tidak pula kepada rupa kalian, tetapi Dia melihat kepada hati kalian. (Diriwalatkan Muslim)',
      },
      {
        'arabic':
            'إِنَّ هذَهِ الْقُلُوْبَ تَصْدَأُ كَمَا يَصْدَأُ الْحَدِيْدُ قِيْلَ فَمَا جَلاَؤُهَا يَا رَسُوْلَ اللهِ قَالَ تِلاَوَةُ الْقُرْآنِ',
        'indo':
            'Sesungguhnya hati ini berkarat sebagaimana berkaratnya besi. Ditanyakan, \'Apa pembersihnya wahai Rasulallah?’ Rasul menjawab, \'Membaca al-Quran’. (H.R. al-Qadlā’iy).',
      },
      {
        'arabic':
            'اِتَّقِ اللهَ حَيْثُمَا كُنْتَ وَأَتْبِعِ السَّيِّئَةَ الْحَسَنَةَ تَمْحُهَا، وَخَالِقِ النَّاسَ بِخُلُقٍ حَسَنٍ',
        'indo':
            'Bertakwalah kamu kepada Allah, iringilah keburukan dengan kebaikan dan berakhlaklah kepada manusia dengan akhlak yang baik! (H.R. Ahmad dan Tirmidzi).',
      },
      {
        'arabic': 'إِنَّ الْقُلُوبَ بِيَدِ اللَّهِ عَزَّ وَجَلَّ يُقَلِّبُهَا',
        'indo':
            'Sesungguhnya hati berada di tangan Allah \'azza wa jalla, Allah yang membolak-balikkannya. (HR. Ahmad 3: 257)',
      },
      {
        'arabic': '',
        'indo':
            'Selanjutnya Anas berkata, Maka Abdullah menceritakan bahwa selama 3 hari bersama pemuda tersebut, dia tidak melihatnya melakukan qiyamul lail (shalat malam) sedikitpun. Yang dia lakukan hanyalah bertakbir dan berzikir setiap kali dia terjaga dan menggeliat di atas tempat tidurnya sampai dia bangun untuk shalat shubuh. Selain itu, Abdullah berkata, \'Hanya saja, aku tidak pernah mendengarnya berbicara kecuali yang baik-baik. Setelah 3 hari berlalu dan hampir saja aku meremehkan amalannya, aku berkata kepadanya, \'Wahai hamba Allah, sebenarnya tidak pernah ada pertengkaran antara aku dengan bapakku, dan tidak pula aku menjauhinya. Sebenarnya, aku hanya mendengar Rasulullah berkata tentang engkau tiga kali, \'Akan muncul di hadapan kalian saat ini seorang laki-laki calon penghuni surga.’ Dan ternyata engkaulah yang muncul sebanyak 3 kali itu. Karena itu, aku jadi ingin tinggal bersamamu agar aku bisa melihat apa yang engkau lakukan untuk kemudian aku tiru. Akan tetapi, aku tidak melihat engkau melakukan amalan yang besar. Lantas, amalan apa sebenarnya yang bisa menyampaikan engkau kepada kedudukan sebagaimana yang dikatakan oleh Rasulullah?’ Orang tersebut berkata, \'Aku tidak melakukan kecuali apa yang kamu lihat.’ Maka ketika aku telah berpaling (pergi), dia memanggilku dan berkata, \'Sebenarnyalah aku memang tidak melakukan apa-apa selain yang engkau lihat. Hanya saja, selama ini aku tidak pernah merasa dongkol dan dendam kepada seorang pun dari kaum muslimin, serta tidak pernah menyimpan rasa hasad terhadap seorang pun terhadap kebaikan yang telah Allah berikan kepadanya.’ Maka Abdullah berkata, \'Inilah amalan yang membuatmu sampai pada derajat tinggi, dan inilah yang tidak mampu kami lakukan.\' (HR. Ahmad)',
      },
      {
        'arabic': '',
        'indo':
            'Ya Rasulullah! siapakah orang yang terbaik itu? maka beliau menjawab : yaitu orang mukmin yang bersih hatinya, maka ditanyakan lagi : apakah artinya orang yang bersih hatinya itu wahai Rasulullah? beliau lalu menjawab : ialah orang yang takwa, bersih tidak ada kepalsuan padanya, tak ada kedurhakaan, pengkhianatan, dendam dan kedengkian. (HR. Ibnu Majah)',
      },
      {
        'arabic': '',
        'indo':
            'Diriwayatkan dari Anas bin Malik, beliau berkata, Suatu ketika kami duduk-duduk bersama Rasulullah. Tiba-tiba beliau berkata, \'Akan lewat di hadapan kalian saat ini seorang calon penghuni surga.’ Lalu lewatlah seorang pemuda Anshar dalam keadaan dari jenggotnya menetes sisa-sisa air wudhu dan tangan kirinya menenteng sandal. Pada keesokan harinya, Rasulullah bersabda lagi persis sebagaimana sabdanya kemarin, lalu lewatlah pemuda tersebut dengan keadaan persis dengan keadaannya yang kemarin. Dan pada hari yang ketiga Rasulullah mengulang lagi sabdanya seperti sabdanya yang pertama dan pemuda itu pun muncul lagi dengan keadaan seperti keadaannya yang pertama. Maka, ketika Rasulullah beranjak pergi, Abdullah bin \'Amr bin \'Ash segera mengikuti pemuda tersebut (ke rumahnya), lalu berkata kepadanya, \'Sesungguhnya antara aku dan bapakku telah terjadi perselisihan, maka aku bersumpah tidak akan masuk ke rumahnya selama 3 hari. Jika engkau tidak keberatan, aku ingin menumpang padamu selama 3 hari tersebut.’ Pemuda tersebut berkata, \'Ya, tidak apa-apa.\'',
      },
      {
        'arabic': '',
        'indo':
            'Dan Rasulullah shallallahu \'alaihi wa sallam pernah ditanya: \'Siapakah orang yang paling utama?’ Beliau menjawab, \'Setiap orang yang bersih hatinya dan benar ucapannya.’ Para sahabat berkata, \'Orang yang benar ucapannya telah kami pahami maksudnya. Lantas apakah yang dimaksud dengan orang yang bersih hatinya?’ Rasulullah menjawab, \'Dia adalah orang yang bertakwa (takut) kepada Allah, yang suci hatinya, tidak ada dosa dan kedurhakaan di dalamnya, serta tidak ada pula dendam dan hasad.’ (Diriwayatkan dari Abdullah bin \'Amr bin \'Ash, dikeluarkan oleh Ibnu Majah no.4216 dan Ath-Thabrani)',
      },
      {
        'arabic': '',
        'indo':
            'Hati orang mukmin itu bersih di dalamnya ada lampu yang bersinar dan hati orang kafir itu hitam dan terbalik (HR. Ahmad & Thabrani).',
      },
      {
        'arabic': '',
        'indo':
            'Sesiapa yang melakukan satu dosa, maka akan tumbuh pada hatinya setitik hitam, sekiranya dia bertaubat akan terkikislah titik hitam itu daripada hatinya. Jika dia tidak bertaubat maka titik hitam itu akan terus merebak hingga seluruh hatinya menjadi hitam.(Hadis riwayat Ibn Majah)',
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
          'Hadist Tentang Hati',
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
              ...kontenAqiqah.asMap().entries.map((entry) {
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
                    if (idx < kontenAqiqah.length - 1) ...[
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
