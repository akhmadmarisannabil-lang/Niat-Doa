import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';

class KejujuranPage extends StatelessWidget {
  const KejujuranPage({super.key});

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
            'عَلَيْكُمْ بِالصِّدْقِ فَاِنَّ الصِّدْقَ يَهْدِيْ اِلَى الْبِرِّ اِنَّ الْبِرِّيَهْدِيْ اِلَى الْجَنَّةِ (رواه البخارى ومسلم)',
        'indo':
            'Artinya : “Hendaknya kamu selalu jujur karena kejujuran itu akan membaca kepada kebaikan dan kebaikan itu akan membawa ke dalam surga.” (HR. Bukhari dan Muslim)',
      },
      {
        'arabic':
            '55- الثَّاني : عَنْ أبي مُحَمَّدٍ الْحَسنِ بْنِ عَلِيِّ بْنِ أبي طَالِبٍ ، رَضيَ اللَّهُ عَنْهما ، قَالَ حفِظْتُ مِنْ رسولِ اللَّه صَلّى اللهُ عَلَيْهِ وسَلَّم : « دَعْ ما يَرِيبُكَ إِلَى مَا لا يَريبُكَ ، فَإِنَّ الصِّدْقَ طُمأنينَةٌ، وَالْكَذِبَ رِيبةٌ » رواه التِرْمذي وقال : حديثٌ صحيحٌ .\nقَوْلُهُ : « يرِيبُكَ » هُوَ بفتحِ الياء وضَمِّها ، وَمَعْناهُ : اتْرُكْ ما تَشُكُّ في حِلِّه ، واعْدِلْ إِلى مَا لا تَشُكُw فيه .',
        'indo':
            'Artinya: Kedua:  Dari Abu Muhammad Al Hasan Bin Ali  رضي الله عنه , Ia Berkata Aku menghafal hadits dari Nabi صلی الله عليه وسلم, Yaitu: “Tinggalkanlah olehmu apa saja yang kamu ragukan dan beralihlah kepada yang tidak kamu ragukan,Sesungguhnya Kejujuran itu ketenangan dan Kedustaan itu kebimbangan”(Hadits Shohih Riwayat Tirmidzi)',
      },
      {
        'arabic':
            'إِنَّ التُّجَّارَ يُبْعَثُونَ يَوْمَ الْقِيَامَةِ فُجَّارًا إِلاَّ مَنِ اتَّقَى اللَّهَ وَبَرَّ وَصَدَقَ',
        'indo':
            'Artinya: “Sesungguhnya para pedagang akan dibangkitkan pada hari kiamat nanti sebagai orang-orang fajir (jahat) kecuali pedagang yang bertakwa pada Allah, berbuat baik dan berlaku jujur.',
      },
      {
        'arabic':
            'فَالأَوَّلُ : عَن ابْنِ مَسْعُودٍ رضي اللَّه عنه عن النَّبِيَّ صَلّى اللهُ عَلَيْهِ وسَلَّم قال : « إِنَّ الصَّدْقَ يَهْدِي إِلَى الْبِرِّ وَإِنَّ الْبِرَّ يَهْدِي إِلَى الجَنَّةِ ، وَإِنَّ الرَّجُلَ ليصْدُقُ حَتَّى يُكتَبَ عِنْدَ اللَّهِ صِدِّيقاً ، وإِنَّ الْكَذِبَ يَهْدِي إِلَى الفجُورِ وَإِنَّ الفجُورَ يَهْدِي إِلَى النَّارِ ، وَإِنَّ الرَّجُلَ لَيَكْذِبُ حَتَّى يُكتَبَ عِنْدَ اللَّهِ كَذَّاباً » متفقٌ عليه .',
        'indo':
            'Artinya: Pertama: Dari Ibnu Mas’ud رضي الله عنه dari Nabi صلی الله عليه وسلم, sabdanya: “Sesungguhnya Kejujuran itu menunjukkan kepada kebaikan dan sesungguhnya kebaikan itu menunjukkan ke syurga dan sesungguhnya seseorang selalu berbuat jujur sehingga dicatatlah di sisi Allah sebagai seorang yang jujur. Dan sesungguhnya dusta itu menunjukkan kepada Kejahatan dan sesungguhnya Kejahatan itu menunjukkan kepada neraka dan sesungguhnya seseorang  yang selalu berdusta maka dicatatlah di sisi Allah sebagai seorang yang pendusta.” (Muttafaq ‘alaih)',
      },
      {
        'arabic':
            'ثَلَاثَةٌ لَا يُكَلِّمُهُمُ اللهُ يَوْمَ الْقِيَامَةِ وَلَا يَنْظُرُ إِلَيْهِمْ وَلَا يُزَكِّيْهِمْ وَلَهُمْ عَذَابٌ أَلِيْمٌ : الْمَنَّانُ, الْمُسْبِلُ إِزَارَهُ وَالْمُنْفِقُ سِلْعَتَهُ بِالْحَلَفِ الْكَاذِبِ',
        'indo':
            'Artnya: “Tiga (golongan) yang Allah tidak berbicara kepada mereka pada hari Kiamat, tidak melihat kepada mereka, tidak mensucikan mereka dan mereka akan mendapatkan siksaan yang pedih, yaitu: orang yang sering mengungkit pemberiannya kepada orang, orang yang menurunkan celananya melebihi mata kaki  dan orang yang menjual barangnya dengan sumpah dusta',
      },
      {
        'arabic':
            'آيَةُ الْمُنَافِقِ ثَلاَثٌ إِذَا حَدَّثَ كَذَبَ وَإِذَا وَعَدَ أَخْلَفَ وَإِذَا ائْتُمِنَ خَانَ',
        'indo':
            'Artinya: “Tanda orang munafik itu ada tiga, dusta dalam perkataan, menyelisihi janji jika membuat janji dan khinat terhadap amanah.”',
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
          'Hadist Tentang Kejujuran',
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
