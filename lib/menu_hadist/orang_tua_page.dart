import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';

class OrangTuaPage extends StatelessWidget {
  const OrangTuaPage({super.key});

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
            'عَنْ أَبِي هُرَيْرَةَ رَضِيَ اللَّهُ عَنْهُ قَالَ جَاءَ رَجُلٌ إِلَى رَسُولِ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ فَقَالَ يَا رَسُولَ اللَّهِ مَنْ أَحَقُّ النَّاسِ بِحُسْنِ صَحَابَتِي قَالَ أُمُّكَ قَالَ ثُمَّ مَنْ قَالَ ثُمَّ أُمُّكَ قَالَ ثُمَّ مَنْ قَالَ ثُمَّ أُمُّكَ قَالَ ثُمَّ مَنْ قَالَ ثُمَّ أَبُوكَ .',
        'indo':
            'Dari Abu Hurairah radhiyallahu ‘anhu dia berkata; “Seorang laki-laki datang kepa Rasulullah shallallahu ‘alaihi wasallam sambil berkata; “Wahai Rasulullah, siapakah orang yang paling berhak aku berbakti kepadanya?” Beliau menjawab: “Ibumu.” Dia bertanya lagi; “Kemudian siapa?” Beliau menjawab: “Ibumu.” Dia bertanya lagi; “Kemudian siapa lagi?” Beliau menjawab: “Ibumu.” Dia bertanya lagi; “Kemudian siapa?” Beliau menjawab: “Kemudian ayahmu.” (HR. Bukhari dan Muslim)',
      },
      {
        'arabic':
            'سَأَلْتُ النَّبِىَّ – صلى الله عليه وسلم – أَىُّ الْعَمَلِ أَحَبُّ إِلَى اللَّهِ قَالَ « الصَّلاَةُ عَلَى وَقْتِهَا » . قَالَ ثُمَّ أَىُّ قَالَ « ثُمَّ بِرُّ الْوَالِدَيْنِ » .قَالَ ثُمَّ أَىّ قَالَ « الْجِهَادُ فِى سَبِيلِ اللَّهِ » . قَالَ حَدَّثَنِى بِهِنَّ وَلَوِ اسْتَزَدْتُهُ لَزَادَنِى',
        'indo':
            '‘Abdullah bin Mas’ud radhiyallahu ‘anhu, mengatakan:\n\n“Aku bertanya pada Rasulullah shallallahu ‘alaihi wa sallam, ‘Amal apakah yang paling dicintai oleh Allah ‘azza wa jalla?’ Beliau shallallahu ‘alaihi wa sallam menjawab, ‘Shalat pada waktunya’. Lalu aku bertanya, ‘Kemudian apa lagi?’ Beliau shallallahu ‘alaihi wa sallam mengatakan, ‘Kemudian berbakti kepada kedua orang tua.’ Lalu aku mengatakan, ‘Kemudian apa lagi?’ Lalu beliau shallallahu ‘alaihi wa sallam mengatakan, ‘Berjihad di jalan Allah’.”\n\nLalu Abdullah bin Mas’ud mengatakan, “Nabi shallallahu ‘alaihi wa sallam memberitahukan hal-hal tadi kepadaku. Seandainya aku bertanya lagi, pasti beliau akan menambahkan (jawabannya).” (HR. Bukhari dan Muslim)',
      },
      {
        'arabic':
            'قَالَ رَسُوْلُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ أَلاَ أُنَبِّئُكُمْ بِأَكْبَرِ الْكَبَائِرِ ؟) ثَلاَثًا، قَالُوْا : بَلىَ يَا رَسُوْلَ اللهِ قَالَ : ( الإِشْرَاكُ بِاللهِ وَعُقُوْقُ الْوَالِدَيْنِ ) وَجَلَسَ وَكَانَ مُتَّكِئًا ( أَلاَ وَقَوْلُ الزُّوْرُ ) مَا زَالَ يُكَرِّرُهَا حَتىَّ قُلْتُ لَيْتَهُ سَكَتَ',
        'indo':
            '“Rasulullah shallallahu ‘alaihi wa sallam bersabda, “Apakah kalian mau kuberitahu mengenai dosa yang paling besar?” Para sahabat menjawab, “Mau, wahai Rasulullah.” Beliau lalu bersabda, “(Dosa terbesar adalah) mempersekutukan Allah dan durhaka kepada kedua orang tua.” Beliau mengucapkan hal itu sambil duduk bertelekan [pada tangannya]. (Tiba-tiba beliau menegakkan duduknya dan berkata), “Dan juga ucapan (sumpah) palsu.” Beliau mengulang-ulang perkataan itu sampai saya berkata (dalam hati), “Duhai, seandainya beliau diam.” (HR. Bukhari dan Muslim)',
      },
      {
        'arabic':
            'ثَلاَثُ دَعَوَاتٍ مُسْتَجَابَاتٌ لَهُنَّ لاَ شَكَّ فِيْهِنَّ دَعْوَةُ الْمَظْلُوْمِ وَدَعْوَةُ الْمُسَافِرِ وَدَعْوَةُ الْوَالِدَيْنِ عَلىَ وَلَدِهِمَا',
        'indo':
            '“Ada tiga jenis doa yang mustajab (terkabul), tidak diragukan lagi, yaitu doa orang yang dizalimi, doa orang yang bepergian dan doa kejelekan kedua orang tua kepada anaknya.” (HR. Abu Daud, Tirmidzi dan Ibnu Majah)',
      },
      {
        'arabic':
            'مَنْ أَحَبَّ أَنْ يُمَدَّ لَهُ فِي عُمْرِهِ وَأَنْ يُزَادَ لَهُ فِي رِزْقِهِ فَلْيَبَرَّ وَالِدَيْهِ وَلْيَصِلْ رَحِمَهُ',
        'indo':
            'Dari Anas bin Malik radhiyallahu ‘anhu, Nabi shallallahu ‘alaihi wa sallam bersabda,\n\n“Siapa yang suka untuk dipanjangkan umur dan ditambahkan rizki, maka berbaktilah pada orang tua dan sambunglah tali silaturahmi (dengan kerabat).” (HR. Ahmad)',
      },
      {
        'arabic':
            'عَنْ عَبْدُ الله bin عَمْرٍو رضي الله عنهما قال قال رسولُ الله صلى الله عليه وسلم: رِضَى اللهُ فى رِضَى الوَالِدَيْنِ و سَخَطُ الله فى سَخَطُ الوَالِدَيْنِ ( اخرجه الترمذي وصححه ابن حبان والحاكم)',
        'indo':
            '"Dari Abdullah bin ‘Amrin bin Ash r.a. ia berkata, Nabi SAW telah bersabda: “ Keridhoaan Allah itu terletak pada keridhoan orang tua, dan murka Allah itu terletak pada murka orang tua”. (HR. Tirmidzi)',
      },
      {
        'arabic':
            'حَدَّثَنَا مُسَدَّدٌ حَدَّثَنَا يَحْيَى عَنْ سُفْيَانَ وَشُعْبَةَ قَالَا حَدَّثَنَا حَبِيبٌ قَالَ ح و حَدَّثَنَا مُحَمَّدُ بْنُ كَثِيرٍ أَخْبَرَنَا سُفْيَانُ عَنْ حَبِيبٍ عَنْ أَبِي الْعَبَّاسِ عَنْ عَبْدِ اللَّهِ بْنِ عَمْرٍو قَالَ قَالَ رَجُلٌ لِلنَّبِيِّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ أُجَاهِدُ قَالَ لَكَ أَبَوَانِ قَالَ نَعَمْ قَالَ فَفِيهِمَا فَجَاهِدْ',
        'indo':
            'Telah menceritakan kepada kami [Musaddad] telah menceritakan kepada kami [Yahya] dari [Sufyan] dan [Syu\'bah] keduanya berkata; telah menceritakan kepada kami [Habib] dia berkata. Dan diriwayatkan dari jalur lain, telah menceritakan kepada kami [Muhammad bin Katsir] telah mengabarkan kepada kami [Sufyan] dari [Habib] dari [Abu Al \'Abbas] dari [Abdullah bin \'Amru] dia berkata; seorang laki-laki berkata kepada Nabi shallallahu \'alaihi wasallam; "Saya hendak ikut berjihad." Beliau lalu bersabda: "Apakah kamu masih memiliki kedua orang tua?" dia menjawab; "Ya, masih." Beliau bersabda: "Kepada keduanya lah kamu berjihad."',
      },
      {
        'arabic':
            'إِنَّ أَبَرَّ الْبِرِّ صِلَةُ الْوَلَدِ أَهْلَ وُدِّ أَبِيهِ ',
        'indo':
            '“Sesungguhnya kebajikan terbaik adalah perbuatan seorang yang menyambung hubungan dengan kolega ayahnya.” (HR. Muslim)',
      },
      {
        'arabic':
            'يَا رَسُولَ اللَّهِ هَلْ بَقِيَ مِنْ بِرِّ أَبَوَيَّ شَيْءٌ أَبَرُّهُمَا بِهِ بَعْدَ مَوْتِهِمَا قَالَ نَعَمْ الصَّلَاةُ عَلَيْهِمَا وَالِاسْتِغْفَارُ لَهُمَا وَإِنْفَاذُ عَهْدِهِمَا مِنْ بَعْدِهِمَا وَصِلَةُ الرَّحِمِ الَّتِي لَا تُوصَلُ إِلَّا بِهِمَا وَإِكْرَامُ صَدِيقِهِمَا',
        'indo':
            'Ada sebuah kisah, yaitu seseorang dari Bani Salamah mendatangi Nabi Shallallahu ‘alaihi wa sallam. Ia bertanya:\n\n“Wahai Rasulullah, apakah masih ada cara berbakti kepada kedua orang tuaku setelah keduanya meninggal?” Beliau menjawab,”Ya, dengan mendoakannya, memintakan ampun untuknya, melaksanakan janjinya (wasiat), menyambung silaturahmi yang tidak bisa disambung kecuali melalui jalan mereka berdua, dan memuliakan teman-temannya”. [HR Abu Dawud].',
      },
      {
        'arabic':
            'جَاءَرَجُلٌ الِرَ النَّبِيِّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ يَسْتَأْذِنُهُ فِى الْجِهَادِ.فَقَالَ:اَحَيٌّ وَالِدَاكَ؟ قَالَ:نَعَمْ،قَالَ فَفِيْهِمَافَجَاهِدْ (رواه مسلم)',
        'indo':
            'Artinya: “Seseorang laki-laki datang kepada Nabi SAW minta izin hendak ikut jihad (berperang). Tanya Nabi SAW kepadanya, Apakah kedua orang tuamu masih hidup? Jawab orang itu, Masih! Sabda beliau, Berbakti kepada keduanya adalah jihad.” (HR. Muslim)',
      },
      {
        'arabic':
            'اَقْبَلَ رَجُلٌ اِلَى نَبِيِّ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ فَقَالَ: اُبَايِعُكَ عَلَى الْهِجْرَةِوَالْجِهَادِاَبْتَغِى الْاَجْرَمِنَ اللهِ قَالَ: فَهَلْ مِنْ وَالِدَيْكَ اَحَدٌحَيٌّ؟ قَالَ: نَعَمْ بَلْ كِلَاهُمَا،قَالَ: فَتَبْتَغِى الْاَجْرَمِنَ اللهِ؟ قَالَ: نَعَمْ، قَالَ: فَارْجِع| اِلَى وَالِدَيْكَ فَاَحْسِنْ صُحْبَتَهُمَا. (رواه البخارى)',
        'indo':
            'Artinya:”Seorang laki-laki datang menghadap Rasulullah SAW, lalu dia berkata: Aku bai’at (berjanji setia) dengan Anda akan ikut hijrah dan jihad, karena aku menginginkan pahala dari Allah. Tanya Nabi SAW, Apakah orang tuamu masih hidup? Jawab orang itu, Bahkan keduanya masih hidup. Yanya Nabi SAW, Apakah kamu mengharapkan pahala dari Allah? Jawabnya, Ya! Sabda Nabi SAW, Pulanglah kamu kepada kedua orang tuamu, lalu berbaktilah pada keduanya sebaik-baiknya!” (HR. Bukhari)',
      },
      {
        'arabic':
            'عَنِ النَّبِيِّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ قَالَ: رَغِمَ اَنْفُ ثُمَّ رَغِمَ اَنْفُ ثُمَّ رَغِمَ اَنْفُ قِيْلَ: مَنْ يَارَسُوْلَ اللهِ؟ قَالَ: مَنْ اَدْرَكَ اَبَوَيْهِ عِنْدَ الْكِبَرِاَحَدُهُمَااَوْكِلَيْهِمَافَلَمْ يَدْخُلِ الْجَنَّةَ (رواه مسلم)',
        'indo':
            'Artinya: “Dari Nabi SAW sabdanya: Dia celaka! Dia celaka! Dia celaka! Lalu beliau ditanya orang, Siapakah yang celaka, ya Rasulullah? Jawab Nabi SAW, Siapa yang mendapati kedua orang tuanya (dalam usia lanjut), atau salah satu dari keduanya, tetapi dia tidak berusaha masuk surga (dengan merawat orang tuanya sebaik-baiknya).” (HR. Muslim)',
      },
      {
        'arabic':
            'عن عبد الله bin عمر ورضى الله عنهما قال : قال رسول الله صلى الله عليه وسلم ان من اكبر الكبا ئر ان يلعن الر جل والديه . قيل رسول الله.و كيف يلعن لر جل والديه ؟ قا ل: يسب الرجل ابا لرجل فيسب أبا لرجل فيسب أبا ه و يسب ( أخر جه امام بخاري)',
        'indo':
            'Artinya: “ dari Abdullah bin ‘amr bin al-ash ia berkata, Rasulullah Saw telah bersabda: “ diantara dosa-dosa besar yaitu seseorang memaki kedua orang tuanya. “ para sahabat bertanya: “ Wahai Rasulullah, apakah ada seseorang yang memaki kedua orang tuanya?” Beliau menjawab: “ Ya, apabila seseorang memaki ayah orang lain, kemudian orang itu membalas memaki ayahnya kemudian ia memaki ibu orang lain, dan orang itu memaki ibunya. (H.R. Bukhari)',
      },
      {
        'arabic':
            'مَا مِنْ ذَنْبٍ أَجْدَرُ أَنْ يُعَجِّلَ لِصَاحِبِهِ الْعُقُوْبَةَ مَعَ مَا يَدَّخِرُ لَهُ مِنَ الْبَغِى وَقَطِيْعَةِ الرَّحِمِ',
        'indo':
            '”Tidak ada dosa yang lebih pantas untuk disegenakan balasannya bagi para pelakunya (di dunia ini) - berikut dosa yang disimpan untuknya (di akhirat) - daripada perbuatan melampaui batas (kezhaliman) dan memutus silaturahmi (dengan orang tua dan kerabat).” (HR. Abu Daud, Ibnu Majah dan Tirmidzi)',
      },
      {
        'arabic': 'أَطِع| أَبَاكَ مَا دَامَ حَيًّا وَلاَ تَعْصِهِ',
        'indo':
            '“Taatilah ayahmu selama dia hidup dan selama tidak diperintahkan untuk bermaksiat.” (HR. Ahmad)',
      },
      {
        'arabic':
            'عن المغيرة بن شعبة قال النبي صلى الله عليه وسلم : ان الله حرم عليكم عقوق الامهات ووأد البنات ومنع وهات وكره لكم قيل وقال وكثرة السؤال واضاعة المال (اخرجه البخاري)',
        'indo':
            '"Dari Al-Mughirah bin Syu’ban r.a. ia berkata, Nabi Saw telah bersabda: “Sungguh Allah ta’ala mengharamkan kalian durhaka kepada ibu, menolak kewajiban, meminta yang bukan haknya dan mengubur hidup-hidup anak perempuan. Allah juga membenci orang yang banyak bicara, banyak pertanyaan dan menyia-nyiakan harta.” (H.R.Bukhari).',
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
          'Hadist Tentang Berbakti Kepada Orang Tua',
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
