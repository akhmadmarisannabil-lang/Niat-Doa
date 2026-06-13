import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';

class PernikahanPage extends StatelessWidget {
  const PernikahanPage({super.key});

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
            'عَنِ ابْنِ مَسْعُوْدٍ قَالَ: قَالَ رَسُوْلُ اللهِ ص: يَا مَعْشَرَ الشَّبَابِ مَنِ اسْتَطَاعَ مِنْكُمُ اْلبَاءَةَ فَلْيَتَزَوَّجْ، فَاِنَّهُ اَغَضُّ لِلْبَصَرِ وَ اَحْصَنُ لِلْفَرْجِ. وَ مَنْ لَمْ يَسْتَطِعْ فَعَلَيْهِ بِالصَّوْمِ فَاِنَّهُ لَهُ وِجَاءٌ. الجماعة',
        'indo':
            'Dari Ibnu Mas’ud, ia berkata : Rasulullah SAW bersabda, “Hai para pemuda, barangsiapa diantara kamu yang sudah mampu menikah, maka nikahlah, karena sesungguhnya nikah itu lebih dapat menundukkan pandangan dan lebih dapat menjaga kemaluan. Dan barangsiapa yang belum mampu, maka hendaklah ia berpuasa, karena berpuasa itu baginya (menjadi) pengekang syahwat”.',
      },
      {
        'arabic':
            'عَنْ اَنَسٍ  اَنَّ نَفَرًا مِنْ اَصْحَابِ النَّبِيِّ ص قَالَ بَعْضُهُمْ: لاَ اَتَزَوَّجُ. وَ قَالَ بَعْضُهُمْ: اُصَلِّى وَ لاَ اَنَامُ. وَ قَالَ بَعْضُهُمْ: اَصُوْمُ وَ لاَ اُفْطِرُ، فَبَلَغَ ذلِكَ النَّبِيَّ ص فَقَالَ: مَا بَالُ اَقْوَامٍ قَالُوْا كَذَا وَ كَذَا. لكِنّى اَصُوْمُ وَ اُفْطِرُ وَ اُصَلِّى وَ اَنَامُ وَ اَتَزَوَّجُ النّسَاءَ، فَمَنْ رَغِبَ عَنْ سُنَّتِى فَلَيْسَ مِنّى. احمد و البخارى و مسلم',
        'indo':
            'Dan dari Anas, bahwasanya ada sebagian shahabat Nabi SAW yang berkata, “Aku tidak akan kawin”. Sebagian lagi berkata, “Aku akan shalat terus-menerus dan tidak akan tidur”. Dan sebagian lagi berkata, “Aku akan berpuasa terus-menerus”. Kemudian hal itu sampai kepada Nabi SAW, maka beliau bersabda, “Bagaimanakah keadaan kaum itu, mereka mengatakan demikian dan demikian ?. Padahal aku berpuasa dan berbuka, shalat dan tidur, dan akupun mengawini wanita. Maka barangsiapa yang tidak menyukai sunnahku, bukanlah dari golonganku”.',
      },
      {
        'arabic':
            'عَنْ سَعْدِ بْنِ اَبِى وَقَّاصٍ قَالَ: رَدَّ رَسُوْلُ اللهِ ص عَلَى عُثْمَانَ بْنِ مَظْعُوْنٍ التَّبَتُّلَ وَ لَوْ اَذِنَ لَهُ َلاخْتَصَيْنَا. احمد و البخارى و مسلم',
        'indo':
            'Dan Sa’ad bin Abu Waqqash ia berkata, “Rasulullah SAW pernah melarang ‘Utsman bin Madh’un membujang dan kalau sekiranya Rasulullah mengijinkannya tentu kami berkebiri”.',
      },
      {
        'arabic':
            'عَنْ قَتَادَةَ عَنِ اْلحَسَنِ عَنْ سَمُرَةَ اَنَّ النَّبِيَّ ص نَهَى عَنِ التَّبَتُّلِ، وَ قَرَأَ قَتَادَةُ { وَ لَقَدْ اَرْسَلْنَا رُسُلاً مّنْ قَبْلِكَ وَ جَعَلْنَا لَهُمْ اَزْوَاجًا وَّ ذُرّيَّةً. الرعد:38} الترمذى و ابن ماجه',
        'indo':
            'Dari Qatadah dari Hasan dari Samurah, bahwa sesungguhnya Nabi SAW melarang membujang, dan Qatadah membaca ayat, “Dan sesungguhnya Kami telah mengutus beberapa Rasul sebelum kamu dan Kami memberikan kepada mereka isteri-isteri dan keturunan”. (Ar-Ra’d : 38). [HR. Tirmidzi dan Ibnu Majah]',
      },
      {
        'arabic':
            'عَنْ اَنَسٍ رض اَنَّ رَسُوْلَ اللهِ ص قَالَ: مَنْ رَزَقَهُ اللهُ امْرَأَةً صَالِحَةً فَقَدْ اَعَانَهُ عَلَى شَطْرِ دِيْنِهِ، فَلْيَتَّقِ اللهَ فِى الشَّطْرِ اْلبَاقِى. الطبرانى فى الاوسط و الحاكم. و قال الحاكم صحيح الاسناد',
        'indo':
            'Dari Anas RA, bahwasanya Rasulullah SAW telah bersabda, “Barangsiapa yang Allah telah memberi rezqi kepadanya berupa istri yang shalihah, berarti Allah telah menolongnya pada separo agamanya. Maka bertaqwalah kepada Allah untuk separo sisanya”.',
      },
      {
        'arabic': 'لَمْ نَرَ لِلْمُتَحَابَّيْنِ مِثْلُ النِّكَاحِ',
        'indo':
            '\"Kami tidak melihat (cinta sejati) bagi dua orang yang saling mencintai seperti dalam pernikahan\". (Sunan Ibnu Majah)',
      },
      {
        'arabic':
            'ثَلَاثَةٌ حَقٌّ عَلَى اللَّهِ عَوْنُهُمْ: المُجَاهِدُ فِي سَبِيلِ اللَّهِ، وَالمُكَاتَبُ الَّذِي يُرِيدُ الأَدَاءَ، وَالنَّاكِحُ الَّذِي يُرِيدُ العَفَافَ  [سنن الترمذي: حسنه الألباني]',
        'indo':
            '\"Ada tiga golongan yang berhak mendapat pertolongan dari Allah; Mujahid di jalan Allah, Mukaatib yang ingin melunasi utangnya, dan orang yang menikah supaya terjaga dari maksiat\". (Sunan Tirmidzi)',
      },
      {
        'arabic':
            'إِنَّ الْمَرْأَةَ تُقْبِلُ فِي صُورَةِ شَيْطَانٍ، وَتُدْبِرُ فِي صُورَةِ شَيْطَانٍ، فَإِذَا أَبْصَرَ أَحَدُكُمُ امْرَأَةً فَلْيَأْتِ أَهْلَهُ، فَإِنَّ ذَلِكَ يَرُدُّ مَا فِي نَفْسِهِ',
        'indo':
            '\"Sesungguhnya wanita itu menghadap dari depan dalam bentuk setan dan membelakang dalam bentuk setan, maka jika seseorang dari kalian melihat wanita maka hendaklah ia mendatangi istrinya, karena hal itu akan manghilangkan apa yang ada dalam dirinya (dari hawa nafsu).\"',
      },
      {
        'arabic':
            'عَنْ سَهْلِ بْنِ سَعْدٍ السَّاعِدِيِّ قَالَ جَاءَتِ امْرَأَةٌ إِلَى رَسُوْلُ اللَّهِ صَلّى للَّه عَلَيْهِ وَسَلَّمُ فَقَالَتْ يَا رَسُوْلُ اللَّهِ جِئْتُ لِأَ هَبَ لَكَ نَفْسِى قَالَ فَنَظَرَ إِلَيْهَا رَسُوْلُ اللَّهِ صَلّى للَّه عَلَيْهِ وَسَلَّمُ فَصَعَّدَ النَّظَرَ فِيْهَا وَصَوَّبَهُ ثُمَّ طَأْ طَأً رَسُوْلُ اللَّهِ صَلّى للَّه عَلَيْه وَسَلَّمُ رَأْسَهُ فَلَمَّ رَأَتِ الْمَرْأَةُ اَنَّهُ لَمْ يَقْضِ فِيْهَا شَيْأً جَلَسَتْ فَقَامَ رَجُلٌ مِنْ اَصْحَابِهِ فَقَالَ يَا رَسُوْلُ اللَّهِ اِنْ لَمْ يَكُنْ لَكَ بِهَا حَاجَاةٌ فَزَوِّجْنِيْهَا فَقَالَ وَهَلْ عِنْدَكَ مِنْ شَيْئٍ ؟ قَالَ لاَوَاللَّهِ يَارَسُوْلَ اللَّهِ, فَقَالَ اذْهَبْ إِلَى أَهْلِكَ فَانْظُرْ هَلْ تَجِدُ شَيْأً فَذَهَبَ ثُمَّ رَجَعَ فَقَالَ لاَ وَاللَّهِ مَا وَجَدْتُ شَيْأً , فَقَال رَسُوْلَ اللَّه صَلّى للَّه عَلَيْهِ وَسَلَّمُ انْظُرْ وَلَوْ خَاتَمًا مِنْ حَدِيْدٍ فَذَهَبَ ثُمَّ رَجَعَ لاَ وَاللَّهِ يَارَسُوْلَ اللَّهِ وَلاَخَاتَمًا مِنْ حَدِيْدٍ وَلَكِنْ هَذَا إِزَارِى (قَالَ سَهْلٌ مَالَهُ رِدَاءٌ) فَلَهَا نِصْفُهُ. فَقَالَ رَسُوْلُ اللَّهِ صَلّى للَّه عَلَيْهِ وَسَلَّمُ مَاتَصْنَعُ بِإِزَارِكَ ؟ إِنْ لَبِسْتَهُ لَمْ يَكُنْ عَلَيْهَا مِنْهُ شَيْئٌ,وَإِنْ لَبِسْتَهُ لَمْ يَكُنْ عَلَيْكَ شَيْئٌ, فَجَلَسَ الرَّجُلُ حَتَّى اِذَا طَالَ مَجْلِسُهُ. ثُمَّ قَامَ , فَرَاَهُ رَسُوْلُ اللَّهِ صَلّى للَّه عَلَيْهِ وَسَلَّمُ مُوَلِّيًا فَأَمَرَبِهِ فَدُعِىَ فَلَمَّا جَاءَ قَلَ مَاذَا مَعَكَ مِنَ الْقُرْاَنِ قَالَ مَعِىَ سُوْرَةُ كَذَا وَسُوْرَةُ كَذَا عَدَّدَهَا فَقَالَ تَقْرَأُهُنَّ عَنْ ظَهْرِ قَلْبِكَ قَالَ نَعَمْ قَالَ اذْهَبْ فَقَدْ مَلَكْتُكَهَا بِمَا مَعَكَ مِنَ الْقُرْاَنِ . ',
        'indo':
            'Dari Sahl bin as-Sa\'idi r.a.,katanya : Ada seorang wanita datang kepada Rasulullah saw. dengan berkata \"Ya Rasulullah! Saya datang untuk menyerahkan diri kepada tuan (untuk dijadikan isteri).\" Rasul memandang wanita itu dengan teliti, lalu beliau menekurkan kepala. Ketika wanita itu menyadari bahwa Rasul tidak tertarik kepadanya, maka ia pun duduk. Lalu salah seorang sahabat beliau berdiri dan berkata. \"Ya Rasulullah! seandainya tuan tidak membutuhkannya, kawinkanlah dia dengan saya.\" Rasul bertanya \"Adakah engkau mempunyai sesuatu?\" Jawab orang itu. \"Demi Allah, tidak ada apa-apa, ya Rasulullah.\" Rasul berkata, \"Pergilah kepada sanak keluargamu! Mudah-mudahan engkau memperoleh apa-apa.\" Lalu orang itu pergi. Setelah kembali, ia berkata, \"Demi Allah, tidak apa-apa.\" Rasul berkata, \"Carilah walaupun sebuah cincin besi!\". Orang itu pergi, kemudian kembali pula. Ia berkata, \"Demi Allah, ya Rasulullah, cincin besi pun tidak ada. Tetapi saya ada mempunyai sarung yang saya pakai ini. (Menurut Sa\'d, ia tidak punya kain selain dari yang dipakainya itu). Wanita itu boleh mengambil sebagian dari padanya.\" Rasul berkata, \"Apa yang engkau lakukan dengan sarungmu itu. Kalau engkau pakai, tentu ia tidak berpakaian, dan kalau ia yang memakainya, engaku tidak berpakaian.\" Lalu orang itu pun duduk. Lama ia termenung. Kemudian ia pergi. Ketika Rasul melihatnya pergi, beliau menyuruh agar orang itu kembali. Setelah ia datang, beliau bertanya, \"Adakah engaku menghafal Qur\'an?\". Orang itu menjawab, \"Saya hafal surat ini dan itu.\" Ia lalu menyebutkan nama beberapa surat dalam Al-Qur\'an. Rasul bertanya lagi, \"Kamu dapat membacanya di luar kepala?\" \"Ya,\" jawab orang itu. \"Pergilah, engkau saya kawinkan dengan wanita ini dengan Al-Qur\'an yang engkau hafal itu.\"',
      },
      {
        'arabic':
            'خَيْرُ الصَّدَاقِ أَيْسَرُهُ أَيْ أَسْهَلُهُ عَلَى الرَّجُلِ',
        'indo':
            '“Sebaik-baik maskawin ialah yang melapangkan suami atau memudahkan bagi seorang laki-laki (yang akn menikahinya).',
      },
      {
        'arabic':
            '" إِنَّ الرَّجُلَ إِذَا سَقَى امْرَأَتَهُ مِنَ الْمَاءِ أُجِرَ " [مسند أحمد: حسن]',
        'indo':
            '\"Sesungguhnya seorang suami jika memberi menum istrinya seteguk air akan diberi pahala\" \'Irbadh berkata: Maka aku datangi istriku lalu aku beri minum kemudian aku sampaikan padanya apa yang aku dengar dari Rasulullah.dan uang yang dinafkahkan untuk sahabatnya berperang di jalan Allah\". [Sahih Muslim]',
      },
      {
        'arabic': 'خِيَارُكُمْ خِيَارُكُمْ لِنِسَائِهِمْ [سنن ابن ماجه: صحيح]',
        'indo':
            '\"Yang terbaik dari kalian adalah yang paling baik kepada istrinya\". [Sunan Ibnu Majah: Sahih]',
      },
      {
        'arabic':
            'وَعَنْهُ قَالَ : ( كَانَ رَسُولُ اَللَّهِ صلى الله عليه وسلم يَأْمُرُ بِالْبَاءَةِ , وَيَنْهَى عَنِ التَّبَتُّلِ نَهْيًا شَدِيدًا , وَيَقُولُ : تَزَوَّجُوا اَلْوَدُودَ اَلْوَلُودَ إِنِّي مُكَاثِرٌ بِكُمُ اَلْأَنْبِيَاءَ يَوْمَ اَلْقِيَامَةِ ) رَوَاهُ أَحْمَدُ , وَصَحَّحَهُ اِبْنُ حِبَّانَ',
        'indo':
            'Anas Ibnu Malik Radliyallaahu ‘anhu berkata: Rasulullah Shallallaahu ‘alaihi wa Sallam memerintahkan kami berkeluarga dan sangat melarang kami membujang. Beliau bersabda: “Nikahilah perempuan yang subur dan penyayang, sebab dengan jumlahmu yang banyak aku akan berbangga di hadapan para Nabi pada hari kiamat.”',
      },
      {
        'arabic':
            'وَعَنْ أَبِي هُرَيْرَةَ رضي الله عنه عَنِ النَّبِيِّ صلى الله عليه وسلم قَالَ : ( تُنْكَحُ اَلْمَرْأَةُ لِأَرْبَعٍ : لِمَالِهَا , وَلِحَسَبِهَا , وَلِجَمَالِهَا , وَلِدِينِهَا , فَاظْفَرْ بِذَاتِ اَلدِّينِ تَرِبَتْ يَدَاكَ ) مُتَّفَقٌ عَلَيْهِ مَعَ بَقِيَّةِ اَلسَّبْعَةِ',
        'indo':
            'Dari Abu Hurairah Radliyallaahu ‘anhu bahwa Nabi Shallallaahu ‘alaihi wa Sallam bersabda: “Perempuan itu dinikahi karena empat hal, yaitu: harta, keturunan, kecantikan, dan agamanya. Dapatkanlah wanita yang taat beragama, engkau akan berbahagia.” Muttafaq Alaihi.',
      },
      {
        'arabic':
            'وَعَنْهُ ; أَنَّ اَلنَّبِيَّ صلى الله عليه وسلم كَانَ إِذَا رَفَّأَ إِنْسَانًا إِذَا تَزَوَّجَ قَالَ : ( بَارَكَ اَللَّهُ لَكَ , وَبَارَكَ عَلَيْكَ , وَجَمَعَ بَيْنَكُمَا فِي خَيْرٍ ) رَوَاهُ أَحْمَدُ , وَالْأَرْبَعَةُ , وَصَحَّحَهُ اَلتِّرْمِذِيُّ , وَابْنُ خُزَيْمَةَ , وَابْنُ حِبَّانَ',
        'indo':
            'Dari Abu Hurairah Radliyallaahu ‘anhu bahwa Nabi Shallallaahu ‘alaihi wa Sallam bila mendoakan seseorang yang nikah, beliau bersabda: “Semoga Allah memberkahimu dan menetapkan berkah atasmu, serta mengumpulkan engkau berdua dalam kebaikan.”',
      },
      {
        'arabic':
            'إِنَّ نَفَقَتَكَ عَلَى عِيَالِكَ صَدَقَةٌ، وَإِنَّ مَا تَأْكُلُ امْرَأَتُكَ مِنْ مَالِكَ صَدَقَةٌ [صحيح البخاري ومسلم]',
        'indo':
            '\"Sesungguhnya nafkahmu terhadap keluargamu adalah sedekah, dan sesungguhnya apa yang dimakan isterimu dari hartamu adalah sedekah\". [Sahih Bukhari dan Muslim]',
      },
      {
        'arabic':
            '«دِينَارٌ أَنْفَقْتَهُ فِي سَبِيلِ اللهِ وَدِينَارٌ أَنْفَقْتَهُ فِي رَقَبَةٍ، وَدِينَارٌ تَصَدَّقْتَ بِهِ عَلَى مِسْكِينٍ، وَدِينَارٌ أَنْفَقْتَهُ عَلَى أَهْلِكَ، أَعْظَمُهَا أَجْرًا الَّذِي أَنْفَقْتَهُ عَلَى أَهْلِكَ» [صحيح مسلم]',
        'indo':
            '\"Dinar (uang) yang kau infakkan di jalan Allah, dan dinar yang kau infakkan untuk memerdekakan budak, dan dinar yang kau sedekahkan kepada orang miskin, dan dinar yang kau nafkahkan kepada keluargamu, yang paling besar pahalanya adalah yang kau nafkahkan kepada keluargamu\". [Sahih Muslim]',
      },
      {
        'arabic':
            '«أَفْضَلُ دِينَارٍ يُنْفِقُهُ الرَّجُلُ، دِينَارٌ يُنْفِقُهُ عَلَى عِيَالِهِ، وَدِينَارٌ يُنْفِقُهُ الرَّجُلُ عَلَى دَابَّتِهِ فِي سَبِيلِ اللهِ، وَدِينَارٌ يُنْفِقُهُ عَلَى أَصْحَابِهِ فِي سَبِيلِ اللهِ» [صحيح مسلم]',
        'indo':
            '\"Uang terbaik yang dinafkahkan oleh seorang laki-laki adalah uang yang dinafkahkan untuk keluarganya, uang yang dinafkahkan seorang laki-laki untuk kendaraannya berperang di jalan Allah,\"  ',
      },
      {
        'arabic':
            'وَلِمُسْلِمٍ : عَنْ أَبِي هُرَيْرَةَ رضي الله عنه ( أَنَّ اَلنَّبِيَّ صلى الله عليه وسلم قَالَ لِرَجُلٍ تَزَوَّجَ اِمْرَأَةً : أَنَظَرْتَ إِلَيْهَا ? قَالَ : لَا . قَالَ : اِذْهَبْ فَانْظُرْ إِلَيْهَا )',
        'indo':
            'Menurut riwayat Muslim dari Abu Hurairah bahwa Nabi Shallallaahu ‘alaihi wa Sallam pernah bertanya kepada seseorang yang akan menikahi seorang wanita: “Apakah engkau telah melihatnya?” Ia menjawab: Belum. Beliau bersabda: “Pergi dan lihatlah dia.”',
      },
      {
        'arabic':
            'وَعَنِ ابْنِ عُمَرَ – رَضِيَ اَللَّهُ عَنْهُمَا- قَالَ : قَالَ رَسُولُ اَللَّهِ صلى الله عليه وسلم ( لَا يَخْطُبْ بَعْضُكُمْ عَلَى خِطْبَةِ أَخِيهِ , حَتَّى يَتْرُكَ اَلْخَاطِبُ قَبْلَهُ , أَوْ يَأْذَنَ لَهُ اَلْخَاطِبُ ) مُتَّفَقٌ عَلَيْهِ , وَاللَّفْظُ لِلْبُخَارِيِّ',
        'indo':
            'Dari Ibnu Umar Radliyallaahu ‘anhu bahwa Rasulullah Shallallaahu ‘alaihi wa Sallam bersabda: “Janganlah seseorang di antara kamu melamar seseorang yang sedang dilamar saudaranya, hingga pelamar pertama meninggalkan atau mengizinkannya.” Muttafaq Alaihi dan lafadznya menurut Bukhari.',
      },
      {
        'arabic':
            'وَعَنْ أَبِي بُرْدَةَ بْنِ أَبِي مُوسَى , عَنْ أَبِيهِ قَالَ : قَالَ رَسُولُ اَللَّهِ صلى الله عليه وسلم ( لَا نِكَاحَ إِلَّا بِوَلِيٍّ ) رَوَاهُ أَحْمَدُ وَالْأَرْبَعَةُ وَصَحَّحَهُ اِبْنُ اَلْمَدِينِيِّ , وَاَلتِّرْمِذِيُّ , وَابْنُ حِبَّانَ , وَأُعِلَّ بِالْإِرْسَالِ',
        'indo':
            'Dari Abu Burdah Ibnu Abu Musa, dari ayahnya Radliyallaahu ‘anhu bahwa Rasulullah Shallallaahu ‘alaihi wa Sallam bersabda: “Tidak sah menikah kecuali dengan wali.”',
      },
      {
        'arabic':
            'وَعَنْ عَائِشَةَ رَضِيَ اَللَّهُ عَنْهَا قَالَتْ : قَالَ رَسُولُ اَللَّهِ صلى الله عليه وسلم ( أَيُّمَا اِمْرَأَةٍ نَكَحَتْ بِغَيْرِ إِذْنِ وَلِيِّهَا, فَنِكَاحُهَا بَاطِلٌ, فَإِنْ دَخَلَ بِهَا فَلَهَا اَلْمَهْرُ بِمَا اِسْتَحَلَّ مِنْ فَرْجِهَا, فَإِنِ اشْتَجَرُوا فَالسُّلْطَانُ وَلِيُّ مَنْ لَا وَلِيَّ لَهُ ) أَخْرَجَهُ اَلْأَرْبَعَةُ إِلَّا النَّسَائِيَّ, وَصَحَّحَهُ أَبُو عَوَانَةَ , وَابْنُ حِبَّانَ وَالْحَاكِمُ',
        'indo':
            'Dari ‘Aisyah Radliyallaahu ‘anhu bahwa Rasulullah Shallallaahu ‘alaihi wa Sallam bersabda: “Perempuan yang nikah tanpa izin walinya, maka nikahnya batil. Jika sang laki-laki telah mencampurinya, maka ia wajib membayar maskawin untuk kehormatan yang telah dihalalkan darinya, dan jika mereka bertengkar maka penguasa dapat menjadi wali bagi wanita yang tidak mempunyai wali.”',
      },
      {
        'arabic': 'وَمَنْ كانَ ذَا طَوْلٍ فَلْيَنْكِحْ',
        'indo':
            '“Barang siapa yang mempunyai kekayaan maka hendaklah ia menikah. (HR. Ibnu Majah)',
      },
      {
        'arabic':
            'يَا مَعْشَرَ الشَّبَابِ مَنْ اسْتَطَاعَ مِنْكُمْ الْبَاءَةَ فَلْيَتَزَوَّجْ فَإِنَّهُ أَغَضُ\\ّ لِلْبَصَرِ وَأَحْصَنُ لِلْفَرْجِ',
        'indo':
            '“Wahai para pemuda, barang siapa dari kalian yang mampu ongkos nikah, maka hendaklah ia menikah, karena itu lebih bisa memejamkan mata dan menjaga farji” (HR. Bukhari dan Muslim)',
      },
      {
        'arabic':
            'ثَلَاثٌ لَا تُؤَخِّرْهَا الصَّلَاةُ إِذَا أَتَتْ وَالْجَنَازَةُ إِذَا حَضَرَتْ وَالْأَيِّمُ إِذَا وَجَدْتَ لَهَا كُفْئًا',
        'indo':
            '“Janganlah kamu mengakhirkan tiga hal, yaitu shalat ketika sudah datang waktunya, jenazah ketika telah hadir, dan wanita yang belum punya bersuami ketika ia telah menemukan laki-laki yang sepadan”. (HR. Tirmidzi)',
      },
      {
        'arabic':
            'العَجَلَةُ مِنَ الشَّيْطَانِ إِلاَّ فِيْ خَمْسَةٍ فَإِنَّهَا مِنْ سُنَّةِ رَسُولِ الله صَلَّى الله عَلَيْهِ وَسَلَّمَ إِطْعَامِ الضَّيْفِ وَتَجْهِيْزِ المَيِّتِ وَتَزْوِيْجِ البِكْرِ وَقَضَاءِ الدَّيْنِ وَالتَّوْبَةِ مِنَ الذَّنْبِ',
        'indo':
            '“Tergesa-gesa itu dari syaitan kecuali dalam lima perkara, maka itu dari sunnah Rasulullah shallallahu ‘alaihi wasallam, yaitu memberi makan tamu, mengurus jenazah, menikahkan perawan (yang tak beristeri/bersuami), membayar hutang, dan bertaubat dari dosa”.',
      },
      {
        'arabic':
            'أَيُّمَا شَابٌّ تَزَوَّجَ فِي حَدَاثَةِ سِنِّهِ ، عَجَّ شَيْطَانُهُ : يَا وَيْلَهُ يَا وَيْلَهُ ، عَصَمَ مِنِّي دِينَهُ',
        'indo':
            '“Siapapun pemuda yang menikah diusia mudanya, maka setan berteriak: “Aduh, hancur diriku! Aduh, hancurnya aku! Dia telah menjaga agamanya dariku”.',
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
          'Hadist Tentang Pernikahan',
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
