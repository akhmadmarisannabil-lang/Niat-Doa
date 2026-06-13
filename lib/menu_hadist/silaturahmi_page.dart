import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';

class SilaturahmiPage extends StatelessWidget {
  const SilaturahmiPage({super.key});

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
            '” مَنْ كَانَ يُؤْمِنُ بِاللهِ وَاْليَوْمِ اْلآخِرِ فَلْيُكْرِمْ ضَيْفَهُ, وَمَنْ كَانَ يُؤْمِنُ بِاللهِ وَاْليَوْمِ اْلآخِرِ فَلْيَصِلْ رَحِمَهُ “',
        'indo':
            'Artinya: “Barang siapa yang beriman kepada Allah dan hari akhir maka hendaklah ia memuliakan tamunya, dan barangsiapa yang beriman kepada Allah dan hari akhir maha hendaklah ia menyambung hubungan silaturahmi”',
      },
      {
        'arabic':
            '” صِلْ مَنْ قَطَعَكَ وَأَعْطِ مَنْ حَرَمَكَ وَأَعْرِضْ عَمَّنْ ظَلَمَكَ “',
        'indo':
            'Artinya:“Sambunglah orang yang memutuskan (hubungan dengan)mu, berilah kepada orang yang tidak memberi kepadamu, dan berpalinglah dari orang yang berbuat zalim kepadamu” (HR Ahmad)',
      },
      {
        'arabic':
            'مَنْ أَحَبَّ أَنْ يُبْسَطَ لَهُ فِي رِزْقِهِ، وَيُنْسَأَ لَهُ فِي أَجَلِهِ، فَلْيَتَّقِ اللَّهَ، وَلْيَصِلْ رَحِمَهُ',
        'indo':
            'Artinya: “Barangsiapa yang suka diluaskan rizkinya dan ditangguhkan ajalnya, hendaklah ia bertaqwa kepada Allah dan menyambung silaturahim”.',
      },
      {
        'arabic':
            'وَعَنْ أبِى أيُّوبَ رَضِىَ اللهُ عَنْهُ : أَنَّ رَسُولَ اللهِ صَلَّى اللهُ عليهِ وَسَلَّمَ قَالَ : لاَ يَحِلُ'
            ' لِمُسْلِمٍ أنْ يَهْجُرَ أخَاهُ فَوْقَ ثَلاَثِ لَيَالٍ يَلْتَقِيَانِ فَيُعْرِضُ هذَا وَيُعْرِضُ هذَا ، وَخَيْرُ هُمَا الَّذِى يُبْدَأُبِالسَّلاَمِ . مُتَّفَقٌ عَلَيْهِ .',
        'indo':
            'Artinya:Abu Ajjub r.a. berkata: Rasulullah s.a.w. bersabda: Tidak dihalalkan seorang muslim memboikot saudara sesama Muslim lebih dari tiga hari, hingga bertemu masing-masing mengabaikan pada yang lain. Dan sebaik-baik keduanya ialah yang dahulu memberi salam.',
      },
      {
        'arabic':
            'عَنْ أبِيْ مُوسَى رَضِيَ اللهُ عَنْهُ قَالَ : قَالَ رَسُوْلُ الله صَلّى اللهُ عليهِ وَسَلّمَ : “اَلمُؤمِنُ لِلْمُؤمِنِ كَالْبُنْيَانِ يَشُدُّ بَعْضُهُ بَعْضًا”((روه مسلم)',
        'indo':
            'Artinya: Abu Musa mengatakan bahwa Rasulullah bersabda, “Orang mukmin yang satu dengan lain bagai satu bangunan yang bagian-bagiannya saling mengokohkan.”',
      },
      {
        'arabic':
            '” مَا مِنْ ذَنْبٍ أَحْرَى أَنْ يُعَجِّلَ اللهُ لِصَاحِبِهِ الْعُقُوْبَةَ فِي الدُّنْيَا مَعَ مَا يُدَّخَرُ لَهُ فِي اْلآخِرَةِ مِنَ الْبَغْيِ وَقَطِيْعَةِ الرَّحِمِ “',
        'indo':
            'Artinya: “Tidak ada dosa yang Allah swt lebih percepat siksaan kepada pelakunya di dunia, serta yang tersimpan untuknya di akhirat selain perbuatan zalim dan memutuskan tali silaturahmi” (HR Tirmidzi)',
      },
      {
        'arabic':
            '” إِنَّ أَعْمَالَ بَنِي آدَمَ تُعْرَضُ كُلَّ خَمِيْسٍ لَيْلَةَ الْجُمُعَةِ فَلاَ يُقْبَلُ عَمَلُ قَاطِعِ رَحِمٍ “',
        'indo':
            'Artinya: “Sesungguhnya amal ibadah manusia diperlihatkan setiap hari Kamis malam Jum’at, maka tidak diterima amal ibadah orang yang memutuskan hubungan silaturahmi” (HR Ahmad)',
      },
      {
        'arabic':
            '” مَنْ أَحَبَّ أَنْ يُبْسَطَ لَهُ فِى رِزْقِهِ وَيُنْسَأَ لَهُ فِى أَثَرِهِ فَلْيَصِلْ رَحِمَهُ “',
        'indo':
            'Artinya:“Barangsiapa yang senang diluaskan rizqinya dan dipanjangkan umurnya, maka hendaklah ia menyambung hubungan silaturahmi”',
      },
      {
        'arabic':
            'إَنَّ اللهَ خَلَقَ الْخَلْقَ حَتَّى إِذَا فَرَغَ مِنْهُمْ قَامَتِ الرَّحِمُ فَقَالَتْ:هَذَا مَقَامُ الْعَائِذُ بِكَ مِنَ الْقَطِيْعَةِ. قَالَ: َنعَمْ, أَمَا تَرْضَيْنَ أَنْ أَصِلَ مَنْ وَصَلَكَ وَأَقْطَعَ مَنْ َقطَعَكَ؟ قَالَتْ: بَلَى. قَالَ: فَذَلِكَ لَكَ ”',
        'indo':
            'Artinya: “Sesungguhnya Allah swt menciptakan makhluk, hingga apabila Dia selesai dari (menciptakan) mereka, rahim berdiri seraya berkata: ini adalah kedudukan orang yang berlindung dengan-Mu dari memutuskan. Dia berfirman: “Benar, apakah engkau ridha jika Aku menyambung orang yang menyambung engkau dan memutuskan orang yang memutuskan engkau?” Ia menjawab: iya. Dia berfirman: “Itulah untukmu”',
      },
      {
        'arabic':
            '” لاَ تَنْزِلُ الرَّحْمَةُ عَلَى قَوْمٍ فِيْهِم|ِ قَاطِعُ رَحِمٍ “',
        'indo':
            'Artinya:“Rahmat tidak akan turun kepada kaum yang padanya terdapat orang yang memutuskan tali silaturahmi” (HR Muslim)',
      },
      {
        'arabic': '” لاَ يَدْخُلُ الْجَنَّةَ قَاطِعٌ “',
        'indo':
            'Artinya:“Tidak akan masuk surga orang yang memutuskan (silaturahmi)” (HR Bukhari dan Muslim)',
      },
      {
        'arabic':
            '” تَعْبُدُ اللهَ وَلاَ تُشْرِكُ بِهِ شَيْئًا وَتُقِيْمُ الصَّلاَةَ وَتُؤْتِيَ الزَّكَاةَ وَتَصِلُ الرَّحِمَ “',
        'indo':
            'Artinya: “Engkau menyembah Allah swt dan tidak menyekutukan sesuatu dengan-Nya, mendirikan shalat, menunaikan zakat, dan menyambung tali silaturahmi” (HR Bukhari dan Muslim)',
      },
      {
        'arabic':
            '” الصَّدَقَةُ عَلَى الْمِسْكِيْنِ صَدَقَةٌ وَعَلَى ذِي الرَّحِمِ اثْنَتَانِ: صَدَقَةٌ وَصِلَةٌ “',
        'indo':
            'Artinya:“Sedekah terhadap orang miskin adalah sedekah dan terhadap keluarga sendiri mendapat dua pahala: sedekah dan silaturahmi.” (HR Tirmidzi)',
      },
      {
        'arabic':
            'لَيْسَ الْوَاصِلُ بِالْمُكَافِئِ ، وَلَكِنِ الْوَاصِلُ الَّذِى إِذَا قَطَعَتْ رَحِمُهُ وَصَلَهَا',
        'indo':
            'Artinya:”Seorang yang menyambung silahturahmi bukanlah seorang yang membalas kebaikan seorang dengan kebaikan semisal. Akan tetapi seorang yang menyambung silahturahmi adalah orang yang berusaha kembali menyambung silaturahmi setelah sebelumnya diputuskan oleh pihak lain.” (HR. Bukhari no. 5991)',
      },
      {
        'arabic':
            'قَالَ اللهُ عَزَّ وَجَلَّ: أَنا الرَّحْمنُ، وَأَنا خَلَقْتُ الرَّحِمَ، وَاشْتَقَقْتُ لَهَا مِنِ اسْمِي، فَمَنْ وَصَلَهَا وَصَلْتُهُ، وَمَنْ قَطَعَهَا بتَتُّهُ',
        'indo':
            'Artinya:“Allah ’azza wa jalla berfirman: Aku adalah Ar Rahman. Aku menciptakan rahim dan Aku mengambilnya dari nama-Ku. Siapa yang menyambungnya, niscaya Aku akan menjaga haknya. Dan siapa yang memutusnya, niscaya Aku akan memutus dirinya.” (HR. Ahmad 1/194, shahih lighoirihi).',
      },
      {
        'arabic':
            'مَنِ اتَّقَى رَبَّهُ، وَوَصَلَ رَحِمَهُ، نُسّىءَ فِي أَجَلِه وَثَرَى مَالَهُ، وَأَحَبَّهُ أَهْلُهُ',
        'indo':
            'Artinya:“Siapa yang bertakwa kepada Rabb-nya dan menyambung silaturrahmi niscaya umurnya akan diperpanjang dan hartanya akan diperbanyak serta keluarganya akan mencintainya.” (Diriwayatkan oleh Bukhari )',
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
          'Hadist Tentang Silaturrahmi',
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
