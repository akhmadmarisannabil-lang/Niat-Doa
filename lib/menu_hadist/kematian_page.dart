import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';

class KematianPage extends StatelessWidget {
  const KematianPage({super.key});

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
            'عن  أبي هريرة ، عن النبي صلى الله عليه وسلم نحو هذا الحديث ، وفيه : " يا  ملك ، أنت خلق من خلقي ، خلقتك لما رأيت ، فمت ، ثم لا تحيا أبدا "',
        'indo':
            'Dari Abi hurairoh dari Nabi shollallohu alaihi wasallam sebagaimana hadits tersebut, dan dalam hadisnya Abu Hurairoh terdapat kata : "wahai malaikat maut, engkau adalah bagian dari makhluk-Ku, Ku-ciptakan kamu ketika Aku melihatmu, maka matilah, kemudian malaikat maut tidak hidup selamanya". (HR Al Madini )',
      },
      {
        'arabic':
            'عن محمد بن كعب القرظي قال : بلغني أن آخر من يموت من الخلق ملك الموت ، يقال له : يا ملك الموت ، مت موتا لا تحيا بعده أبدا . قال : فيصرخ عند ذلك صرخة لو سمعها أهل السماوات والأرض لماتوا فزعا ، ثم يموت ، ثم يقول تعالى : لمن الملك اليوم لله الواحد القهار',
        'indo':
            'Dari Muhammad bin Ka\'b Al Qirodzi berkata : " telah sampai kepadaku bahwa orang yang meninggal paling akhir dari makhluk adalah malaikat maut, dikatakan kepada malaikat maut : " wahai malaikat maut, matilah kamu dengan mati yang tidak akan hidup lagi setelahnya selamanya". Muhammad bin Ka\'b berkata : "lalu malaikat maut menjerit dengan jeritan yang jika penduduk langit dan bumi mendengarnya maka mereka meninggal dunia sebab kaget, kemudian malaikat maut mati , kemudian Alah ta\'ala berfirman : "',
      },
      {
        'arabic': 'لِمَنِ الْمُلْكُ الْيَوْمَ لِلَّهِ الْوَاحِدِ الْقَهَّارِ',
        'indo':
            '"Kepunyaan siapakah kerajaan pada hari ini? kepunyaan Allah yang Maha Esa lagi Maha Mengalahkan. " (QS Al-Mu’min 40: 16). (HR Ibnu Abid Dunya )',
      },
      {
        'arabic': 'أَكْثِرُوْا ذِكْرَ هَاذمِ اللَّذَّاتِ',
        'indo':
            '“Perbanyaklah mengingat-ingat sesuatu yang melenyapkan segala macam kelezatan(kematian).” (HR. At-Tirmidzi)',
      },
      {
        'arabic':
            'أَكْثَرُهُمْ لِلْمَوْتِ ذِكْرًا وَأَحْسَنُهُمْ لِمَا بَعْدَهُ اسْتِعْدَادًا، أُولَئِكَ أَكْيَاسٌ',
        'indo':
            '“Orang yang paling banyak mengingat mati dan paling baik persiapannya untuk kehidupan setelah mati. Mereka itulah orang-orang yang cerdas.”',
      },
      {
        'arabic': 'لاَ إِلَهَ إِلَّا اللهُ، إِنَّ لِلْمَوْتِ سَكَرَاتٍ',
        'indo':
            '“Tidak ada sesembahan yang berhak disembah kecuali Allah . Sesungguhnya kematian ada masa sekaratnya.” (HR. Al-Bukhari)',
      },
      {
        'arabic': 'كُلُّ نَفْسٍ ذَائِقَةُ الْمَوْتِ',
        'indo':
            '“Setiap yang berjiwa pasti akan merasakan mati,” sudah mencukupi bagi orang yang mendengar dan melihat.',
      },
      {
        'arabic':
            'اذْكُرِ الْمَوْتَ تَجِدُ رَاحَةً، فِي إِذْكَارِ الْمَوْتِ تَقْصِيْرُ اْلأَمَلِ',
        'indo':
            'Alangkah bagusnya ucapan orang yang berkata: “Ingatlah mati niscaya kau kan peroleh kelegaan, dengan mengingat mati akan pendeklah angan-angan.”',
      },
      {
        'arabic': 'تذكر الجنة والنار ولا تبكي وتبكي من هذا؟',
        'indo':
            'Suatu hari ada seorang yang bertanya: “Tatkala mengingat surga dan neraka engkau tidak menangis, mengapa engkau menangis ketika melihat perkuburan?” Utsman pun menjawab, “Sesungguhnya aku pernah mendengar Rasulullah shallallahu ‘alaihi wa sallam bersabda: "',
      },
      {
        'arabic':
            'إن القبر أول منازل الآخرة فإن نجا منه فما بعده أيسر منه وإن لم ينج منه فما بعده أشد منه',
        'indo':
            '“Sesungguhnya liang kubur adalah awal perjalanan akhirat. Jika seseorang selamat dari (siksaan)nya maka perjalanan selanjutnya akan lebih mudah. Namun jika ia tidak selamat dari (siksaan)nya maka (siksaan) selanjutnya akan lebih kejam.”',
      },
      {
        'arabic':
            'مَنْ كَانَ آخِرُ كَلَامِهِ لَا إِلَهَ إِلَّا اللهُ دَخَلَ الجَنَّةَ',
        'indo':
            '“Barang siapa yang akhir perkataannya adalah ‘lailaha illallah’, maka dia akan masuk surga.”',
      },
      {
        'arabic': 'لَقِّنُوا مَوْتَاكُمْ لاَ إِلَهَ إِلاَّ اللَّهُ',
        'indo':
            '“Talqinkanlah (tuntunkanlah) orang yang akan meninggal di antara kalian dengan bacaan: ‘laa ilaha illallah’.” (HR. Muslim)',
      },
      {
        'arabic':
            'اِغْتَنِمْ خَمْسًا قَبْلَ خَمْسٍ : شَبَابَكَ قَبْلَ هَرَمِكَ وَ صِحَّتَكَ قَبْلَ سَقَمِكَ وَ غِنَاكَ قَبْلَ فَقْرِكَ وَ فَرَاغَكَ قَبْلَ شَغْلِكَ وَ حَيَاتَكَ قَبْلَ مَوْتِكَ',
        'indo':
            '“Ambillah lima perkara sebelum lima perkara: [1] Waktu mudamu sebelum datang waktu tuamu, [2] Waktu sehatmu sebelum datang waktu sakitmu, [3] Masa kayamu sebelum datang masa kefakiranmu, [4] Masa luangmu sebelum datang masa sibukmu, [5] Hidupmu sebelum datang kematianmu.” (HR. Al Hakim)',
      },
      {
        'arabic': 'كَفَى بِالمَوْتِ وَاعِظًا',
        'indo':
            '“Cukuplah kematian sebagai peringatan (berharga).” (Diriwayatakan oleh Al Baihaqi)',
      },
      {
        'arabic':
            'اذكرِ الموتَ فى صلاتِك فإنَّ الرجلَ إذا ذكر الموتَ فى صلاتِهِ فَحَرِىٌّ أن يحسنَ صلاتَه وصلِّ صلاةَ رجلٍ لا يظن أنه يصلى صلاةً غيرَها وإياك وكلَّ أمرٍ يعتذرُ منه',
        'indo':
            '“Ingatlah kematian dalam shalatmu karena jika seseorang mengingat mati dalam shalatnya, maka ia akan memperbagus shalatnya. Shalatlah seperti shalat orang yang tidak menyangka bahwa ia masih punya kesempatan melakukan shalat yang lainnya. Hati-hatilah dengan perkara yang kelak malah engkau meminta udzur (meralatnya) (karena tidak bisa memenuhinya).”',
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
          'Hadist Tentang Kematian',
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
