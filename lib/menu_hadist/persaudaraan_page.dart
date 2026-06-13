import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';

class PersaudaraanPage extends StatelessWidget {
  const PersaudaraanPage({super.key});

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
            'عَنْ أبْنِ عُمَرَ رَضِى الله عَنْه قَالَ: قَالَ رَسُوْلَ اللهِ صَلّى الله عَلَيْهِ وَسَلّمَ: الْمُسْلِمُ أَخُوْ الْمُسْلِمِ لا يَضْلِمُهُ ولايخذله وَلا يُسْلِمُهُ',
        'indo':
            'Artinya: "Diriwayatkan dari Ibnu Umar, beliau berkata: "Rasulullah SAW bersabda: Seorang muslim itu adalah saudara muslim yang lain. Oleh sebab itu, jangan menzdalimi dan meremehkannya dan jangan pula menykitinya." (HR. Ahmad, Bukhori dan Muslim).',
      },
      {
        'arabic':
            'حَدِ يث عَبْدِاللهِ بْنِ عُمَرَ رَضِ اللهُ عَنهُمَا. أنَّ رَسُولَ اللهِ صلّي اللهُ عليهِ وَسَلّمَ ، قَالَ : الْمُسْلِمُ أَخُوالْمُسْلِمِ ، لَا يَظْلِمُهُ ، وَلاَ يُسْلِمُهُ . وَمَنْ كَانَ فِى حَاجَةِ أَخِيهِ . كَانَ اللهُ فِى حَاجَتِهِ . وَمَنْ فَرَّجَ عَنْ مُسْلِمٍ كُرْبَةً ، فَرَّجَ اللهُ عَنْهُ كُرْبَةً مِنْ كُرُبَاتِ يَوْمِ اْلقِيَامَةِ. وَمَنْ سَتَرَمُسْلِمًا ، سَتَرَهُ اللهُ يَوْمَ الْقِيَامَةِ اخرجه البخاري فى : – كتاب المظالم: – باب لايظلم المسلم المسلم ولايسلمه .',
        'indo':
            'Artinya: Abdullah bin Umar r.a. berkata : Rasulullah saw. Bersabda : Seorang muslim saudara terhadap sesama muslim, tidak menganiyayanya dan tidak akan dibiarkan dianiaya orang lain. Dan siapa yang menyampaikan hajat saudaranya, maka Allah akan menyampaikan hajatnya. Dan siapa yang melapangkan kesusahan seorang muslim, maka Allah akan melapangkan kesukarannya di hari qiyamat, dan siapa yang menutupi aurat seorang muslim maka Allah akan menutupinya di hari qiyamat. (Bukhari, muslim).',
      },
      {
        'arabic':
            '. قَالَ عَبْد اللَّهِ حَدَّثَنَا أَبُو مَعْمَرٍ حَدَّثَنَا هُشَيْمٌ قَالَ أَخْبَرَنَا سَيَّارٌ عَنْ خَالِدِ بْنِ عَبْدِ اللَّهِ الْقَسْرِيِّ عَنْ أَبِيهِ أَنَّ النَّبِيَّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ قَالَ لِجَدِّهِ يَزِيدَ بْنِ أَسَدٍ أَحِبَّ لِلنَّاسِ مَا تُحِبُّ لِنَفْسِكَ - أحمد',
        'indo':
            'Artinya: Abdullah berkata; telah menceritakan kepada kami Abu Ma\'mar telah menceritakan kepada kami Hutsaim berkata; telah mengabarkan kepada kami Sayyar dari Khalid bin Abdullah Al Qasri dari Bapaknya sesungguhnya Nabi Shallallahu\'alaihiwasallam bersabda kepada kakeknya, Yazid bin Asad, "Cintailah kepada manusia sebagaimana kamu mencintai dirimu." (Ahmad)',
      },
      {
        'arabic':
            'عن البراء قال قال رسول الله صلى اللهم عليه وسلم ما من مسلمين يلتقيان فيتصافحان إلا غفر لهما قبل أن يفترقا',
        'indo':
            'Artinya “Setiap dua orang muslim bertemu dan berjabat tangan nescaya diampunkan dosa keduanya sebelum mereka berpisah” (Riwayat Abu Daud)',
      },
      {
        'arabic':
            'وَعَنْ أنَسٍ رَضِىَ اللهُ عَنْهُ قَالَ : قَالَ رَسُولُ اللهِ صَلَّى اللهُ عليهِ وسلم : لاَتَقَا طَعُوا وَلاَتَدَا بَرُوا وَلَاتَبَا غَضُوا وَلاَتَحَا سَدُوا ، وَكُونُواعِبَادَ اللهِ إخْوَانًا ، وَلاَيَحِلُّ لِمُسْلِمٍ أنْ يَهْجُرَ أخَاهُ فَوْقَ ثَلاَثٍ . مُتَّفَقٌ عَلَيْهِ .',
        'indo':
            'Artinya :Anas r.a. berkata: Rasulullah s.a.w. bersabda: jangan putus-memutus hubungan dan jangan belakang-membelakangi dan jangan benci-membenci, dan jangan hasud-menghasud dan jadilah kamu hamba Allah sebagai saudara, dan tidak dihalalkan bagi seorang muslim memboikot saudaranya sesama muslim lebih dari tiga hari. (Muttafaq Alaih) (Buchary, Muslim)',
      },
      {
        'arabic':
            '. حدثنا هناد حدثنا أبو معاوية عن ابن أبي ليلى وحدثنا سفيan بن وكيع حدثنا حميد بن عبد الرحمن الرواسي عن ابن أبي ليلى عن عطية عن أبي سعيد قال قال رسول الله صلى الله عليه و سلم من لم يشكر الناس لم يشكر الله. وفي الباب عن ابي هريرة بن قيس و النعمان بن بشير. قال أبو عيسى هذا حديث حسن صحيح - الترمذي',
        'indo':
            'Artinya:Telah menceritakan kepada kami Hannad, telah menceritakan kepada kami Abu Mu\'awiyah dari Ibnu Abu Laila (dalam riwayat lain). Dan telah menceritakan kepada kami Sufyan bin Waki\', telah menceritakan kepada kami Humaid bin Abdurrahman Ar Ruwasi dari Ibnu Abu Laila dari \'Athiyyah dari Abu Sa\'id ia berkata; Rasulullah shallallahu \'alaihi wasallam bersabda: "Siapa yang tidak bersyukur kepada manusia, berarti ia belum bersyukur kepada Allah." Hadits semakna juga diriwyakan dari Abu Hurairah, Al Asy\'ats bin Qais dan An Nu\'man bin Basyir. Abu Isa berkata; Ini adalah hadits hasan shahih”. (Turmudzi)',
      },
      {
        'arabic':
            'حَدَّثَنَا هِشَامُ بْنُ عَمَّارٍ ثَنَا عِيسَى بْنُ يُونُسَ ثَنَا الْأَعْمَشُ عَنْ شَقِيقٍ عَنِ ابْنِ مَسْعُودٍ قَالَ: قَالَ رَسُولُ اللهِ صلى الله عليه وسلم سِبَابُ الْمُسْلِمِ فُسُوقٌ وَقِتَالُهُ كُفْرٌ - ابن ماجه',
        'indo':
            'Artinya:“Telah menceritakan kepada kami Hisyam bin Ammar, telah menceritakan kepada kami  Isa bin Yunus, Telah menceritakan kepada kami A’masy, dari Syaqiq, dari Ibni Mas’ud berkata, Rasulullah saw bersabda: Mencela orang muslim adalah kefasikan, dan membunuhnya adalah kekufuran.” (Ibnu Majah)',
      },
      {
        'arabic':
            'عَنْ عَبْدِ ا للهِ بْنِ عُمَرَ رَضِى الله عَنْهُمَا اَنٌّ رَسُوْلَ اللهِ صَلّى الله عَلَيْهِ وَسَلّمَ قالَ الْمُسْلِمُ أَخُوْ الْمُسْلِمِ لا يَضْلِمُهُ وَلا يُسْلِمُهُ وَمَنْ كاَنَ فِي حَاجَةِ أخِيْهِ كَانَ اللهُ فِي حَاجَتِهِ ( أخرجه البخاري)',
        'indo':
            'Artinya:Dari Abdullah ibn Umar r.a. [dia meriwayatkan], bahwa Rasul saw bersabda: “seorang muslim adalah saudara bagi seorang muslim yang lain, yang tidak boleh mengania saudara muslimnya dan juga tidak boleh menyerahkan saudara muslim itu kepada musuh. Dan sesiapa meringankan seorang muslim dari kesulitan maka Allah akan memenuhi kebutuhanya. (H.R al-Bukhari).',
      },
      {
        'arabic':
            'حدثنا قتيبة حدثنا أبو عوانة عن الأعمش عن ابي صالح عن ابي هريرة قال قال رسول الله صلى الله عليه و سلم مَنْ نَفَّسَ عَنْ مُؤْمِنٍ كُرْبَةً مِنْ كُرَبِ الدُّنْيَا نَفَّسَ اللَّهُ عَنْهُ كُرْبَةً مِنْ كُرَبِ الآخرة وَمَنْ سَتَرَ عَلى مُسْلِم سَتَرَهُ اللَّهُ فِى الدُّنْيَا وَالآخِرَةِ وَاللَّهُ فِى عَوْنِ الْعَبْدِ مَا كَانَ الْعَبْدُ فِى عَوْنِ أَخِيهِ - الترمذي',
        'indo':
            'Artinya:Rasulullah saw bersabda: “barang siapa yang dapat menghilangkan kesusahan seorang mukmin di dunia, niscaya Allah akan menghilangkan kesusahannya kelak di akhiratnya, dan barang siapa yang merahasiakan keburukan  orang Islam, niscaya Allah akan menutup segala keburukannya di dunia dan di akhiratnya; Dan Allah akan selalu menolong hambanya, selama hambanya itu senantiasa memberikan bantuan kepada saudaranya.” (Turmudzi)',
      },
      {
        'arabic':
            '. حدثنا خلاد بن يحيى قال حدثنا سفيان عن أبي بردة بن عبدا الله بن أبي بردة عن جده عن أبي موسى عن انبي صلى الله عليه و سلم  قال إِنَّ الْمُؤْمِنَ لِلْمُؤْمِنِ كَالْبُنْيَانِ يَشُدُّ بَعْضُهُ بَعْضًا وَشبك أصابعه - بخاري',
        'indo':
            'Artinya:“Nabi saw bersabda: sesungguhnya orang mukmin yang satu dengan yang lain seperti bangunan. Yang sebagian menguatkan sebagian yang lain. Dan Nabi menggabungkan jari-jari tangannya”. (Bukhari)',
      },
      {
        'arabic':
            'عَنْ أَبِي هُرَيْرَةَ اَنَّ رَسُوْلَ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ قاَلَ حَقُ'
            ' الْمُسْلِمِ عَلَى الْمُسْلِمِ سِتٌّ أِذَا لَقِيْتَهُ فَسَلِّمْ عَلَيْهِ وَأِذَا دَعَاكَ فَأَ جِبْهُ وَأِذَا اسْتَنْصَحَكَ فَانْصَحْ لَهُ وَأِذَا عَطَسَ فَحَمِدَ اللهَ فَسَمِّتْهُ وَأِذَا مَرِضَ فَعُدْهُ وَأِذَا مَاتَ فَاتَّبِعْهُ ( أخرجه مسلم)',
        'indo':
            'Artinya:Dari Abu Hurairah r.a., dia berkata bahwa Rasul saw bersabda : ”Hak seorang muslim terhadap sesama muslim itu ada eloquence: (1) jika Anda bertemu dengannya maka ucapkanlah salam atasnya, (2) jika dia mengundang Anda maka penuhilah undangnnya, (3) jika dia meminta nasihat kepada Anda maka berilah nasihat padanya, (4) jika dia bersin dan mengucapkan Alhamdulillah maka doakanlah dengan yarhamukallah, (5) jika dia sakit maka jenguk (besuk) lah, dan (6) jika dia meninggal dunia maka antarkanlah jenazahnya.” ( H.R. Muslim)',
      },
      {
        'arabic':
            'مَثَلُ الْمُؤْمِنِينَ فِي تَوَادِّهِمْ وَتَرَاحُمِهِمْ وَتَعَاطُفِهِمْ، مَثَلُ الْجَسَدِ إِذَا اشْتَكَى مِنْهُ عُضْوٌ تَدَاعَى لَهُ سَائِرُ الْجَسَدِ بِالسَّهَرِ وَالْحُمَّى.',
        'indo':
            'Artinya:"Perumpamaan kaum mukminin dalam cinta-mencintai, sayang-menyayangi dan bahu-membahu, bagaikan satu badan/ibarat satu tubuh. Jika salah satu anggota tubuhnya sakit, maka seluruh anggota tubuhnya yang lain ikut merasakan sakit juga, dengan tidak bisa tidur dan demam"',
      },
      {
        'arabic':
            '((لاَ يُؤْمِنُ أَحَدُكُمْ حَتَّى يُحِبَّ ِلأَخِيْهِ مَا يُحِبُّ لِنَفْسِهِ [مِنَ الْخَيْرِ])) عَنْ أَبِيْ حَمْزَةَ أَنَسِ بْنِ مَالِكٍ خَادِمِ رَسُوْلِ اللهِ عَنِ النَّبِيِّ قَالَ : رَوَاهُ الْبُخَارِيُّ وَمُسْلِمٌ.',
        'indo':
            'Artinya:Dari Abu Hamzah, Anas bin Mâlik Radhiyallahu \'anhu, dari Nabi Shallallahu \'alaihi wa sallam, beliau bersabda: “Tidak sempurna iman seseorang di antara kalian hingga ia mencintai untuk saudaranya segala apa yang ia cintai untuk dirinya sendiri berupa kebaikan”. [HR al-Bukhâri dan Muslim].',
      },
      {
        'arabic':
            'وَعَنِ ابْنِ مُسْعُودٍ رَضِىَ اللهُ عَنْهُمَا قَالَ : قَالَ رَسُوْلُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلّم : سِبَابُ الْمُسْلِمِ فُسُوقٌ وَقِتَالُهُ كُفْرٌ . مُتَّفَقٌ عَلَيْه .',
        'indo':
            'Artinya:Ibn Mas’ud r. a. berkata : Rasulullah s.a.w. bersabda : Mencaci maki pada seorang Muslim berarti fasik (melanggar agama), dan memerangi orang Muslim berarti kafir. (Buchary, Muslim)',
      },
      {
        'arabic':
            'عَنْ أَبِي هُرَيْرَةَ رضي الله عنه قَالَ: قَالَ رَسُولُ اَللَّهِ صلى الله عليه وسلم : مَنْ أَحَبَّ أَنْ يُبْسَط لَهُ فِي رِزْقِهِ، وَأَنْ يُنْسَأَ لَهُ فِي أَثَرِهِ فَلْيَصِلْ رَحِمَهُ (أَخْرَجَهُ اَلْبُخَارِيُّ).',
        'indo':
            'Artinya:"Abu Hurairah RA menceritakan, Bahwa Rasulullah SAW bersabda, "Siapa yang ingin agar rizkinya dibanyakkan dan dipanjangkan umurnya, maka hendaklah ia berhubungan baik dengan yang ada hubungan rahim dengannya." (HR. Bukhari)',
      },
      {
        'arabic':
            'عَنْ أَبِي أَيُّوبَ رضي الله عنه أَنَّ رَسُولُ اَللَّهِ  صلى الله عليه وسلم قَالَ: لاَ يَحِلُّ لِمُسْلِمٍ أَنْ يَهْجُرَ أَخَاهُ فَوْقَ ثَلاَثِ لَيَالٍ يَلْتَقِيَانِ, فَيُعْرِضُ هَذَا, وَيُعْرِضُ هَذَا, وَخَيْرُهُمَا اَلَّذِي يَبْدَأُ بِالسَّلاَمِ (مُتَّفَقٌ عَلَيْهِ)',
        'indo':
            'Artinya:"Abu Ayyub RA menceritakan, bahwa Rasulullah SAW bersabda, "Tidak halal (Boleh) seorang Islam menyisihkan saudaranya lebih dari tiga hari, jika keduanya bertemu, maka yang seorang berpaling kesana dan yang seorang lagi berpaling kesini. Tetapi yang paling baik diantara yang kedua itu ialah siapa yang memulai mengucapkan salam kepada lawannya." (HR. Muttafaqun Aliah)',
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
          'Hadist Tentang Persaudaraan',
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
