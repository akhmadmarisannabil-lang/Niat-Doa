import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';

class JodohPage extends StatelessWidget {
  const JodohPage({super.key});

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
            'حَدَّثَنَا مُسَدَّدٌ حَدَّثَنَا يَحْيَى عَنْ عُبَيْدِ اللَّهِ قَالَ حَدَّثَنِي سَعِيدُ بْنُ أَبِي سَعِيدٍ عَنْ أَبِيهِ عَنْ أَبِي هُرَيْرَةَ رَضِيَ اللَّهُ عَنْهُعَنْ النَّبِيِّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ قَالَ تُنْكَحُ الْمَرْأَةُ لِأَرْبَعٍ لِمَالِهَا وَلِحَسَبِهَا وَجَمَالِهَا وَلِدِينِهَا فَاظْفَرْ بِذَات الدِّينِ تَرِبَتْ يَدَاكَ',
        'indo':
            'Artinya “ Di cerikan Musadad, diceritakan Yahya dari ‘abdulloh berkata bercerita kepadaku Sa’id Ibn Abi Sa’id dari Abi Hurairah ra bahwasanya Nabi saw bersabda wanita dinikahi karena empat perkara. Pertama hartanya, kedua kedudukan statusnya, third karena kecantikannya dan keempat karena agamanya. Maka carilah wanita yang beragama (islam) engkau akan beruntung.”',
      },
      {
        'arabic':
            'حَدَّثَنِي مُحَمَّدُ بْنُ عَبْدِ اللَّهِ بْنِ نُمَيْرٍ الْهَمْدَانِيُّ حَدَّثَنَا عَبْدُ اللَّهِ بْنُ يَزِيدَ حَدَّثَنَا حَيْوَةُ أَخْبَرَنِي شُرَحْبِيلُ بْنُ شَرِيكٍ أَنَّهُ سَمِعَ أَبَا عَبْدِ الرَّحْمَنِ الْحُبُلِيَّ يُحَدِّثُ عَنْ عَبْدِاللَّهِ بْنِ عَمْرٍوانَّ رَسُول اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ قَالَ الدُّنْيَا مَتَاعٌ وَخَيْرُ مَتَاعِ الدُّنْيَاالْمَرْأَةُ الصَّالِحَة',
        'indo':
            '“Dunia adalah hiasan, dan sebaik-baik hiasan dunia adalah wanita Sholehah” (Al-Hadist riwayat muslim)',
      },
      {
        'arabic':
            'حَدَّثَنَا هِشَامُ بْنُ عَمَّارٍ حَدَّثَنَا سَلَّامُ بْنُ سَوَّارٍ حَدَّثَنَا كَثِيرُ بْنُ سُلَيْمٍ عَنْ الضَّحَّاكِ بْنِ مُزَاحِمٍ قَالَ سَمِعْتُ أَنَسَ بْنَ مَالِكٍ يَقُولُسَمِعْتُ رَسُولَ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ يَقُولُ مَنْ أَرَادَ أَنْ يَلْقَى اللَّهَ طَاهِرًا مُطَهَّرًا فَلْيَتَزَوَّجْ الْحَرَائِرَ',
        'indo':
            '“Di ceritakan kepada kami Hisyam bin ‘Ammar, mewartakan kepada kami Sallam bin Sawwar, menceritakan kepada kami Katsir bin Salim dari Adh-Dhahak bin Mujahim, dia berkata : saya mendengar anas bin Malik mengatakan, saya mendengar Rosulalloh saw bersabda : “barang yang mau menghendaki Alloh dalam keadaan suci dan disucikan, maka hendaklah dia mengawini wanita merdeka. (HR. Imam ibn Majah)',
      },
      {
        'arabic':
            'عن عبide بن سعد قال رسول الله صلى الله عليه و سلم : من أحب فطرتي فليستن بسنتي ومن سنتي النكاح . رواه أبو يعلى قال حسين سليم أسد : رجاله ثقات',
        'indo':
            'Dari Ubaid bin Sa’ad, Rasulullah saw bersabda: “Siapa yang menyukai fitrahku hedaknya ia bersunnah dengan sunnahku, dan termasuk sunnahku adalah menikah.”',
      },
      {
        'arabic':
            'عن أنس bin مالك قال : كان رسول الله صلى الله عليه و سلم يأمر بالباءة وينهى عن التبتل نهيا شديدا ويقول تزوجوا الودود الولود اني مكاثر الأنبياء يوم القيامة . رواه أحمد بن حنبل . تعليق شعيب الأرنؤوط : صحيح لغيره , وهذا إsnاد قوي',
        'indo':
            'Dari Anas bin Malik ra; adalah Rasulullah saw memerintahkan untuk ba’ah (kemampuan memberi tempat tinggal) dan melarang perbujangan dengan larangan yang keras, Beliau bersabda: “Nikahilah wanita yang penyayang dan subur (karena) aku akan melebihi para nabi (jumlah umatnya) di hari kiamat kelak.”',
      },
      {
        'arabic':
            'حَدَّثَنَا مَكِّيُّ بْنُ إِبْرَاهِيمَ حَدَّثَنَا ابْنُ جُرَيْجٍ قَالَ سَمِعْتُ نَافِعًا يُحَدِّثُ أَنَّ ابْنَ عُمَرَ رَضِيَ اللَّهُ عَنْهُمَا كَانَ يَقُولُنَهَى النَّبِيُّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ أَنْ يَبِيعَ بَعْضُكُمْ عَلَى بَيْعِ بَعْضٍ وَلَا يَخْطُبَ الرَّجُلُ عَلَى خِطْبَةِ أَخِيهِ حَتَّى يَتْرُكَ الْخَاطِبُ قَبْلَهُ أَوْ يَأْذَنَ لَهُ الْخَاطِبُ',
        'indo':
            '“Sesama mukmin adalah bersaudara, maka baginya tidak halal menawar barang yang telah ditawar (dibeli) oleh saudaranya dan tidak halal meminang perempuan yang telah dipinang oleh saudaranya, kecuali bila saudaranya telah membatalkan pinangan.” (Al Hadits Riwayat Bukhari dan Muslim)',
      },
      {
        'arabic':
            'حَدَّثَنَا هِشَامُ بْنُ عَمَّارٍ حَدَّثَنَا صَدَقَةُ بْنُ خَالِدٍ حَدَّثَنَا عُثْمَانُ بْنُ أَبِي الْعَاتِكَةِ عَنْ عَلِيِّ بْنِ يَزِيدَ عَنْ الْقَاسِمِ عَنْ أَبِي أُمَامَةعَنْ النَّبِيِّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ أَنَّهُ كَانَ يَقُولُ مَا اسْتَفَادَ الْمُؤْمِنُ بَعْدَ تَقْوَى اللَّهِ خَيْرًا لَهُ مِنْ زَوْجَةٍ صَالِحَةٍ إِنْ أَمَرَهَا أَطَاعَتْهُ وَإِنْ نَظَرَ إِلَيْهَا سَرَّتْهُ وَإِنْ أَقْسَمَ عَلَيْهَا أَبَرَّتْهُ وَإِنْ غَابَ عَنْهَا نَصَحَتْهُ فِي نَفْسِهَا وَمَالِه',
        'indo':
            '”Tidak ada keberuntungan bagi seorang mukmin setelah bertaqwa kepada Alloh kecuali memiliki seorang istri yang Sholih. Yang bila disuruh, menurut dan bila di pandang menyenangkan, dan bila janji menepati, dan bila ditinggal pergi bisa menjaga diri dan harta suaminya.” (HR. Ibnu Majah)',
      },
      {
        'arabic':
            'عن أبي هريرة قال رسول الله صلى الله عليه و سلم : إذا أتاكم من ترضون خلقه و دينه فانكحوه إلا تفعلوا تكن فتنة في الأرض وفساد عريض . رواه الحاكم وقال هذا حديث صحيح الإسناد و لم يخرجاه',
        'indo':
            'Dari Abu Hurairah ra, Rasulullah saw bersabda: “Apabila datang kepada kalian siapa yang kalian ridhai akhlak dan agama nya, maka nikahkanlah ia. Jika tidak kalian lakukan, niscaya akan menjadi fitnah dan muka bumi dan kerusakan yang luas.” (HR. Al-Hakim – sanadnya shahih)',
      },
      {
        'arabic':
            'عن سهل بن سعد أن امرأة عرضت نفسها على النبي صلى الله عليه وسلم فقال له رجل يا رسول الله زوجنيها فقال ما عندك قال ما عندي شيء قال اذهب فالتمس ولو خاتما من حديد فذهب ثم رجع فقال لا والله ما وجدت شيئا ولا خاتما من حديد ولكن هذا إزاري ولها نصفه قال سهل وما له رداء فقال النبي صلى الله عليه وسلم وما تصنع بإزارك إن لبسته لم يكن عليها منه شيء وإن لبسته لم يكن عليك منه شيء فجلس الرجل حتى إذا طال مجلسه قام فرآه النبي صلى الله عليه وسلم فدعاه أو دعي له فقال له ماذا معك من القرآن فقال معي سورة كذا وسورة كذا لسور يعددها فقال النبي صلى الله عليه وسلم أملكناكها بما معك من القرآن . رواه البخاري',
        'indo':
            'Dari Sahl bin Sa\'ad ra, bahwa ada seorang wanita menawarkan dirinya kepada Nabi saw, kemudian seorang laki-laki berkata kepada Nabi saw: Wahai Rasulullah nikahkan ia dengan ku, Beliau bersabda: Apa yg kau punya (untuk mahar)? dia berkata: Aku tidak punya apa-apa, Beliau bersabda: Pergi dan carilah sesuatu meski hanya berupa cincin dari besi, maka laki-laki itu pergi kemudian kembali lagi lalu berkata: Demi Allah aku tidak menemukan apa-apa tidak pula cincin dari besi, aku hanya punya sarung ini kuberikan separuh untuknya (sebagai mahar), Sahal berkata: Ia tidak punya pakaian lagi, Nabi bersabda: Apa yang kamu perbuat dengan sarungmu itu sedangkan kalau kamu memakainya dia tidak kebagian apa-apa darinya dan kalau dia memakainya kamu tidak kebagian apa-apa darinya, kemudian laki-laki itupun duduk, hingga karena begitu lamanya ia berdiri (untuk pergi), lalu Nabi melihatnya dan memanggilnya atau dipanggilkan untuknya, lalu Beliau bersabda: Apa yang ada padamu dari (hafalan) Al-Qur\'an?, ia berkata: Aku hafal surat ini dan surat ini, dia menyebutkan surat-surat yang dihafalnya, maka Nabi saw bersabda: Aku serahkan wanita itu dengan (mahar) apa yang kamu hafal dari Al-Qur\'an. (HR. Bukhari)',
      },
      {
        'arabic':
            'عن الحسن عن سمرة : ان نبي الله صلى الله عليه و سلم نهى عن التبتل . رواه أحمد . تعليق شعيب الأرنؤوط : رجاله ثقات',
        'indo':
            'Dari Samurah ra, bahwa Rasulullah saw melarang dari tabattul (sengaja membujang untuk selamanya).',
      },
      {
        'arabic':
            'عن ابن عمر قال رسول الله صلى الله عليه وسلم : أبغض الحلال إلى الله الطلاق . رواه أبو داود وابن ماجه والحاكم وقال : صحيح الإسناد',
        'indo':
            'Dari Abdullah bin Umar ra, Rasulullah saw bersabda: “Perkara halal yang paling tidak disukai Allah swt adalah Talak.”',
      },
      {
        'arabic':
            'أَخْبَرَنَا عَبْدُ الرَّحْمَنِ بْنُ خَالِدٍ قَالَ حَدَّثَنَا يَزِيدُ بْنُ هَارُونَ قَالَ أَنْبَأَنَا الْمُسْتَلِمُ بْنُ سَعِيدٍعَنْ مَنْصُورِ بْنِ زَاذَانَ عَنْ مُعَاوِيَةَ بْنِ قُرَّةَ عَنْ مَعْقِلِ بْنِ يَسَارٍ قَال جَاءَ رَجُلٌ إِلَى رَسُولِ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ فَقَالَ إِنِّي أَصَبْتُ امْرَأَةً ذَاتَ حَسَبٍ وَمَنْصِبٍ إِلَّا أَنَّهَا لَا تَلِدُ أَفَأَتَزَوَّجُهَا فَنَهَاهُ ثُمَّ أَتَاهُ الثَّانِيَةَ فَنَهَاهُ ثُمَّ أَتَاهُ الثَّالِثَةَ فَنَهَاهُ فَقَالَ تَزَوَّجُوا الْوَلُودَ الْوَدُودَ فَإِنِّي مُكَاثِرٌ بِكُمْ',
        'indo':
            '“Rasulalloh bersabda nikahkan lah kaum sekalian kepada wanita yang banyak anak, sebab sesungguhnya aku berbangga akan banyaknya kalian (umat yang banyak). (HR. Imam ibn Majah, An-Nasai, Abu Dawud)',
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
          'Hadist Tentang Jodoh',
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
