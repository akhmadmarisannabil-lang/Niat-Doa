import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart'; // Sesuaikan dengan jalur file ThemeProvider Anda

class SabarPage extends StatelessWidget {
  const SabarPage({super.key});

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

    // Data List Hadits tentang Sabar asli sesuai input (ada yang pakai Arab, ada yang Indo saja)
    final List<Map<String, String>> kontenHadits = [
      {
        'arabic':
            'وعن أبي مالك الحارث بن عاصم الأشعري رضي الله عنه قال قال رسول الله صلى الله عليه وسلم الطهور شطر الإيمان والحمد لله تملأ الميزان وسبحان الله والحمد لله تملآن أو تملأ ما بين السموات والأرض والصلاة نور والصدقة برهان والصبر ضياء والقرآن حجة لك أو عليك كل الناس يغدو فبائع نفسه فمعتقها أو موبقها رواه مسلم',
        'indo':
            "Artinya : Abu Malik Al-Harits bin 'Ashim Al-Asy’ari RA berkata bahwa Rasulullah SAW bersabda, Kesucian itu sebagian dari iman, dan kalimat alhamdulillah memenuhi timbangan. Kalimat subhanallah dan alhamdulillah memenuhi ruang yang ada di antara langit dan bumi. Shalat itu cahaya, sedekah itu bukti, sabar itu cerminan, Al-Qur’an itu hujjah yang akan membela atau menuntutmu. Setiap manusia bekerja. Ada yang menjual dirinya, ada yang membebaskan dirinya, dan ada pula yang menghancurkan dirinya. (HR. Muslim)",
      },
      {
        'arabic':
            'وعن أبي سعيد بن مالك بن سنان الخدري رضي الله عنهما أن ناسا من الأنصار سألوا رسول الله صلى الله عليه وسلم فأعطاهم ثم سألوه فأعطاهم حتى نفد ما عنده فقال لهم حين أنفق كل شيء بيده ما يكن من خير فلن أدخره عنكم ومن يستعفف يعفه الله ومن يستغن يغنه الله ومن يتصبر يصبره الله وما أعطى أحد عطاء خيرا وأوسع من الصبر متفق عليه',
        'indo':
            "Artinya : Abu Sa’id, Sa’d bin Sinan Al-Khudri RA berkata bahwa beberapa orang Anshar meminta sesuatu kepada Rasulullah SAW. Rasulullah memberinya, hingga apa yang ada padanya habis. Lalu, beliau bersabda kepada mereka ketika beliau menginfakkan semua yang ada di tangannya. Aku tidak akan menyimpan harta yang ada padaku. Barangsiapa yang menjaga dirinya dengan tidak meminta-minta, maka Allah akan menjaganya. Siapa pun dari kalian yang merasa cukup, maka Allah akan mencukupinya. Barangsiapa yang berlatih untuk bersabar, niscaya Allah memberikan kesabaran kepadanya. Dan, tidak ada nikmat yang lebih baik dan lebih luas, yang diberikan kepada seseorang, selain kesabaran. (Muttafaq 'alaih)",
      },
      {
        'arabic':
            'وعن أبي يحيى صهيب بن سنان رضي الله عنه قال قال رسول الله صلى الله عليه وسلم عجبا لأمر المؤمن إن أمره كله له خير وليس ذلك لأحد إلا للمؤمن إن أصابته سراء شكر فكان خيرا له وإن أصابته ضراء صبر فكان خيرا له رواه مسلم',
        'indo':
            "Artinya : Abu Yahya, Shuhaib bin Sinan RA, berkata bahwa Rasulullah SAW bersabda, Sungguh unik urusan orang yang beriman itu. Semua urusannya, baik baginya. Hal itu hanya dimiliki oleh orang yang beriman. Jika dia memperoleh kegembiraan, dia bersyukur, dan itu baik baginya. Jika ditimpa kesulitan, dia bersabar, dan itu baik baginya. (Muslim).",
      },
      {
        'arabic':
            'وعن أبي زيد أسامة بن زيد حارثة مولى رسول الله صلى الله عليه وسلم وحبه وابن حبه رضي الله عنهما قال أرسلت بنت النبي صلى الله عليه وسلم إن ابني قد احتضر فاشهدنا فأرسل يقرئ السلام ويقول إن لله ما أخذ وله ما أعطى وكل شيء عنده بأجل مسمى فلتصبر ولتحتسب فأرسلت إليه تقسم عليه ليأتينها فقام ومعه سعد بن عبادة ومعاذ ابن جبل وأبي بن كعب وزيد بن ثابت ورجال رضي الله عنهم فرفع إلى رسول الله صلى الله عليه وسلم الصبي فأقعده في حجره ونفسه تقعقع ففاضت عيناه فقال سعد يا رسول الله ما هذا فقال هذه رحمة جعلها الله تعلى في قلوب عباده وفي رواية في قلوب من شاء من عباده وإنما يرحم الله من عباده الرحماء متفق عليه',
        'indo':
            "Artinya : Abu Zaid, Usamah bin Zaid bin Haritsah RA, berkata, Putri Rasulullah mengutus seseorang untuk menyampaikan pesan kepada Nabi SAW., 'Bahwa anakku sedang sekarat. Karena itu, jenguklah ia.’Nabi hanya mengirim salam dan berkata, '(Katakan kepadanya), Sesungguhnya, Allah berhak mengambil dan memberi. Segala sesuatu ada batasnya. Hendaknya ia bersabar dan mengharap pahala dari Allah. Sekali lagi, putri Rasulullah mengirim utusan, memohon kepada Nabi untuk datang menjenguk. Lalu, Rasulullah berangkat bersama Sa’d bin Ubadah RA, Muadz bin jabal RA, Ubay bin Ka’b RA, Zaid bin Tsabit RA, dan sejumlah sahabat. (Sesampainya di rumah Zainab) anak perempuan yang sedang sakaratul-maut itu didudukkan di pangkuan Nabi SAW., dan napasnya sudah tersengal-sengal. Melihat hal itu, Zainab menangis. Sa’d bertanya, 'Ya Rasulullah, apa ini?’ Rasulullah SAW menjawab, 'Ini adalah kasih sayang yang diberikan Allah kepada hamba-hamba-Nya.’ Di dalam riwayat lain disebutkan, Pada hati hamba yang dikehendaki-Nya, Allah mengasihi hamba-hamba-Nya yang memiliki kasih sayang. (Muttafaq 'alaih)",
      },
      {
        'arabic':
            'وعن أنس رضي الله عنه قال لما ثقل النبي صلى الله عليه وسلم جعل يتغشاه الكرب فقالت فاطمة رضي الله عنها واكرب أبتاه فقال ليس على أبيك كرب بعد اليوم فلما مات قالت يا أبتاه أجاب ربا دعاه يا أبتاه جنة الفردوس مأواه يا أبتاه إلى جبريل ننعاه فلما دفن قالت فاطمة رضي الله عنها أطابت أنفسكم أن تحثوا على رسول الله صلى الله عليه وسلم التراب رواه البخاري',
        'indo':
            "Artinya : Anas RA berkata, Ketika sakit Nabi SAW bertambah parah, beliau diliputi beberapa penderitaan. Fatimah RA berkata, 'Alangkah hebatnya penderitaan Ayah.’Rasulullah SAW bersabda, 'Setelah hari ini, Ayahmu tidak akan mendapatkan penderitaan lagi.’Ketika Rasulullah SAW meninggal dunia, Fatimah berkata, 'Ayah, engkau telah menyambut panggilan Tuhan. Ayah, surga Firdauslah tempatmu. Ayah, kepada Jibril aku ucapkan berita kematian ini.’Ketika Rasulullah SAW dimakamkan, Fatimah berkata, 'Apakah kalian tidak merasa berat hati menaburkan debu kepada Rasulullah SAW?’",
      },
      {
        'arabic': '',
        'indo':
            'Akan tiba suatu masa pada manusia, siapa di antara mereka yang bersikap sabar demi agamanya, ia ibarat menggenggam bara api.',
      },
      {
        'arabic': '',
        'indo':
            'Rasulullah Mengagumi seorang mukmin yang bila ia memperoleh kebaikan, ia memuji Allah dan bersyukur, dan bila ia ditimpa musibah, ia memuji Allah dan ia bersabar. ( HR.Ahmad)',
      },
      {
        'arabic': '',
        'indo':
            'Orang yang bahagia ialah yang dijauhkan dari fitnah-fitnah dan orang yang bila terkena ujian dan cobaan, dia bersabar. (HR.Ahmad)',
      },
      {
        'arabic': '',
        'indo':
            "Dari Abdullah bin Umar ra berkata bahwa Rasulullah SAW pernah bersabda, 'Barang siapa yang bersabar atas kesulitan dan himpitan kehidupannya, maka aku akan menjadi saksi atau pemberi syafaat baginya pada hari kiamat. (HR. Turmudzi).",
      },
      {
        'arabic': '',
        'indo':
            'Sesungguhnya bersyukur akan menambah kenikmatan Allah, dan perbanyaklah berdoa. (HR.Ath-Thabrani)',
      },
      {
        'arabic': '',
        'indo':
            'Iman terbagi dua separuh dalam sabar dan separuh dalam syukur.(HR.Al-Baikaqi)',
      },
      {
        'arabic': '',
        'indo':
            "Dari Mu'az bin Anas r.a. bahwasanya Nabi s.a.w. bersabda: Barangsiapa yang menahan marahnya padahal ia kuasa untuk meneruskannya (melaksanakannya) maka Allah Subhanahu wa Ta'ala mengundangnya di hadapan kepala (yakni disaksikan) sekalian makhluk pada hari kiamat, sehingga disuruhnya orang itu memilih bidadari-bidadari yang membelalak matanya dengan sesuka hatinya.",
      },
      {
        'arabic': '',
        'indo':
            'Seorang muslim apabila ia berinteraksi dengan masyarakat serta bersabar terhadap dampak negatif mereka adalah lebih baik dari pada seorang muslim yang tidak berinteraksi dengan masyarakat serta tidak bersabar atas kenegatifan mereka. (HR. Turmudzi)',
      },
      {
        'arabic': '',
        'indo':
            'Dari Sulaiman bin Shurad r.a., katanya:Saya duduk bersama Nabi s.a.w. dan di situ ada dua orang yang saling bermaki-makian antara seorang dengan kawannya. Salah seorang dari keduanya itu telah merah padam mukanya and membesarlah urat lehernya, kemudian Rasulullah s.a.w. bersabda: Sesungguhnya saja niscayalah mengetahui suatu kalimat yang apabila diucapkannya, tentulah hilang apa yang ditemuinya (kemarahannya), yaitu andaikata ia mengucapkan: A\'udzu billahi minasy syaithanir rajim, tentulah lenyap apa yang ditemuinya itu (kemarahannya). Orang-orang lalu berkata padanya - orang yang merah padam mukanya tadi: Sesungguhnya Nabi s.a.w. bersabda: Mohonlah perlindungan kepada Allah dari syaitan yang direjam. (Muttafaq \'alaih)',
      },
      {
        'arabic': '',
        'indo':
            "Dari Suhaib ra, bahwa Rasulullah SAW bersabda, Sungguh menakjubkan perkaranya orang yang beriman, karena segala urusannya adalah baik baginya. Dan hal yang demikian itu tidak akan terdapat kecuali hanya pada orang mu'min: Yaitu jika ia mendapatkan kebahagiaan, ia bersyukur, karena (ia mengetahui) bahwa hal tersebut merupakan yang terbaik untuknya. Dan jika ia tertimpa musibah, ia bersabar, karena (ia mengetahui) bahwa hal tersebut merupakan hal terbaik bagi dirinya. (HR. Muslim)",
      },
      {
        'arabic': '',
        'indo':
            "Abu Zaid, Usamah bin Zaid bin Haritsah RA, berkata, Putri Rasulullah mengutus seseorang untuk menyampaikan pesan kepada Nabi SAW., 'Bahwa anakku sedang sekarat. Karena itu, jenguklah ia.’",
      },
      {
        'arabic': '',
        'indo':
            "'(Katakan kepadanya), Sesungguhnya, Allah berhak mengambil dan memberi. Segala sesuatu ada batasnya. Hendaknya ia bersabar dan mengharap pahala dari Allah.",
      },
      {
        'arabic': '',
        'indo':
            'Tidak ada suatu rezeki yang Allah berikan pada seorang hamba yang lebih luas baginya dari pada sabar. (HR.Al-Hakim)',
      },
      {
        'arabic': '',
        'indo':
            "Dari Usaid bin Hudhair bahwa seseorang dari kaum Anshar berkata kepada Rasulullah SAW; 'Wahai Rasulullah, engkau mengangkat (memberi kedudukan) si Fulan, namun tidak mengangkat (memberi kedudukan kepadaku). Rasulullah SAW bersabda, Sesungguhnya kalian akan melihat setelahku 'atsaratan' (yaitu setiap orang menganggap lebih baik dari yang lainnya), maka bersabarlah kalian hingga kalian menemuiku pada telagaku (kelak). (HR. Turmudzi).",
      },
      {
        'arabic': '',
        'indo':
            "Ketahuilah olehmu! Bahwasannya datangnya pertolongan itu bersama dengan kesabaran. (HR. At Tirmidzi, dari shahabat Ibnu 'Abbasradhiallahu 'anhuma)",
      },
      {
        'arabic': '',
        'indo':
            'Sesungguhnya besarnya pahala itu bergantung daripada besarnya ujian. Barangsiapa yang ridho, mendapat keridhoan Allah dan barangsiapa yang murka, maka mendapat kemurkaan Allah.( HR. Tirmidzi, Ibnu Majah)',
      },
      {
        'arabic': '',
        'indo':
            'Ya Nabi, berilah aku wasiat Rasullalah bersabda,Jangan marah! ditanya berulang kali dan tetap dijawab, Jangan marah! HR.Bukhari)',
      },
      {
        'arabic': '',
        'indo':
            "Dari Anas bin Malik ra, bahwa suatu ketika Rasulullah SAW melewati seorang wanita yang sedang menangis di dekat sebuah kuburan. Kemudian Rasulullah SAW bersabda, 'Bertakwalah kepada Allah, dan bersabarlah.' Wanita tersebut menjawab, 'Menjauhlah dariku, karena sesungguhnya engkau tidak mengetahui  dan tidak bisa merasakan musibah yang menimpaku.' Kemudian diberitahukan kepada wanita tersebut, bahwa orang yang menegurnya tadi adalah Rasulullah SAW. Lalu ia mendatangi pintu Rasulullah SAW dan ia tidak mendapatkan penjaganya. Kemudian ia berkata kepada Rasulullah SAW, '(maaf) aku tadi tidak  mengetahui engkau wahai Rasulullah SAW.' Rasulullah bersabda, 'Sesungguhnya sabar itu terdapat pada hentakan pertama.' (HR. Bukhari Muslim)",
      },
      {
        'arabic': '',
        'indo':
            'Abu Jahja (Shuhaib) bin Sinan Arrumy r.a berkata : Bersabda Rasulullah s.a.w : Sangat mengagumkan keadaan seorang mu’min, sebab segala keadaannya untuk ia sangat baik, and tidak mungkin terjadi demikian kecuali bagi seorang mu’min : jika mendapat ni’mat ia bersyukur, maka syukur itu lebih baik baginya, and bila menderita kesusahan (ia) sabar, maka kesabaran itu lebih baik baginya. (H.R. MUSLIM)',
      },
      {
        'arabic': '',
        'indo':
            'Dari Abu Hurariah r.a. bahwasanya Rasulullah s.a.w. bersabda: Bukanlah orang yang kuat itu dengan banyaknya berkelahi, hanyasanya orang-orang yang kuat ialah  orang  yang  dapat  menguasai dirinya  di  waktu  sedang  marah-marah. (Muttafaq \'alaih)',
      },
      {
        'arabic': '',
        'indo':
            'Sesungguhnya Allah tidak melihat bentuk tubuhmu dan tidak pula menilai kebagusan wajahmu, tetapi Allah lebih melihat pada keikhlasan hatimu. (HR. Muslim)',
      },
      {
        'arabic': '',
        'indo':
            "Dalam sebuah riwayat, Rasulullah bersabda : Dari Abu Hurairah ra berkata, bahwa Rasulullah SAW bersabda, 'Janganlah kalian berangan-angan untuk menghadapi musuh. Namun jika kalian sudah menghadapinya maka bersabarlah (untuk menghadapinya). HR. Muslim",
      },
      {
        'arabic': '',
        'indo':
            'Anas r.a berkata: Saya telah mendengar Rasulullah s.a.w berasabda: Allah SWT telah berfirman: Apabila Saya menguji seorang hamba-Ku dengan buta kedua matanya, kemudian ia sabar, maka Saya akan menggantikannya dengan surga. (H.R. BUCHARI)',
      },
      {
        'arabic': '',
        'indo':
            'Dari Ibnu Mas\'ud r.a., katanya: Saya memasuki tempat Nabi s.a.w. and beliau sedang dihinggapi penyakit panas. Saya lalu berkata: Ya Rasulullah, sesungguhnya Tuan dihinggapi penyakit panas yang amat sangat. Beliau kemudian bersabda: Benar, sesungguhnya saya terkenas panas sebagaimana panas dua orang dari engkau semua yang menjadi satu. Saya berkata lagi: Kalau demikianTuan tentulah mendapatkan dua kali pahala. Beliau bersabda: Benar, demikianlah memang keadaannya, tiada seorang Muslimpun yang terkena oleh sesuatu kesakitan,baik itu berupa duri ataupun sesuatu yang lebih dari itu, melainkan Allah pasti menutupi kesalahan-kesalahannya dengan sebab mushibah yang mengenainya tadi and diturunkanlah dosa-dosanya sebagaimana sebuah pohon menurunkan daunnya - and ini jikalau disertai kesabaran. (Muttafaq \'alaih)',
      },
      {
        'arabic': '',
        'indo':
            'Ada hikmah dibalik setiap cobaan yang Allah berikan pada Kita,Sesungguhnya pahala yang besar itu, bersama dengan cobaan yang besar pula. Dan apabila Allah mencintai suatu kaum maka Allah akan menimpakan musibah kepada mereka. Barangsiapa yang ridha maka Allah akan ridha kepadanya. Dan barangsiapa yang murka, maka murka pula yang akan didapatkannya. (HR. Tirmidzi)',
      },
      {
        'arabic': '',
        'indo':
            "Dari Anas bin Malik ra, bahwa Rasulullah saw. bersabda, Janganlah salah seorang diantara kalian mengangan-angankan datangnya kematian karena musibah yang menimpanya. Dan sekiranya ia memang harus mengharapkannya, hendaklah ia berdoa, 'Ya Allah, teruskanlah hidupku ini sekiranya hidup itu lebih baik untukku. Dan wafatkanlah aku, sekiranya itu lebih baik bagiku. (HR. Bukhari Muslim)",
      },
      {
        'arabic': '',
        'indo':
            'Tidak henti-hentinya bala’ menimpa kepada seorang mu’min laki-laki dan wanita, baik mengenai dirinya maupun mengenai keluarganya atau harta kekayaannnya, hingga ia menghadap kepada Allah sudah bersih daripadanya dosa. (HR. Tirmidzi, Ahmad).',
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
          'Hadist Tentang Sabar',
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
              ...kontenHadits.asMap().entries.map((entry) {
                final int idx = entry.key;
                final Map<String, String> item = entry.value;
                final bool hasArabic = item['arabic']!.isNotEmpty;

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Hanya memunculkan Text jika teks Arabnya tidak kosong
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
                    // Teks Terjemahan Indonesia (Selalu Muncul)
                    Text(
                      item['indo']!,
                      style: TextStyle(
                        color: subTextColor,
                        fontSize: 14,
                        height: 1.5,
                      ),
                    ),
                    // Tampilkan divider jika bukan elemen terakhir
                    if (idx < kontenHadits.length - 1) ...[
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
