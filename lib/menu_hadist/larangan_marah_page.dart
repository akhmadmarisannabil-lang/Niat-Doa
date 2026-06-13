import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';

class LaranganMarahPage extends StatelessWidget {
  const LaranganMarahPage({super.key});

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
            'عَنْ حُمَيْدِ بْنِ عَبْدِ الرَّحْمنِ عَنْ رَجُلٍ مِنْ اَصْحَابِ النَّبِيّ ص قَالَ: قَالَ رَجُلٌ: يَا رَسُوْلَ اللهِ، اَوْصِنِى. قَالَ: لاَ تَغْضَبْ. قَالَ: قَالَ الرَّجُلُ: فَفَكَّرْتُ حِيْنَ قَالَ النَّبِيُّ ص مَا قَالَ. فَاِذَا اْلغَضَبُ يَجْمَعُ الشَّرَّ كُلَّهُ. احمد',
        'indo':
            'Artinya : Dari Humaid bin Abdurrahman dari seorang shahabat Nabi SAW, ia berkata : Ada seorang laki-laki berkata, "Ya Rasulullah, nasehatilah saya". Rasulullah SAW bersabda, "Jangan marah". (Perawi) berkata : Lalu orang laki-laki itu berkata, "Kemudian saya berfikir ketika Nabi SAW menyabdakan apa yang beliau nasehatkan itu, jika demikian marah itu mengumpulkan kejahatan seluruhnya". [HR. Ahmad]',
      },
      {
        'arabic':
            'عَنْ سُلَيْمَانَ بْنِ صُرَدٍ قَالَ: اِسْتَبَّ رَجُلاَنِ عِنْدَ النَّبِيّ ص وَ نَحْنُ عِنْدَهُ جُلُوْسٌ وَ اَحَدُهُمَا يَسُبُّ صَاحِبَهُ مُغْضَبًا قَدِ احْمَرَّ وَجْهُهُ. فَقَالَ النَّبِيُّ ص: اِنّيْ َلاَعْلَمُ كَلِمَةً لَوْ قَالَهَا لَذَهَبَ عَنْهُ مَا يَجِدُ، لَوْ قَالَ: اَعُوْذُ بِاللهِ مِنَ الشَّيْطَانِ الرَّجِيْمِ. فَقَالُوْا لِلرَّجُلِ: اَلاَ تَسْمَعُ مَا يَقُوْلُ النَّبِيُّ ص قَالَ: اِنّى لَسْتُ بِمَجْنُوْنٍ. البخارى',
        'indo':
            'Dari Sulaiman bin Shurad, ia berkata : Ketika kami duduk di sisi Nabi SAW, ada dua orang saling mencaci. Lalu salah seorang diantara keduanya menjadi marah, merah mukanya. Kemudian Nabi SAW bersabda, "Sesungguhnya aku mengetahui suatu kalimat seandainya ia mau mengucapkannya pastilah hilang marah itu darinya, seandainya ia mengucapkan : A\'uudzu billaahi minasy-syaithoonir rojiim (Aku berlindung kepada Allah dari godaan syetan yang terkutuk)". Kemudian orang-orang berkata kepada laki-laki tersebut, "Tahukah kamu apa yang disabdakan oleh Nabi SAW tadi ?". Orang yang marah itu menjawab, "Aku ini tidak gila !". [HR. Bukhari juz 7, hal. 99]',
      },
      {
        'arabic':
            'عَنْ أَبِي هُرَيْرَةَ رَضِيَ اللهُ عَنْهُ أَنَّ رَجُلاً قَالَ لِلنَّبِيِّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: أَوْصِنِي، قَالَ : لاَ تَغْضَبْ فَرَدَّدَ مِرَاراً، قَالَ: لاَ تَغْضَبْ [رواه البخاري]',
        'indo':
            'Artinya : Dari Abu Hurairah radhiallahuanhu sesungguhnya seseorang bertanya kepada Rasulullah sholallohu ‘alaihi wa sallam : (Ya Rasulullah) nasihatilah saya. Beliau bersabda : Jangan kamu marah. Beliau menanyakan hal itu berkali-kali. Maka beliau bersabda : Jangan engkau marah (Riwayat Bukhori )',
      },
      {
        'arabic':
            'عَنْ اَبِى الدَّرْدَاءِ قَالَ: قُلْتُ  يَا رَسُوْلَ اللهِ، دُلَّنِيْ عَلَى عَمَلٍ يُدْخِلُنِى اْلجَنَّةَ. قَالَ رَسُوْلُ اللهِ ص: لاَ تَغْضَبْ. وَ لَكَ اْلجَنَّةُ. الطبرانى فى الاوسط رقم',
        'indo':
            'Dari Abu Darda\', ia berkata : Ada seorang laki-laki berkata kepada Rasulullah SAW, "Ya Rasulullah, tunjukkanlah kepada saya atas suatu amal yang bisa memasukkan saya ke surga". Rasulullah SAW bersabda, "Jangan marah, maka bagimu surga". [HR. Thabarani dalam Al-Ausath no 2353]',
      },
      {
        'arabic':
            'عَنْ سَعِيْدِ بْنِ اْلمُسَيَّبِ اَنَّهُ قَالَ: بَيْنَمَا رَسُوْلُ اللهِ ص جَالِسٌ وَ مَعَهُ اَصْحَابُهُ وَقَعَ رَجُلٌ بِاَبِى بَكْرٍ فَآذَاهُ. فَصَمَتَ عَنْهُ اَبُوْ بَكْرٍ، thُمَّ آذَاهُ الثَّانِيَةَ، فَصَمَتَ عَنْهُ اَبُوْ بَكْرٍ. ثُمَّ آذَاهُ الثَّالِثَةَ، فَانْتَصَرَ مِنْهُ اَبُوْ بَكْرٍ، فَقَامَ رَسُوْلُ اللهِ ص حِيْنَ انْتَصَرَ اَبُوْ بَكْرٍ. فَقَالَ اَبُوْ بَكْرٍ: اَوَجَدْتَ عَلَيَّ يَا رَسُوْلَ اللهِ؟ فَقَالَ رَسُوْلُ اللهِ ص: نَزَلَ مَلَكٌ مِنَ السَّمَاءِ يُكَذّبُهُ بِمَا قَالَ لَكَ. فَلَمَّا انْتَصَرْتَ وَقَعَ الشَّيْطَانُ فَلَمْ اَكُنْ ِلاَجْلِسَ اِذْ وَقَعَ الشَّيْطَانُ. ابو داود          رقم',
        'indo':
            'Dari Sa’id bin Musayyab, bahwasanya ia berkata, "Pernah suatu ketika Rasulullah SAW sedang duduk bersama shahabat-sahabatnya, lalu ada seorang laki-laki yang mencaci dan menyakiti Abu Bakar, tetapi Abu Bakar diam saja. Kemudian ia menyakitinya yang kedua kali, tetapi Abu Bakar masih diam saja. Lalu ia menyakitinya yang ketiga kali, lalu Abu Bakar membalasnya. Maka Rasulullah SAW berdiri ketika Abu Bakar membalasnya, lalu Abu Bakar bertanya, "Apakah engkau marah kepadaku, ya Rasulullah ?". Rasulullah SAW bersabda, "Tadi malaikat turun dari langit seraya mendustakan apa yang ia katakan terhadapmu, tetapi setelah engkau membalasnya, syaithan lalu duduk di situ, maka tidaklah pantas aku duduk karena syaithan duduk di situ". [HR. Abu Dawud juz 4, hal. 274, no. 4896]',
      },
      {
        'arabic':
            'عَنْ عَبْدِ اللهِ بْنِ عَمْرٍو اَنَّهُ سَأَلَ رَسُوْلَ اللهِ ص: مَاذَا يُبَاعِدُنِى مِنْ غَضَبِ اللهِ عَزَّ وَ جَلَّ؟ قَالَ: لاَ تَغْضَبْ. احمد',
        'indo':
            'Artinya:Dari ‘Abdullah bin ‘Amr, bahwasanya ia bertanya kepada Rasulullah SAW, “Ya Rasulullah, apa yang bisa menjauhkan saya dari murka Allah ‘Azza wa Jalla ?”. Rasulullah SAW bersabda, “Jangan marah”. [HR. Ahmad juz 2, hal. 175]',
      },
      {
        'arabic':
            'عَنْ اَبِى وَائِلٍ اْلقَاصّ قَالَ: دَخَلْنَا عَلَى عُرْوَةَ بْنِ مُحَمَّدٍ السَّعْدِيّ فَكَلَّمَهُ رَجُلٌ فَأَغْضَبَهُ، فَقَامَ فَتَوَضَّأَ، فَقَالَ: حَدَّثَنِى اَبِيْ عَنْ جَدّيْ عَطِيَّةَ قَالَ: قَالَ رَسُوْلُ اللهِ ص: اِنَّ اْلغَضَبَ مِنَ الشَّيْطَانِ. وَ اِنَّ الشَّيْطَانَ خُلِقَ مِنَ النَّارِ. وَ اِنَّمَا تُطْفَأُ النَّارُ بِاْلمَاءِ، فَاِذَا غَضِبَ اَحَدُكُمْ فَلْيَتَوَضَّأْ. ابو داود رقم',
        'indo':
            'Dari Abu Wail Al-Qaashsh, ia berkata, "Saya pernah datang kepada \'Urwah bin Muhammad As-Sa\'diy, lalu ada seorang laki-laki yang berbicara kepadanya yang membuatnya marah, maka ia bangkit lalu berwudlu. (Setelah berwudlu) kemudian ia berkata : Ayahku mencerita-kan kepadaku dari kakekku yaitu \'Athiyah, ia berkata : Rasulullah SAW bersabda, "Sesungguhnya marah itu dari syetan dan sesungguhnya syetan itu diciptakan dari api, dan hanyasanya api itu dipadamkan dengan air, maka apabila salah seorang diantara kalian marah hendaklah ia berwudlu". [HR. Abu Dawud juz 4, hal. 249, no. 4784]',
      },
      {
        'arabic':
            'عَنْ اَبِى ذَرّ قَالَ: اِنَّ رَسُوْلَ اللهِ ص قَالَ لَنَا: اِذَا غَضِبَ اَحَدُكُمْ وَ هُوَ قَائِمٌ فَلْيَجْلِسْ، فَاِنْ ذَهَبَ عَنْهُ اْلغَضَبُ. وَ اِلاَّ فَلْيَضْطَجِعْ. ابو داود رقم',
        'indo':
            'Dari Abu Dzarr, ia berkata : Sesungguhnya Rasulullah SAW bersabda kepada kami, "Apabila salah seorang diantara kalian marah dalam keadaan berdiri maka hendaklah ia duduk, niscaya akan hilang marahnya. Dan jika belum hilang marahnya, maka hendaklah ia berbaring (tiduran)". [HR. Abu Dawud juz 4, hal. 249, no. 4782]',
      },
      {
        'arabic': '(إِذَا غَضَبَ اَحَدُكُمْ فَلْيَسْكُتْ (رواه إمام احمد',
        'indo':
            '“Jika di antara kalian marah maka hendaklah ia diam” (HR Imam Ahmad)',
      },
      {
        'arabic': 'لا تغضب ولك الجنة',
        'indo': '“Jangan marah, maka bagimu syurga” (HR.Thabrani)',
      },
      {
        'arabic':
            'عَنْ جَارِيَةَ بْنِ قُدَامَةَ، اَنَّ رَجُلاً قَالَ: يَارَسُوْلَ اللهِ، قُلْ لِيْ قَوْلاً وَ اَقْلِل_ِ عَلَيَّ لَعَلّيْ اَعْقِلُهُ. قَالَ: لاَ تَغْضَبْ. فَاَعَادَ عَلَيْهِ مِرَارًا. كُلُّ ذلِكَ يَقُوْلُ: لاَ تَغْضَبْ',
        'indo':
            'Dari Jariyah bin Qudamah bahwa ada seorang lelaki berkata pada Rasul; “Ya Rasulullah katakan padaku suatu naehat yang ringkas dan semoga aku bisa menjaganya.” Rasul bersabda: “Jangan marah”. Orang itu mengulangi perkataannya dan Rasul tetap bersabda: “Jangan marah.” (HR. Ahmad)',
      },
      {
        'arabic':
            'عَنْ اَبِى الدَّرْدَاءِ قَالَ: قُلْتُ  يَا رَسُوْلَ اللهِ، دُلَّنِيْ عَلَى عَمَلٍ يُدْخِلُنِى اْلجَنَّةَ. قَالَ رَسُوْلُ اللهِ ص: لاَ تَغْضَبْ. وَ لَكَ اْلجَنَّةُ',
        'indo':
            'Dari Abu Darda berkata: Ada seorang lelaki berkata pada Rasul: “Ya Rasulullah, tunjukilah saya akan suatu amal yang bisa memasukkan saya ke surga.” Rasul pun bersabda: “Jangan marah, maka kamu mendapat surga.” (HR. Thabrani)',
      },
      {
        'arabic':
            'عَنْ سَعِيْدِ بْنِ اْلمُسَيَّبِ اَنَّهُ قَالَ: بَيْنَمَا رَسُوْلُ اللهِ ص جَالِسٌ وَ مَعَهُ اَصْحَابُهُ وَقَعَ رَجُلٌ بِاَبِى بَكْرٍ فَآذَاهُ. فَصَمَتَ عَنْهُ اَبُوْ بَكْرٍ، ثُمَّ آذَاهُ الثَّانِيَةَ، فَصَمَتَ عَنْهُ اَبُوْ بَكْرٍ. ثُمَّ آذَاهُ الثَّالِثَةَ، فَانْتَصَرَ مِنْهُ اَبُوْ بَكْرٍ، فَقَامَ رَسُوْلُ اللهِ ص حِيْنَ انْتَصَرَ اَبُوْ بَكْرٍ. فَقَالَ اَبُوْ بَكْرٍ: اَوَجَدْتَ عَلَيَّ يَا رَسُوْلَ اللهِ؟ فَقَالَ رَسُوْلُ اللهِ ص: نَزَلَ مَلَكٌ مِنَ السَّمَاءِ يُكَذّبُهُ بِمَا قَالَ لَكَ. فَلَمَّا انْتَصَرْتَ وَقَعَ الشَّيْطَانُ فَلَمْ اَكُنْ ِلاَجْلِسَ اِذْ وَقَعَ الشَّيْطَانُ',
        'indo':
            'Dari Sa’id bin Musayyab ia berkata: “Pernah ketika Rasul duduk bersama sahabat-sahabat, lalu ada laki-laki yang mencaci dan menyakiti Abu Bakar tapi Abu Bakar hanya diam. Lalu ia menyakitinya kedua kali dan beliau masih diam. Hingga tiga kali lalu Abu Bakar membalasnya. Lalu Rasul berdiri dan Abu Bakar bertanya: “Apakah engkau marah kepadaku, ya Rasulullah? Rasul menjawab: “Tadi malaikat turun dari langit seraya mendustakan apa yang ia katakan kepadamu tapi setelah engkau membalasnya, syetan lalu duduk disitu, maka tidaklah aku pantas duduk karena ada syetan disitu.” (HR. Abu Dawud)',
      },
      {
        'arabic':
            'عَنْ اَبِى هُرَيْرَةَ رض اَنَّ رَجُلاً قَالَ لِلنَّبِيّ ص: اَوْصِنِى، قَالَ: لاَ تَغْضَبْ. فَرَدَّدَ مِرَارًا، قَالَ: لاَ تَغْضَبْ',
        'indo':
            'Dari Abu Hurairah r.a, ia berkata: Sesungguhnya ada seorang laki-laki berkata kepada Nabi Muhammad; “Nasehatilah saya Ya Rasulullah”. Kemudian Rasulullah bersabda; “Jangan marah.” Orang itu mengulanginya hingga berkali-kali dan Nabi bersabda; “Jangan marah”. (HR. Bukhari)',
      },
      {
        'arabic':
            'عَنْ اَبِى هُرَيْرَةَ رض اَنَّ رَسُوْلَ اللهِ ص قَالَ: لَيْسَ الشَّدِيْدُ بِالصُّرَعَةِ. اِنَّمَا الشَّدِيْدُ الَّذِيْ يَمْلِكُ نَفْسَهُ عِنْدَ اْلغَضَبِ',
        'indo':
            'DArtinya : ari Abu Hurairah r.a bahwa Rasul bersabda: “Orang yang kuat itu bukan orang yang kuat dalam bergulat tapi orang yang kuat dalam menahan dirinya ketika marah.” (Hadits riwayat Bukhari)',
      },
      {
        'arabic':
            'عَنْ عَبْدِ اللهِ بْنِ عُمَرَ رض قَالَ: بَيْنَا النَّبِيّ ص يُصَلّى رَأَى فِى قِبْلَةِ اْلمَسْجِدِ نُخَامَةً فَحَكَّهَا بِيَدِهِ فَتَغَيَّظَ ثُمَّ قَالَ: اِنَّ اَحَدَكُمْ اِذَا كَانَ فِى الصَّلاَةِ فَاِنَّ اللهَ حِيَالَ وَجْهِهِ فَلاَ يَتَنَخَّمَنَّ حِيَالَ وَجْهِهِ فِى الصَّلاَةِ',
        'indo':
            'Dari Abdullah bin Umar r.a berkata: “Ketika Nabi Muhammad sedang shalat, beliau melihat dahak di arah kiblat masjid. Maka setelah selesai shalat beliau mengeriknya dengan tangan beliau, kemudian beliau bersabda: “Sesungguhnya seseorang diantara kalian jika sedang shalat, sungguh Allah ada di hadapannya. Maka janganlah sekali-kali berdahak ketika shalat ke arah depannya.” (HR. Bukhari)',
      },
      {
        'arabic':
            'عَنْ اَبِى هُرَيْرَةَ رض اَنَّ رَسُوْلَ اللهِ ص قَالَ: لَيْسَ الشَّدِيْدُ بِالصُّرَعَةِ. اِنَّمَا الشَّدِيْدُ الَّذِيْ يَمْلِكُ نَفْسَهُ عِنْدَ اْلغَضَبِ. البخارى',
        'indo':
            'Dari Abu Hurairah RA, sesungguhnya Rasulullah SAW bersabda, "Orang yang kuat itu bukanlah orang yang kuat dalam bergulat, tetapi orang yang kuat itu ialah orang yang bisa menahan dirinya ketika marah". [HR. Bukhari, HR Muslim]',
      },
      {
        'arabic':
            'عَنْ جَارِيَةَ بْنِ قُدَامَةَ، اَنَّ رَجُلاً قَالَ: يَارَسُوْلَ اللهِ، قُلْ لِيْ قَوْلاً وَ اَقْلِلْ عَلَيَّ لَعَلّيْ اَعْقِلُهُ. قَالَ: لاَ تَغْضَبْ. فَاَعَادَ عَلَيْهِ مِرَارًا. كُلُ_ ذلِكَ يَقُوْلُ: لاَ تَغْضَبْ. احمد',
        'indo':
            'Dari Jariyah bin Qudamah, sesungguhnya ada seorang laki-laki berkata kepada Rasulullah SAW, "Ya Rasulullah, katakanlah kepadaku suatu perkataan (nasehat) dan ringkaskanlah, mudah-mudahan aku bisa menjaganya". Rasulullah SAW bersabda, "Jangan marah". Orang itu mengulangi lagi beberapa kali, masing-masingnya Rasulullah SAW bersabda, "Jangan marah". [HR. Ahmad]',
      },
      {
        'arabic': '',
        'indo':
            'Setelah melihat hadits laranan marah diatas, ada baiknya kita juga mempelajari untuk megendalikan emosi dan amarah sesuai tata cara yan diajarkan oleh Nabi Muhammad SAW. Lalu bagaimana caranya, simak berikut ini cara menahan emosi dan amarah menurut Rasulullah SAW :',
      },
      {
        'arabic': '',
        'indo':
            '1. Membaca Taawudz\n\nHal ini sebagaimana sabda Rasulullah SAW:\n\n"Sungguh saya mengetahui ada satu kalimat, jika dibaca oleh orang ini, marahnya akan hilang. Jika dia membaca taawudz: A-uudzu billahi minas syaithanir rajiim, marahnya akan hilang. (HR. Bukhari dan Muslim)',
      },
      {
        'arabic': '',
        'indo':
            '2. Diam\n\nHal ini berdasarkan hadits Rasulullah SAW berikut ini :\n\n"Jika kalian marah, diamlah." (HR. Ahmad dan Syuaib Al-Arnauth menilai Hasan lighairih).',
      },
      {
        'arabic': '',
        'indo':
            '3. Mengambil posisi lebih rendah\n\nSabda Rasulullah SAW berikut menjelaskan perihal ini :\n\nApabila kalian marah, dan dia dalam posisi berdiri, hendaknya dia duduk. Karena dengan itu marahnya bisa hilang. Jika belum juga hilang, hendak dia mengambil posisi tidur. (HR. Ahmad 21348, Abu Daud 4782 dan perawinya dinilai shahih oleh Syuaib Al-Arnauth).',
      },
      {
        'arabic': '',
        'indo':
            '4. Berwudhu atau mandi\n\nMarah itu berasal dari setan dan setan diciptakan dari api. Berikut sebuah hadist yang menjadi dasarnya :\n\n"Sesungguhnya marah itu dari setan, dan setan diciptakan dari api, dan api bisa dipadamkan dengan air. Apabila kalian marah, hendaknya dia berwudhu. (HR. Ahmad 17985 dan Abu Daud 4784)',
      },
      {
        'arabic': '',
        'indo':
            '5. Ingatlah hadis ini ketika marah\n\nDari Muadz bin Anas Al-Juhani radhiyallahu anhu, Rasulullah shallallahu alaihi wa sallam bersabda,\n\n"Siapa yang berusaha menahan amarahnya, padahal dia mampu meluapkannya, maka dia akan Allah panggil di hadapan seluruh makhluk pada hari kiamat, sampai Allah menyuruhnya untuk memilih bidadari yang dia kehendaki. (HR. Abu Daud, Turmudzi)',
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
          'Hadist Larangan Marah',
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
