import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';

class CintaPage extends StatelessWidget {
  const CintaPage({super.key});

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
        'arabic': '',
        'indo':
            '“Cintailah Allah atas anugerah nikmat yang diberikan kepadamu, dan cintailah aku karena cinta kepada Allah, dan cintailah keluargaku karena mencintaiku.” (HR. At-Tirmidzy dan Al-Hakim)',
      },
      {
        'arabic': '',
        'indo':
            'Bahwa seseorang mengunjungi saudaranya di desa lain, lalu Allah mengutus malaikat untuk membuntutinya. Tatkala malaikat menemaninya, ia berkata: “Kau mau kemana?” Ia menjawab: “Aku ingin mengunjungi saudaraku di desa ini.” Lalu malaikat bertanya: “Apakah kamu akan memberikan sesuatu kepada saudaramu?” Ia menjawab: “Tidak ada, melainkan hanya aku mencintainya karena Allah SWT”. Malaikat berkata: “Sesungguhnya aku diutus Allah kepadamu, bahwa Allah mencintaimu sebagaimana kamu mencintai orang tersebut karena-Nya”. (HR. Muslim)',
      },
      {
        'arabic': '',
        'indo':
            'Dalam riwayat Bukhari dan Muslim, Anas bin Malik radhiyallahu ‘anhu menceritakan “Ketika saya dan Rasulullah shallallahu ‘alaihi wa sallam keluar dari masjid, kami bertemu dengan seorang laki-laki di pintu masjid. Dan pria itu bertanya ‘Wahai Rasulullah, kapankah hari kebangkitan?’.” Beliau bertanya, “Apa persiapanmu menghadapi hari kiamat itu?” Lelaki itu seakan merasa bersedih, kemudian berkata, “Wahai Rasulullah, Saya tidak punya persiapan suatu yang besar baik berupa shalat, puasa, dan sedekah, tetapi saya mencintai Allah dan Rasul-Nya.” Mendengar ini, Rasulullah shallallahu ‘alaihi wa sallam menjawab, “Engkau akan dikumpulkan bersama siapa saja yang engkau cintai.”',
      },
      {
        'arabic': '',
        'indo':
            '“Demi Dzat yang jiwaku berada di dalam genggaman-Nya, kalian tidak akan masuk surga sebelum kalian beriman. Kalian tidak akan beriman sebelum kalian saling mencintai. Tidakkah aku tunjukkan kepada kalian mengenai sesuatu yang ketika kalian melakukannya, maka kalian akan saling mencintai? Sebarkanlah salam di antara kalian!.” (HR. Muslim)',
      },
      {
        'arabic': '',
        'indo':
            '“Sesungguhnya Allah SWT pada hari kiamat berfirman : Dimanakah orang yang cinta mencintai karena keagungan-Ku? Pada hari ini Aku akan menaungi dengan menunggu-Ku dihari yang tiada naungan melainkan naungan-Ku.” (H.R. Muslim)',
      },
      {
        'arabic': '',
        'indo':
            '“Tiga perkara, yang barang siapa memilikinya, ia dapat merasakan manisnya iman, yaitu cinta kepada Allah dan Rasul melebihi cintanya kepada selain keduanya, cinta kepada seseorang karena Allah dan membenci kekafiran sebagaimana ia tidak mau dicampakan ke dalam api neraka.” (H.R. Bukhari-Muslim)',
      },
      {
        'arabic': '',
        'indo':
            '“Sesungguhnya seorang muslim apabila bertemu saudaranya yang muslim, lalu ia memegang tangannya (berjabat tangan) gugurlah dosa keduanya sebagaimana gugurnya daun dan pohon kering jika ditiup angin kencang. Sungguh diampuni dosa mereka berdua, meski sebanyak buih dilaut.” (H.R. Tabrani)',
      },
      {
        'arabic': '',
        'indo':
            '“Bila ada seorang yang agama dan akhlaqnya telah engkau sukai, datang kepadamu melamar, maka terimalah lamarannya. Bila tidak, niscaya akan terjadi kekacauan dan kerusakan besar di muka bumi.”',
      },
      {
        'arabic': '',
        'indo':
            'Bahwa seseorang mengunjungi saudaranya di desa lain, lalu Allah mengutus malaikat untuk membuntutinya. Tatkala malaikat menemaninya malaikat berkata, “Kau mau kemana?” Ia menjawab, “Aku ingin mengujungi saudaraku di desa ini.” Malaikat terus bertanya, “Apakah kamu akan memberikan sesuatu pada saudaramu?” Ia menjawab, “Tidak ada, melainkan hanya aku mencintainya karena Allah SWT.” Malaikat berkata, “Sesungguhnya aku diutus Allah kepadamu, bahwa Allah mencintaimu sebagaimana kamu mencintai orang tersebut karena-Nya”. (H.R. Muslim)',
      },
      {
        'arabic': '',
        'indo':
            '“Biasanya, seorang wanita itu dinikahi karena empat alasan: karena harta kekayaannya, kedudukannya, kecantikannya dan karena agamanya. Hendaknya engkau menikahi wanita yang taat beragama, niscaya engkau akan bahagia dan beruntung.” (Muttafaqun ‘alaih)',
      },
      {
        'arabic': '',
        'indo':
            '“Perumpamaan orang-orang yang beriman dalam hal rasa saling mencintai, saling mengasihi, saling berkasih sayang adalah seperti satu tubuh yang ketika satu anggota tubuh itu ada yang mengeluh, maka seluruh tubuh merasa mengaduh dengan terus jaga tidak bisa tidur dan merasa panas.” (HR. Muslim)',
      },
      {
        'arabic': '',
        'indo':
            '“Cintailah kekasihmu sewajarnya saja karena bisa saja suatu saat nanti ia akan menjadi orang yang kamu benci. Bencilah sewajarnya karena bisa saja suatu saat nanti ia akan menjadi kekasihmu.” (HR. Al-Tirmidzi)',
      },
      {
        'arabic': '',
        'indo':
            '“Barang siapa yang mencintai karena Allah, membenci karena Allah, memberi karena Allah, dan tidak memberi karena Allah. Maka ia sesungguhnya telah memperoleh kesempurnaan iman.”',
      },
      {
        'arabic': '',
        'indo':
            '“Hiduplah sesukamu maka sesungguhnya kamu akan mati. Cintailah sesuatu sesukamu maka sesungguhnya kamu akan berpisah. Berbuatlah sesukamu maka sesungguhnya kamu akan bertemu dengannya.” (H.R. Hakim)',
      },
      {
        'arabic': '',
        'indo':
            '“Syirik itu lebih halus dari perjalanan semut yang halus di atas batu licin, di malam gelap gulita dan serendah–rendahnya syirik adalah engkau mencintai seseorang karena kekurangannya dan membenci seseorang karena keadilannya. Bukanlah agama itu, kecuali cinta dan benci.”',
      },
      {
        'arabic': '',
        'indo':
            '“Ya Allah, berilah aku rezeki cinta-Mu dan cinta orang yang bermanfaat buatku cintanya di sisi-Mu. Ya Allah segala yang Engkau rezekikan untukku diantara yang aku cintai, jadikanlah itu sebagai kekuatanku untuk mendapatkan yang Engkau cintai. Ya Allah, apa yang Engkau singkirkan diantara sesuatu yang aku cintai, jadikan itu kebebasan untukku dalam segala hal yang Engkau cintai.” (H.R. Al-Tirmidzi)',
      },
      {
        'arabic': '',
        'indo':
            'Sesungguhnya orang-orang yang saling mencintai, kamar-kamarnya di surga nanti terlihat seperti bintang yang muncul dari timur atau bintang barat yang pijar. Lalu ada yang bertanya, “Siapa mereka itu?”, “Mereka itu adalah orang-orang yang mencintai karena Allah ‘Azzawajalla.” (HR. Ahmad)',
      },
      {
        'arabic': '',
        'indo':
            '“Janganlah seorang laki-laki dan wanita berkhalwat (berduaan di tempat sepi), sebab syaitan menemaninya, janganlah salah seorang dari kalian berkhalwat dengan wanita, kecuali disertai dengan mahramnya.” (HR. Imam Bukhari Muslim).',
      },
      {
        'arabic': '',
        'indo':
            'Sabda Rasulullah “Man ahya sunnatii faqod ahabbanii, waman ahabbani kaana ma’ii fil jannah” – “Barangsiapa yang menghidupkan sunnahku, sungguh dia cinta kepadaku. Dan barangsiapa yang mencintai aku maka dia akan bersamaku di surga.”',
      },
      {
        'arabic': '',
        'indo':
            '“Bila ada seorang yang agama dan akhlaqnya telah engkau sukai, datang kepadamu melamar, maka terimalah lamarannya. Bila tidak, niscaya akan terjadi kekacauan dan kerusakan besar di muka bumi.” (Riwayat At-Tirmidzy dan lainnya)',
      },
      {
        'arabic': '',
        'indo':
            'Rasulullah saw. bersabda: “Sesungguhnya apabila Allah mencintai seorang hamba, maka Dia akan memanggil Jibril dan berkata: Sesungguhnya Aku mencintai si fulan maka cintailah dia! Jibril pun mencintainya. Kemudian dia menyeru para penghuni langit: Sesungguhnya Allah mencintai si fulan, maka cintailah dia! Para penghuni langitpun mencintainya. Kemudian dia pun diterima di bumi. Dan apabila Allah membenci seorang hamba, maka Dia memanggil Jibril dan berkata: Sesungguhnya Aku membenci si fulan, maka bencilah pula dia! Jibril pun membencinya. Kemudian dia menyeru para penghuni langit: Sesungguhnya Allah membenci si fulan, maka bencilah kepadanya. Para penghuni langit pun membencinya. Kemudian kebencian pun merambat ke bumi.” (Riwayat Abu Hurairah ra)',
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
          'Hadist Tentang Cinta',
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
