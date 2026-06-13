import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';

class WanitaPage extends StatelessWidget {
  const WanitaPage({super.key});

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
            'Dari HR. At-Tirmidji, Nabi salallahualahiwasallam bersabda, “Mana-mana perempuan yang meninggal dunia dalam keadaan suaminya redha padanya, maka dia akan masuk syurga”.',
      },
      {
        'arabic': '',
        'indo':
            'Dalam riwayat HR Ahmad Rasulullah bersabda, "Apabila seorang isteri menjaga solat lima waktu, berpuasa di bulan Ramadan, menjaga kehormatannya dan taat kepada suaminya, maka ketika berada di akhirat dikatakan kepadanya: Masuklah kamu ke dalam syurga dari pintu mana saja yang kamu suka".',
      },
      {
        'arabic': '',
        'indo':
            'Bersabda Rasulullah SAW: "Sampaikanlah kepada sesiapa yang engkau temui daripada kaum wanita, bahawasanya taat kepada suami dan mengakui haknya adalah menyamai pahala orang yang berjihad pada jalan Allah, akan tetapi sedikit dari golongan kamu yang dapat melakukannya."  Riwayat dari Al-Bazzar dan Ath-Thabrani',
      },
      {
        'arabic': '',
        'indo':
            'Ketika beginda selesai berkhutbah hari raya yang berisikan perintah untuk bertakwa kepada Allah s.w.t. dan anjuran untuk mentaatiNya. Baginda pun bangkit mendatangi kaum wanita, baginda menasihati mereka dan mengingatkan mereka tentang akhirat kemudian baginda bersabda : “Bersedekahlah kamu semua. Kerana kebanyakan kamu adalah kayu api Neraka Jahanam!” Maka berdirilah seorang wanita yang duduk di antara wanita-wanita lainnya yang berubah kehitaman kedua pipinya, dia pun bertanya : “Mengapa demikian, wahai Rasulullah?” Baginda menjawab : “Kerana kamu banyak mengeluh dan kamu tidak taat terhadap suami.” (Hadis Riwayat Al- Bukhari)',
      },
      {
        'arabic': '',
        'indo':
            'Abdullah bin Amr radhiyallahu ‘anhuma meriwayatkan sabda Rasulullah Shalallahu ‘alaihi wa sallam : “Sesungguhnya dunia itu adalah perhiasan dan sebaik-baik perhiasan dunia adalah wanita shalihah.” (HR. Muslim no. 1467)',
      },
      {
        'arabic': '',
        'indo':
            'Dari Abdullah bin ‘Umar radhiyallahu ‘anhu berkata, Rasulullah Shallallahu ‘alaihi wa Sallam bersabda (artinya) :\n“Janganlah kalian melarang wanita-wanita kalian dari masjid-masjid, akan tetapi rumah-rumah mereka adalah lebih baik untuk mereka.” (HR. Abu Dawud dan Ibnu Khuzaimah; Shahih)',
      },
      {
        'arabic': '',
        'indo':
            'Rasulullah SAW bersabda: “Apabila seorang wanita redha atas kehamilannya dari suaminya yang sah, sesungguhnya ia telah mendapat ganjaran pahala seperti ibadah puasa dan mengerjakan ibadah-ibadah lainnya dijalan Allah; dan jika ia merasa berat, letih atau lesu, tidaklah dapat dibayangkan oleh penghuni langit dan bumi, betapa kesenangannya disediakan oleh Allah di hari akhirat nanti. Apabila anaknya lahir, maka dari setiap teguk air susu yang dihisap oleh anak, si ibu mendapat kebajikan pahala. Apabila si ibu berjaga malam (kurang tidur kerana anak) maka si ibu mendapat ganjaran pahala seperti memerdekakan 70 orang hamba sahaya kerana Allah.” (HR Ibn Hibban)',
      },
      {
        'arabic': '',
        'indo':
            'Sabda Rasulullah s.a.w : “Allah tidak akan melihat kepada wanita yang tidak mensyukuri apa yang ada pada suaminya dan tidak merasa cukup dengannya.” Dari HR. Nasa’i',
      },
      {
        'arabic': '',
        'indo':
            'Rasulullah s.a.w bersabda: “Wanita yang meminta cerai kepada suaminya tanpa sebab yang syar’ie, maka haram baginya mencium wangi Syurga.” Hadis Riwayat Abu Daud dan At-Tirmizi.',
      },
      {
        'arabic': '',
        'indo':
            'Di dalam kisah gerhana matahari yang mana Rasulullah shallallahu ‘alaihi wasallam dan para shahabatnya melakukan shalat gerhana padanya dengan shalat yang panjang, beliau melihat surga dan neraka. Ketika beliau melihat neraka beliau bersabda kepada para shahabatnya : “… Dan aku melihat neraka maka tidak pernah aku melihat pemandangan seperti ini sama sekali, aku melihat kebanyakan penduduknya adalah kaum wanita”.\nPara shahabat pun bertanya : “Wahai Rasulullah, Mengapa (demikian) ?”\nBeliau menjawab : “Karena kekufuran mereka.”\nKemudian mereka bertanya lagi : “Apakah mereka kufur kepada Allah?”\nBeliau menjawab : “Mereka kufur (durhaka) terhadap suami-suami mereka, kufur (ingkar) terhadap kebaikan-kebaikannya. Kalaulah engkau berbuat baik kepada salah seorang di antara mereka selama waktu yang panjang kemudian dia melihat sesuatu pada dirimu (yang tidak dia sukai) niscaya dia akan berkata : Aku tidak pernah melihat sedikitpun kebaikan pada dirimu.” (HR. Bukhari dari Ibnu Abbas radhiyallahu ‘anhuma)',
      },
      {
        'arabic': '',
        'indo':
            '“Barangsiapa yang mempunyai tiga orang anak perempuan, dia melindungi, mencukupi, dan menyayanginya, maka wajib baginya surga.” Ada yang bertanya, “Bagaimana kalau dua orang anak wanita wahai Rasulullah?” Beliau menjawab, “Dua anak wanita juga termasuk.” (Bukhari dalam al-Adab al-Mufrad no. 178).',
      },
      {
        'arabic': '',
        'indo':
            'Sesungguhnya Allah mengharamkan atas kalian berbuat durhaka kepada ibu-ibu kalian, mencegah dan meminta serta mengubur anak perempuan hidup-hidup. (HR. Bukhari: 5975, Muslim: 593).',
      },
      {
        'arabic': '',
        'indo':
            'Rasulullah shalallahu’alaihi wa sallam bersabda : “Ada dua kelompok termasuk ahli neraka, aku belum pernah melihatnya : Suatu kaum yang memiliki cambuk seperti ekor sapi, mereka memukul manusia dengan cambuknya, dan wanita yang kasiyat (berpakain tapi telanjang baik karena tipis, atau pendek yang tidak menutup semua auratnya), Mailat mumilat (bergaya ketika berjalan, ingin diperhatikan orang) kepala mereka seperti punuk onta yang berpunuk dua. Mereka tidak masuk surga dan tidak mendapatkan baunya padahal bau surga itu akan didapati dari sekian dan sekian (perjalanan 500 tahun).” (HR. Muslim 3971, Ahmad 8311 dan Imam Malik 1421)',
      },
      {
        'arabic': '',
        'indo':
            'Rasulullah shalallahu ‘alaihi wa sallam bersabda : “Sesungguhnya kepala yang ditusuk dengan besi itu lebih baik dari pada menyentuh kaum yang bukan sejenis yang tidak halal baginya.” (HR. At-Thabrani dan Baihaqi)',
      },
      {
        'arabic': '',
        'indo':
            'Rasulullah shalallahu ‘alaihi wa sallam bersabda : “Barang siapa memakai pakaian yang berlebih-lebihan, maka Allah akan memberikan pakaian kehinaan dihari akhir nanti.” (HR. Abu Daud)',
      },
      {
        'arabic': '',
        'indo':
            'Dari ‘Abdullah bin Mas’ud radhiyallahu ‘anhu, dari Nabi Shallallahu’alaihi wa Sallam, beliau bersabda (artinya) :\n“Sesungguhnya wanita adalah aurat. Sehingga ketika ia keluar rumah, ia akan disambut oleh syaithan. Dan kondisi yang akan lebih mendekatkan dirinya dengan Rabbnya adalah ketika ia berada di rumahnya.” (HR. Ibnu Khuzaimah; Shahih)',
      },
      {
        'arabic': '',
        'indo':
            'Rasulullah Shalallahu ‘alaihi wa sallam bersabda kepada Umar ibnul Khaththab radhiyallahu ‘anhu : “Maukah aku beritakan kepadamu tentang sebaik-baik perbendaharaan seorang lelaki, yaitu istri shalihah yang bila dipandang akan menyenangkannya, bila diperintah akan mentaatinya, dan bila ia pergi si istri ini akan menjaga dirinya.” (HR. Abu Dawud no. 1417. Asy-Syaikh Muqbil rahimahullah berkata dalam Al-Jami’ush Shahih 3/57 : “Hadits ini shahih di atas syarat Muslim.”)',
      },
      {
        'arabic': '',
        'indo':
            'Rasulullah Shalallahu ‘alaihi wa sallam bersabda bagi lelaki yang ingin menikah : “Wanita itu dinikahi karena empat perkara yaitu karena hartanya, karena keturunannya, karena kecantikannya, dan karena agamanya. Maka pilihlah olehmu wanita yang punya agama, engkau akan beruntung.” (HR. Al-Bukhari no. 5090 dan Muslim no. 1466)',
      },
      {
        'arabic': '',
        'indo':
            '“Ada seseorang datang menemui Nabi SAW dan bertanya, ‘Wahai Rasulullah, kepada siapakah aku selayaknya berbuat baik?’ Beliau menjawab, ‘Kepada ibumu!’ Orang tadi bertanya kembali, ‘Lalu kepada siapa lagi? Rasulullah menjawab, ‘Ibumu.’ Kemudian ia mengulangi pertanyaannya, dan Rasulullah tetap menjawab, ‘Kepada ibumu!’ Ia bertanya kembali, ‘Setelah itu kepada siapa lagi?’ Beliau menjawab, ‘Kepada bapakmu!\'” (Bukhari: 5971, Muslim: 2548).',
      },
      {
        'arabic': '',
        'indo':
            'Rasulullah Shalallahu ‘alaihi wa sallam pernah pula bersabda : “Empat perkara termasuk dari kebahagiaan, yaitu wanita (istri) yang shalihah, tempat tinggal yang luas/lapang, tetangga yang shalih, dan tunggangan (kendaraan) yang nyaman. Dan empat perkara yang merupakan kesengsaraan yaitu tetangga yang jelek, istri yang jelek (tidak shalihah), kendaraan yang tidak nyaman, dan tempat tinggal yang sempit.” (HR. Ibnu Hibban)',
      },
      {
        'arabic': '',
        'indo':
            'Ketika Umar ibnul Khaththab radhiyallahu ‘anhu bertanya kepada Rasulullah Shalallahu’alaihi wa sallam : “Wahai Rasulullah, harta apakah yang sebaiknya kita miliki ?”\nBeliau Shalallahu ‘alaihi wa sallam menjawab : “Hendaklah salah seorang dari kalian memiliki hati yang bersyukur, lisan yang senantiasa berdzikir dan istri mukminah yang akan menolongmu dalam perkara akhirat.” (HR. Ibnu Majah no. 1856)',
      },
      {
        'arabic': '',
        'indo':
            'Al Bukhari meriwayatkan dari Abu Hurairah radhiyallahu ‘anhu dari Nabi Shallallhu ‘alaihi wa sallam, beliau bersabda, yang artinya :\n“Barangsiapa yang beriman kepada Allah and hari Akhir, janganlah ia mengganggu tetangganya, dan berbuat baiklah kepada wanita. Sebab, mereka diciptakan dari tulang rusuk, dan tulang rusuk yang paling bengkok adalah bagian atasnya. Jika engkau meluruskannya, maka engkau mematahkannya dan jika engkau biarkan, maka akan tetap bengkok. Oleh karena itu, berbuatlah baik kepada wanita.” (HR. Bukhari dan Muslim)',
      },
      {
        'arabic': '',
        'indo':
            'Rasulullah Shalallahu’alaihi wa sallam bersabda : “Apabila seorang wanita shalat lima waktu, puasa sebulan (Ramadhan), menjaga kemaluannya dan taat kepada suaminya, maka dikatakan kepadanya : Masuklah engkau ke dalam surga dari pintu mana saja yang engkau sukai.” (HR. Ahmad)',
      },
      {
        'arabic': '',
        'indo':
            'Rasulullah Shallallahu ‘alaihi wa sallam bersabda : “Maukah aku beritahukan kepada kalian, istri-istri kalian yang menjadi penghuni surga yaitu istri yang penuh kasih sayang, banyak anak, selalu kembali kepada suaminya. Di mana jika suaminya marah, dia mendatangi suaminya dan meletakkan tangannya pada tangan suaminya seraya berkata : “Aku tak dapat tidur sebelum engkau ridha.” (HR. An-Nasai)',
      },
      {
        'arabic': '',
        'indo':
            'Rasulullah Shallallahu’alaihi wa sallam bersabda : “Tidak halal bagi seorang istri berpuasa (sunnah) sementara suaminya ada (tidak sedang bepergian) kecuali dengan izinnya”. (HR. Al-Bukhari no. 5195 dan Muslim no. 1026)',
      },
      {
        'arabic': '',
        'indo':
            'Rasulullah Shallallahu ‘alaihi wa sallam juga pernah bersabda : “Allah tidak akan melihat kepada seorang istri yang tidak bersyukur kepada suaminya padahal dia membutuhkannya.” (HR. An-Nasai dalam Isyratun Nisa. Silsilah Al-Ahadits Ash-Shahihah no. 289)',
      },
      {
        'arabic': '',
        'indo':
            'Rasulullah Shallallahu ‘alaihi wa sallam bersabda : “Demi Dzat yang jiwaku berada di tangan-Nya, tidaklah seorang suami memanggil istrinya ke tempat tidurnya lalu si istri menolak (enggan) melainkan yang di langit murka terhadapnya hingga sang suami ridha padanya.” (HR. Muslim no.1436)',
      },
      {
        'arabic': '',
        'indo':
            'Rasulullah Shalallahu’alaihi wa sallam bersabda : “Apabila seorang istri bermalam dalam keadaan meninggalkan tempat tidur suaminya, niscaya para malaikat melaknatnya sampai ia kembali (ke suaminya).” (HR. Al-Bukhari no. 5194 dan Muslim no. 1436)',
      },
      {
        'arabic': '',
        'indo':
            'Kisah wanita yang akan berangkat menunaikan shalat ‘ied, ia tidak memiliki jilbab, maka diperintah oleh Rasulullah shalallahu ‘alaihi wa sallam : “Hendaknya Saudarinya meminjaminya Jilbab untuknya.” (HR. Bukhari No. 318).',
      },
      {
        'arabic': '',
        'indo':
            'Rasulullah shallallahu ‘alaihi wa sallam bersabda di akhir kehidupannya, dan hal itu terjadi pada haji Wada’ : “Ingatlah, berbuat baiklah kepada wanita. Sebab, mereka itu (bagaikan) tawanan di sisi kalian. Kalian tidak berkuasa terhadap mereka sedikit pun selain itu, kecuali bila mereka melakukan perbuatan nista. Jika mereka melakukannya, maka tinggalkanlah mereka di tempat tidur mereka dan pukul lah mereka dengan pukulan yang tidak melukai. Jika ia mentaati kalian, maka janganlah berbuat aniaya terhadap mereka. Mereka pun tidak boleh memasukkan siapa yang tidak kalian sukai ke tempat tidur dan rumah kalian. Ketahuilah bahwa hak mereka atas kalian adalah kalian berbuat baik kepada mereka (dengan mencukupi) pakaian dan makanan mereka.” (HR. Tirmidzi dan Ibnu Majah, shahih)',
      },
      {
        'arabic': '',
        'indo':
            'Ummu Salamah berkata : “Wahai Rasulullah, bagaimana wanita berbuat dengan pakaiannya yang menjulur ke bawah ?”\nBeliau bersabda : “Hendaklah mereka memanjangkan satu jengkal”,\nlalu ia bertanya lagi : “Bagaimana bila masih terbuka kakinya ?”\nBeliau menjawab : “Hendaknya menambah satu hasta, dan tidak boleh lebih”. (HR. Tirmidzi 653 dan berkata : “Hadits hasan shahih”).',
      },
      {
        'arabic': '',
        'indo':
            'Dari Sa’ad radhiyallahu ‘anhu bahwa Rasulullah shalallahu ‘alaihi wa salam bersabda padanya : “Apapun yang engkau berikan berupa suatu nafkah kepada keluargamu, maka engkau diberi pahala, hingga sampai sesuap makanan yang engkau angkat (masukkan) ke mulut istrimu.” (HR. Bukhari dan Muslim)',
      },
      {
        'arabic': '',
        'indo':
            'Al-Hushain bin Mihshan rahimahullahu menceritakan bahwa bibinya pernah datang ke tempat Nabi Shalallahu ‘alaihi wa sallam karena satu keperluan. Seselesainya dari keperluan tersebut, Rasulullah Shallallahu ‘alaihi wa sallam bertanya kepadanya :\n“Apakah engkau sudah bersuami?”\nBibi Al-Hushain menjawab : “Sudah.”\n“Bagaimana (sikap) engkau terhadap suamimu ?” tanya Rasulullah lagi.\nIa menjawab : “Aku…tidak pernah mengurangi haknya kecuali dalam perkara yang aku tidak mampu.”\nRasulullah bersabda : “Lihatlah di mana keberadaanmu dalam pergaulanmu dengan suamimu, karena suamimu adalah surga dan nerakamu ” (HR. Ahmad 4/341 dan selainnya, lihat Ash-Shahihah no. 2612)',
      },
      {
        'arabic': '',
        'indo':
            'Diriwayatka oleh HR Hasa\'i, Baihaqi, Ahmad dan Al-Hakim, Rasulullah bersabda, “Dan sebaik-baik wanita ialah mereka yang bisa mengembirakan engkau apabila kamu melihatnya, dan yang mentaati kamu apabila kamu menyuruhnya, dan dia memelihara maruah dirinya dan harta engkau ketika ketiadaanmu".',
      },
      {
        'arabic': '',
        'indo':
            'Baginda Rasulullah berkata, Dunia ini adalah perhiasan dan sebaik-baik perhiasan adalah wanita solehah. Hadist riwayat HR. Muslim.',
      },
      {
        'arabic': '',
        'indo':
            'Dalam hadist yang diriwayatkan oleh Hadis Riwayat Al- Bukhari dan Muslim, Rasulullah s.a.w berkata: “Aku melihat ke dalam Syurga maka aku melihat kebanyakan penghuninya adalah fuqara’ (orang-orang fakir) dan aku melihat ke dalam Neraka maka aku menyaksikan kebanyakan penghuninya adalah wanita.”',
      },
      {
        'arabic': '',
        'indo':
            'Rasulullah shalallahu ‘alaihi wa sallam bersabda (artinya) : “Wahai anakku Fatimah ! Adapun perempuan-perempuan yang akan digantung rambutnya hingga mendidih otaknya dalam neraka adalah mereka itu di dunia tidak mau menutup rambutnya daripada dilihat laki-laki yang bukan mahramnya.” (HR. Bukhari & Muslim)',
      },
      {
        'arabic': '',
        'indo':
            'Dari Hamzah bin Abi Usaid al-Anshari, dari bapaknya, bahwa ia telah mendengar Rasulullah Shallallahu ‘alaihi wa Sallam bersabda kepada para wanita (saat itu beliau sambil keluar dari masjid, dan terlihat laki-laki dan wanita berbaur di jalan) :\n“Minggirlah kalian, karena tidak layak bagi kalian untuk berjalan di tengah. Kalian harus berjalan di pinggir.”\nSejak saat itu, ketika para wanita berjalan keluar, mereka berjalan ditepi tembok. Bahkan baju-baju mereka sampai tertambat di tembok, karena begitu dekatnya mereka dengan tembok ketika berjalan. (HR. Abu Dawud; Hasan)',
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
          'Hadist Tentang Wanita',
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
