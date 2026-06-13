import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';

class SahabatPage extends StatelessWidget {
  const SahabatPage({super.key});

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
            'مَثَلُ الْجَلِيسِ الصَّالِحِ وَالْجَلِيسِ السَّوْءِ كَمَثَلِ صَاحِبِ الْمِسْكِ وَكِيرِ الْحَدَّادِ ، لاَ يَعْدَمُكَ مِنْ صَاحِبِ الْمِسْكِ إِمَّا تَشْتَرِيهِ أَوْ تَجِدُ رِيحَهُ ، وَكِيرُ الْحَدَّادِ يُحْرِقُ بَدَنَكَ أَوْ ثَوْبَكَ أَوْ تَجِدُ مِنْهُ رِيحًا خَبِيثَةً',
        'indo':
            '“Seseorang yang duduk (berteman) dengan orang shalih dan orang yang jelek bagaikan berteman dengan pemilik minyak wangi dan pandai besi. Pemilik minyak wangi tidak akan merugikanmu; engkau bisa membeli (minyak wangi) darinya atau minimal engkau mendapat baunya. Adapun berteman dengan pandai besi, jika engkau tidak mendapati badan atau pakaianmu hangus terbakar, minimal engkau mendapat baunya yang tidak enak.” (HR. Bukhari, no. 2101)',
      },
      {
        'arabic':
            'الْمَرْءُ عَلَى دِينِ خَلِيلِهِ فَلْيَنْظُرْ أَحَدُكُمْ مَنْ يُخَالِلُ',
        'indo':
            'Dari Abu Hurairah radhiyallahu ‘anhu, Rasulullah shallallahu ‘alaihi  wa sallam bersabda,\n\n“Seseorang akan mencocoki kebiasaan teman karibnya. Oleh karenanya, perhatikanlah siapa yang akan menjadi teman karib kalian.” (HR. Abu Daud, no. 4833; Tirmidzi, no. 2378; dan Ahmad, 2:344. Al-Hafizh Abu Thahir mengatakan bahwa sanad hadits ini shahih)',
      },
      {
        'arabic':
            'المُسلِمُ أَخُو المُسلِمِ لاَ يَظلِمُهُ وَلَا يَخذُلُهُ وَلَا يَحقِرُهُ التَقوَى هَاهُنَا – وَ يُشِيرُ إِلَى صَدرِهِ ثَلاَثَ مَرَّاتٍ – بِحَسبِ امرِىءٍ مِنَ الشَّرِّ أَن يَحقِرَ أَخَاهُ المُسلِمَ كُلُّ المُسلِمِ عَلَى المُسلِمِ حَرَامٌ دَمُهُ وَ مَالُهُ وَ عِرضُهُ . رَوَاهُ مُسْلِم',
        'indo':
            'Seorang muslim adalah saudara bagi muslim lainnya; Tidak boleh menzhalimi atau menghinakan atau mencelanya. Ketakwaan ada di sini –sambil menunjuk ke arah dada tiga kali. Cukuplah seorang muslim itu menjadi jelek hanya dengan mencela saudaranya sesama muslim. Setiap muslim terhadap muslim yang lain diharamkan darahnya, harta, serta kehormatannya. (H.R. Muslim)',
      },
      {
        'arabic': '',
        'indo':
            'Sebagaimana diriwayatkan oleh Imam Muslim dalam hadits Abu Hurairah Radhiallaahu anhu , diceritakan, “Dahulu ada seorang laki-laki yang berkunjung kepada saudara (temannya) di desa lain. Lalu ditanyakan kepadanya, ‘Ke mana anda hendak pergi? Saya akan mengunjungi teman saya di desa ini’, jawabnya, ‘Adakah suatu kenikmatan yang anda harap darinya?’ ‘Tidak ada, selain bahwa saya mencintainya karena Allah Azza wa Jalla’, jawabnya. Maka orang yang bertanya ini mengaku, “Sesungguhnya saya ini adalah utusan Allah kepadamu (untuk menyampaikan) bahwasanya Allah telah mencintaimu sebagaimana engkau telah mencintai temanmu karena Dia.”',
      },
      {
        'arabic': '',
        'indo':
            'Dari Abu Hamzah, Anas bin Malik radiallahuanhu, pembantu Rasulullah Shallallahu’alaihi wasallam dari Rasulullah Shallallahu’alaihi wasallam, beliau bersabda: Tidak beriman salah seorang diantara kamu hingga dia mencintai saudaranya sebagaimana dia mencintai dirinya sendiri. ',
      },
      {
        'arabic': '',
        'indo':
            'Dari Abu Hurairah, dari Rasulullah Shallallahu`alaihi wasallam, beliau bersabda:Sesunguhnya kelak di Hari Kiamat Allah akan berfirman, “Di mana orang-orang yang saling mencintai karena keagungan-Ku? Pada hari ini Aku akan memberikan naungan kepadanya dalam naungan-Ku disaat tidak ada naungan kecuali naungan-Ku”(HR. Muslim)(HR. Bukhori dan Muslim)',
      },
      {
        'arabic': '',
        'indo':
            '"Di sekitar Arsy-Nya ada menara-menara dari cahaya, di dalamnya ada orang-orang yang pakaiannya dari cahaya, wajah-wajah mereka pun bercahaya. They bukan para nabi dan syuhada, hingga para nabi dan syuhada pun iri kepada mereka.” Ketika para sahabat bertanya, Rasulullah menjawab, \'They adalah orang-orang yang saling mencintai karena Allah, saling bersahabat karena Allah, dan saling berkunjung karena Allah." (HR. Tirmidzi)',
      },
      {
        'arabic': '',
        'indo':
            '"Teman yang paling baik adalah apabila kamu melihat wajahnya, kamu teringat akan Allah, mendengar kata-katanya menambahkan ilmu agama, melihat gerak-gerinya teringat mati. Sebaik-baik sahabat di sisi Allah ialah orang yang terbaik terhadap temannya dan sebaik-baik tetangga di sisi Allah ialah orang yang terbaik terhadap tetangganya.” (HR. Hakim)"',
      },
      {
        'arabic': '',
        'indo':
            '“Seseorang itu adalah mengikut agama temannya, oleh itu hendaklah seseorang itu meneliti siapa yang menjadi temannya.” (Hadis riwayat Abu Daud).',
      },
      {
        'arabic': '',
        'indo':
            '"Seorang Muslim adalah saudara muslim lainnya, ia tidak menzaliminya, merendahkannya, menyerahkan (kepada musuh) dan tidak menghinakannya." (HR Muslim)',
      },
      {
        'arabic': '',
        'indo':
            '"Sebaik baik sahabat di sisi Allah ialah orang yang terbaik terhadap temannya dan sebaik baik jiran di sisi Allah ialah orang yang terbaik terhadap jirannya." (HR Al-Hakim)',
      },
      {
        'arabic': '',
        'indo':
            'Telah bersabda Rasulullah SAW sebagaimana yg diriwayatkn oleh Al-Tirmizi yang bermaksud, "seseorang itu akan terpengaruh dengan temannya. Maka hendaklah sesorang kamu itu memilih siapa yang harus dijadikan teman."',
      },
      {
        'arabic': '',
        'indo':
            'Sahabat yang menunjukkn kebaikan kepada kamu, adalah sahabat yg baik. Dan sahabat yang menunjukkan kesalahan kamu, adalah sahabat yg paling baik (Hadith riwayat Muslim). ',
      },
      {
        'arabic': '',
        'indo':
            'Sesungguhnya ada seseorang yang mengunjungi saudaranya di kota lain. Kemudian Allah memerintahkan malaikat untuk mengikutinya. Ketika malaikat sampai kepadanya, ia berkata,\n“Hendak ke mana engkau?” Orang itu berkata, “Aku akan mengunjungi saudaraku di kota ini.” Malaikat berkata, “Apakah ada hartamu yang dikelola olehnya?” Ia berkata, “Tidak ada, hanya saja aku mencintainya karena Allah.” Malaikat itu kemudian berkata, “Sesunggunya aku adalah utusan Allah kepadamu. Aku diperintahkan untuk mengatakan bahwa Allah sungguh telah mencintaimu sebagaimana engkau telah mencintai saudaramu itu karena Allah.” (HR. Muslim)',
      },
      {
        'arabic': '',
        'indo':
            '"Seseorang itu tergantung pada agama sahabatnya, maka perhatikanlah salah seorang dari kamu kepada siapa dia bersahabat." (HR Abu Daud)',
      },
      {
        'arabic': '',
        'indo':
            'Dari Abu Hurairah, dari Rasulullah Shallallahu`alaihi wasallam, beliau bersabda:"Sesunguhnya kelak di Hari Kiamat Allah akan berfirman, \'Di mana orang-orang yang saling mencintai karena keagungan-Ku? Pada hari ini Aku akan memberikan naungan kepadanya dalam naungan-Ku disaat tidak ada naungan kecuali naungan-Ku\'" (HR Muslim)',
      },
      {
        'arabic': '',
        'indo':
            'Dari Nu’man bin Basyir r.a., Rasulullah SAW bersabda, "Perumpamaan persaudaraan kaum muslimin dalam cinta dan kasih sayang di antara mereka adalah seumpama satu tubuh. Apabila satu anggota tubuh sakit maka mengakibatkan seluruh tubuh menjadi demam dan tidak bisa tidur." (HR Muslim)',
      },
      {
        'arabic': '',
        'indo':
            '"Apabila dua orang laki-laki saling mencintai dan mengasihi di jalan Allah, yang satu berada di timur, sedangkan yang satu lagi berada di barat, maka Allah SWT akan mengumpulkan keduanya di hari kiamat dan berkata, “Inilah orang yang telah engkau cintai di jalan-Ku." (HR Ibnu Asakir dari Ibnu Abbas).',
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
          'Hadist Tentang Sahabat',
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
