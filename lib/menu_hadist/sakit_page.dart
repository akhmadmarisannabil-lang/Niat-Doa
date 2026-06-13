import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';

class SakitPage extends StatelessWidget {
  const SakitPage({super.key});

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
            'لِكُلِّ دَاءٍ دَوَاءٌ فإذا أُصِيبَ دَوَاءُ الدَّاءِ بَرَأَ بِإِذْنِ اللَّهِ عز وجل',
        'indo':
            '“Setiap penyakit ada obatnya, jika obat itu sesuai dengan penyakitnya, akan sembuh dengan izin Allah Azza wajalla,”(HR.Muslim¬,no:2204)',
      },
      {
        'arabic':
            'عجبا لأمر المؤمن إن أمره كله خير وليس ذاك لأحد إلا للمؤمن إن أصابته سراء شكر فكان خيرا له وإن أصابته ضراء صبر فكان خيرا له',
        'indo':
            '“Sungguh mengagumkan urusan orang Mukmin. Sesungguhnya semua urusannya adalah baik , dan hal itu tidak dimiliki oleh siapapun kecuali orang Mukmin. Jika dia mendapatkan kesenangan, dia bersyukur, dan demikian itu lebih baik baginya. Jika ditimpa kesusahan, dia akan bersabar, dan demikian itu lebih baik baginya.” (HR. Muslim, al Baihaqi dan Ahmad )',
      },
      {
        'arabic': 'مَنْ يُرِد اللَّهُ بِهِ خَيْرًا يُصِبْ مِنْهُ',
        'indo':
            '“Barang siapa yang Allah menghendaki kebaikan baginya, maka akan ditimpakan cobaan padanya.” ( HR. Al-Bukhari )',
      },
      {
        'arabic': '',
        'indo':
            '“Jika sakit seorang hamba hingga tiga hari, maka keluar dari dosa-dosanya sebagaimana keadaannya ketika baru lahir dari kandungan ibunya,” (HR Ath-Thabarani).',
      },
      {
        'arabic': '',
        'indo':
            '“sesungguhnya pahala yang besar didapatkan melalui cobaan yang besar pula. Apabila Allah mencintai seseorang, maka Allah akan memberikan cobaan kepadanya, barangsiapa yang ridho (menerimanya) maka Allah akan meridhoinya dan barangsiapa yang murka (menerimanya) maka Allah murka kepadanya.” HR. At-Tirmidzi )',
      },
      {
        'arabic': '',
        'indo':
            '"Sesungguhnya besarnya pahala sebanding dengan besarnya ujian. Dan sesungguhnya jika Allah mencintai suatu kaum pasti Dia menguji mereka. Maka siapa yang ridha (terhadapnya) maka baginya keridhaan Allah, dan siapa yang marah (terhadapnya) maka baginya kemurkaan Allah." (HR. Al-Tirmidzi dan Ibnu Majah)',
      },
      {
        'arabic': '',
        'indo':
            '“Sesungguhnya Allah benar-benar akan menguji hamba-Nya dengan penyakit, sehingga ia menghapuskan setiap dosa darinya”. (HR. Al-Hakim I/348).',
      },
      {
        'arabic': '',
        'indo':
            '“Tidaklah seorang muslim tertusuk duri atau yang lebih dari itu, melainkan ditetapkan baginya dengan sebab itu satu derajat dan dihapuskan pula satu kesalahan darinya”. (HR. Muslim no. 2572).',
      },
      {
        'arabic': '',
        'indo':
            '"Tidaklah seorang mukmin dan mukminan tertimpa musibah pada dirinya, anaknya dan hartanya sehingga ia berjumpa Allah Ta\'ala tidak membawa satu kesalahanpun." (HR. Al-Tirmidzi. Beliau berkata: hadits hasan shahih)',
      },
      {
        'arabic': '',
        'indo':
            '“Tidaklah seorang muslim yang tertimpa gangguan berupa penyakit atau semacamnya, kecuali Allah akan menggugurkan bersama dengannya dosa-dosanya, sebagaimana pohon yang menggugurkan dedaunannya.” (HR. Bukhari dan Muslim)',
      },
      {
        'arabic': '',
        'indo':
            '“Tiada seorang mu’min yang ditimpa oleh lelah atau pe­nyakit, atau risau fikiran atau sedih hati, sampaipun jika terkena duri, melainkan semua penderitaan itu akan di­jadikan penebus dosanya oleh Allah” (HR Bukhari-Muslim).',
      },
      {
        'arabic': '',
        'indo':
            '“Jika sakit seorang hamba hingga tiga hari, maka keluar dari dosa-dosanya sebagaimana keadaannya ketika baru lahir dari kandungan ibunya,”(HR Ath-Thabarani).',
      },
      {
        'arabic': '',
        'indo':
            '“Janganlah kamu mencaci-maki penyakit demam, karena sesungguhnya (dengan penyakit itu) Allah akan menghapuskan dosa-dosa anak Adam sebagaimana tungku api menghilangkan kotoran-kotoran besi”. (HR. Muslim no. 2575).',
      },
      {
        'arabic': '',
        'indo':
            '“Tidaklah menimpa seorang mukmin rasa sakit yang terus menerus, kepayahan, penyakit, dan juga kesedihan, bahkan sampai kesusahan yang menyusahkannya, melainkan akan dihapuskan dengan dosa-dosanya”. (HR. Muslim no. 2573).',
      },
      {
        'arabic': '',
        'indo':
            '“Wahai anak Adam, jika engkau sabar dan mencari keridhoan pada saat musibah yang pertama, maka Aku tidak meridhoi pahalamu melainkan surga”.(HR. Ibnu Majah no.1597)',
      },
      {
        'arabic': '',
        'indo':
            '“Penyakit panas itu menjaga tiap mu’min dari neraka, dan panas semalam cukup dapat menebus dosa setahun,” (HR Al-Qadha’i).',
      },
      {
        'arabic': '',
        'indo':
            '“Sakit demam itu menjauhkan setiap orang mukmin dari api neraka”. (HR. Al-Bazzar)',
      },
      {
        'arabic': '',
        'indo':
            '“Jika anak seorang hamba meninggal dunia, maka Allah akan berkata kepada malaikat-Nya : ‘Apakah kalian telah mencabut nyawa anak hamba-Ku?. Para Malaikat menjawab : ‘Ya, benar’. Lalu Dia bertanya lagi : ‘Apakah kalian mengambil buah hatinya?’. Malaikat menjawab : ‘Ya’. Kemudian Dia berkata : ‘Apa yang dikatakan oleh hamba-Ku itu?’. Malaikat menjawab ‘Ia memanjatkan pujian kepada-Mu dan mengucapkan kalimat istirja’ (Inna lillaahi wa innaa ilaihi roji’un). Allah Azza wa Jalla berfirman : ‘Bangunkan untuk hamba-Ku sebuah rumah di surga dan namai dengan (nama) Baitul Hamd (rumah pujian)’.” (HR Tirmidzi no.1021)',
      },
      {
        'arabic': '',
        'indo':
            '“Sesungguhnya Allah menciptakan penyakit dan obatnya, maka berobatlah dan janganlah berobat dengan yang haram”. (HR. Ad Daulabi)',
      },
      {
        'arabic': '',
        'indo':
            '“Tidaklah Allah menurunkan penyakit kecuali Dia juga menurunkan penawarnya.” (HR Bukhari).',
      },
      {
        'arabic': '',
        'indo':
            '"Orang-orang yang sehat saat melihat pahala yang diberikan kepada ahlul bala\' (banyak dapat musibah) nanti di hari kiamat berkeinginan kalau saja kulit-kulit mereka dipotong dengan gunting saat di dunia." (HR. al-Tirmidzi)',
      },
      {
        'arabic': '',
        'indo':
            'Rasulullah shallallahu ‘alaihi wa sallam pernah bersabda, “…dan sesungguhnya salah seorang mereka benar-benar merasa gembira karena mendapat cobaan, sebagaimana salah seorang mereka merasa senang karena memperoleh kelapangan.” (HR Ibnu Majah dan Al Hakim, beliau berkata, “Shahih menurut syarat Muslim.” Disepakati oleh Adz Dzahabi)',
      },
      {
        'arabic': '',
        'indo':
            'Rasulullah shollallahu alaihi wa sallam bersabda : “Sesungguhnya besarnya pahala itu tergantung besarnya ujian. Dan sesungguhnya jika Allah menyukai suatu kaum, maka Dia akan menguji mereka. Barangsiapa yang ridho maka baginya keridhoan, dan barangsiapa yang murka maka baginya kemurkaan”. (HR. Tirmidzi no. 2396, Ibnu Majah no. 4031)',
      },
      {
        'arabic': '',
        'indo':
            '“Bencana senantiasa menimpa orang mukmin dan mukminah pada dirinya, anaknya dan hartanya, sehingga ia berjumpa dengan Allah dalam keadaan tidak ada kesalahan pada dirinya”.(HR. Tirmidzi no. 2399, Ahmad II/450, Al-Hakim I/346 dan IV/314, Ibnu Hibban no. 697)',
      },
      {
        'arabic': '',
        'indo':
            '“Apabila Allah menginginkan kebaikan bagi seseorang hamba, maka Allah menyegerakan siksaan  baginya di dunia” HR. At-Tirmidziiy no.2396 dari Anas bin Malik, lihat Ash-Shahiihah no.1220.',
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
          'Hadist Tentang Sakit',
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
