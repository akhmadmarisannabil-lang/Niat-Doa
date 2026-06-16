import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';

class RibaPage extends StatelessWidget {
  const RibaPage({super.key});

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
            'عَنْ سَعِيدِ بْنِ زَيْدٍعَنْ النَّبِيِّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ أَنَّهُ قَالَ مِنْ أَرْبَى الرِّبَا الِاسْتِطَالَةُ فِي عِرْضِ مُسْلِمٍ بِغَيْرِ حَقٍّ وَإِنَّ هَذِهِ الرَّحِمَ شِجْنَةٌ مِنْ الرَّحْمَنِ فَمَنْ قَطَعَهَا حَرَّمَ اللَّهُ عَلَيْهِ الْجَنَّةَ',
        'indo':
            'Dari Sa’id bin Zaid dari Nabi shallallahu ‘alaihi wasallam, bahwa beliau bersabda: “Sesungguhnya riba yang paling buruk adalah merusak kehormatan seorang muslim tanpa hak, dan sesungguhnya rahim dijalinkan oleh Ar Rahman, barangsiapa yang memutuskannya niscaya Allah mengharamkan baginya syurga.” (Ahmad, bab Musnad Said bin Zaid, no 1564)',
      },
      {
        'arabic':
            'حَدَّثَنَا أَحْمَدُ بْنُ يُونُسَ، حَدَّثَنَا زُهَيْرٌ، حَدَّثَنَا سِمَاكٌ، حَدَّثَنِي عَبْدُ الرَّحْمَنِ بْنُ عَبْدِ اللَّهِ بْنِ مَسْعُودٍ، عَنْ أَبِيهِ، قَالَ: لَعَنَ رَسُولُ اللَّهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ آكِلَ الرِّبَا، وَمُؤْكِلَهُ وَشَاهِدَهُ وَكَاتِبَهُ',
        'indo':
            'Telah menceritakan kepada kami Ahmad bin Yunus, telah menceritakan kepada kami Zuhair, telah menceritakan kepada kami Simak, telah menceritakan kepadaku Abdurrahman bin Abdullah bin Mas’ud, dari ayahnya, ia berkata; Rasulullah shallallahu ‘alaihi wasallam melaknat orang yang makan riba, orang yang memberi makan riba, saksinya dan penulisnya.(HR. Abu Dawud)',
      },
      {
        'arabic':
            'عَنْ أَبِي هُرَيْرَةَ رَضِيَ اللَّهُ عَنْهُعَنْ النَّبِيِّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ قَالَ اجْتَنِبُوا السَّبْعَ الْمُوبِقَاتِ قَالُوا يَا رَسُولَ اللَّهِ وَمَا هُنَّ قَالَ الشِّرْكُ بِاللَّهِ وَالسِّحْرُ وَقَتْلُ النَّفْسِ الَّتِي حَرَّمَ اللَّهُ إِلَّا بِالْحَقِّ وَأَكْلُ الرِّبَا وَأَكْلُ مَالِ الْيَتِيمِ وَالتَّوَلِّي يَوْمَ الزَّحْفِ وَقَذْفُ الْمُحْصَنَاتِ الْمُؤْمِنَاتِ الْغَافِلَاتِ',
        'indo':
            'Dari Abu Hurairah radliallahu ‘anhu dari Nabi shallallahu ‘alaihi wasallam bersabda: “Jauhilah tujuh perkara yang membinasakan”. Para sahabat bertanya: “Wahai Rasulullah, apakah itu? Beliau bersabda: “Syirik kepada Allah, sihir, membunuh jiwa yang diharamkan oleh Allah kecuali dengan haq, memakan riba, makan harta anak yatim, kabur dari medan peperangan dan menuduh seorang wanita mu’min yang suci berbuat zina”. (Bukhari, Bab Ramyul Muhsanat, No. 6351)',
      },
      {
        'arabic':
            'الرِبَا ثَلاَثَةٌ وَسَبْعُوْنَ بَابًا أيْسَرُهَا مِثْلُ أَنْ يَنْكِحَ الرُّجُلُ أُمَّهُ وَإِنْ أَرْبَى الرِّبَا عِرْضُ الرَّجُلِ الْمُسْلِمِ',
        'indo':
            'Artinya:“Riba itu ada 73 pintu (dosa). Yang paling ringan adalah semisal dosa seseorang yang menzinai ibu kandungnya sendiri. Sedangkan riba yang paling besar adalah apabila seseorang melanggar kehormatan saudaranya.” (HR. Al Hakim dan Al Baihaqi)',
      },
      {
        'arabic':
            'إِذَا ظَهَرَ الزِّناَ وَالرِّبَا فِي قَرْيَةٍ فَقَدْ أَحَلُّوْا بِأَنْفُسِهِمْ عَذَابَ اللهِ',
        'indo':
            '“Apabila telah marak perzinaan dan praktek ribawi di suatu negeri, maka sungguh penduduk negeri tersebut telah menghalalkan diri mereka untuk diadzab oleh Allah.” (HR. Al Hakim)',
      },
      {
        'arabic':
            'أَخْبَرَنِي عَوْنُ بْنُ أَبِي جُحَيْفَةَ قَالَ رَأَيْتُ أَبِي اشْتَرَى حَجَّامًا فَأَمَرَ بِمَحَاجِمِهِ فَكُسِرَتْ فَسَأَلْتُهُ عَنْ ذَلِكَ قَالَ إِنَّ رَسُولَ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ نَهَى عَنْ ثَمَنِ الدَّمِ وَثَمَنِ الْكَلْبِ وَكَسْبِ الأَمَةِ وَلَعَنَ الْوَاشِمَةَ وَالْمُسْتَوْشِمَةَ وَآكِلَ الرِّبَا وَمُوكِلَهُ وَلَعَنَ الْمُصَوِّرَ',
        'indo':
            'Diriwayatkan oleh Aun bin Abi Juhaifa, “Ayahku membeli seorang budak yang pekerjaannya membekam (mengeluarkan darah kotor dari tubuh), ayahku kemudian memusnahkan peralatan bekam si budak tersebut. Aku bertanya kepada ayah mengapa beliau melakukannya. Ayahku menjawab, bahwa Rasulullah Shallallahu \'alaihi wa sallam melarang untuk menerima uang dari transaksi darah, anjing, dan kasab budak perempuan, beliau juga melaknat pekerjaan pembuat tato dan yang minta ditato, menerima dan memberi riba serta beliau melaknat para pembuat gambar.” (Shahih al-Bukhari no. 2084)',
      },
      {
        'arabic':
            'حَدَّثَنَا عَبْدُالرَّحْمَنِ بْنُ أَبِي بَكْرَةَ عَنْ أَبِيهِ رَضِي اللَّه عَنْهم قَالَ نَهَى النَّبِيُ**ُ صَلَّى اللَّه عَلَيْهِ وَسَلَّمَ عَنِ الْفِضَّةِ بِالْفِضَّةِ وَالذَّهَبِ بِالذَّهَبِ إِلا سَوَاءً بِسَوَاءٍ وَأَمَرَنَا أَنْ نَبْتَاعَ الذَّهَبَ بِالْفِضَّةِ كَيْفَ شِئْنَا وَالْفِضَّةِ بِالذَّهَبِ كَيْفَ شِئْنَا',
        'indo':
            'Diriwayatkan oleh Abdurrahman bin Abu Bakr bahwa ayahnya berkata, “Rasulullah Shallallahu \'alaihi wa sallam melarang penjualan emas dengan emas dan perak dengan perak kecuali sama beratnya, dan membolehkan kita menjual emas dengan perak dan begitu juga sebaliknya sesuai dengan keinginan kita." (Shahih al-Bukhari no. 2034)',
      },
      {
        'arabic':
            'َوَعَنْ اِبْنِ عُمَرَ -رَضِيَ اَللَّهُ عَنْهُمَا- قَالَ: ( نَهَى رَسُولُ اَللَّهِ صلى الله عليه وسلم عَنِ الْمُزَابَنَةِ; أَنْ يَبِيعَ ثَمَرَ حَائِطِهِ إِنْ كَانَ نَخْلاً بِتَمْرٍ كَيْلاً, وَإِنْ كَانَ كَرْماً أَنْ يَبِيعَهُ بِزَبِيبٍ كَيْلاً, وَإِنْ كَانَ زَرْعاً أَنْ يَبِيعَهُ بِكَيْلِ طَعَامٍ, نَهَى عَنْ ذَلِكَ كُلِّهُ ) مُتَّفَقٌ عَلَيْهِ',
        'indo':
            'Ibnu Umar Radliyallaahu \'anhu berkata: Rasulullah Shallallaahu \'alaihi wa Sallam melarang jual-beli muzabanah, yaitu seseorang yang menjual buah kebunnya, jika kurma basah dijual dengan kurma kering bertakar, anggur basah dijual dengan anggur kering bertakar, dan tanaman kering dijual dengan makanan kering bertakar. Beliau melarang itu semua. (Muttafaq Alaihi.)',
      },
      {
        'arabic':
            'عنْ ابْنِ مَسْعُودٍعَنْ النَّبِيِّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ قَالَ مَا أَحَدٌ أَكْثَرَ مِنْ الرِّبَا إِلَّا كَانَ عَاقِبَةُ أَمْرِهِ إِلَى قِلَّةٍ',
        'indo':
            'Artinya:Dari Ibnu Mas’ud dari Nabi shallallahu ‘alaihi wasallam, beliau bersabda: “Tidaklah seseorang yang memperbanyak riba, melainkan akhir perkaranya akan merugi (Ibnu Majah)',
      },
      {
        'arabic':
            'عَنْ سَمُرَةَ بْنِ جُنْدُبٍ رَضِيَ اللَّهُ عَنْهُ قَالَقَالَ النَّبِيُّ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ رَأَيْتُ اللَّيْلَةَ رَجُلَيْنِ أَتَيَانِي فَأَخْرَجَانِي إِلَى أَرْضٍ مُقَدَّسَةٍ فَانْطَلَقْنَا حَتَّى أَتَيْنَا عَلَى نَهَرٍ مِنْ دَمٍ فِيهِ رَجُلٌ قَائِمٌ وَعَلَى وَسَطِ النَّهَرِ رَجُلٌ بَيْنَ يَدَيْهِ حِجَارَةٌ فَأَقْبَلَ الرَّجُلُ الَّذِي فِي النَّهَرِ فَإِذَا أَرَادَ الرَّجُلُ أَنْ يَخْرُجَ رَمَى الرَّجُلُ بِحَجَرٍ فِي فِيهِ فَرَدَّهُ حَيْثُ كَانَ فَجَعَلَ كُلَّمَا جَاءَ لِيَخْرُجَ رَمَى فِي فِيهِ بِحَجَرٍ فَيَرْجِعُ كَمَا كَانَ فَقُلْتُ مَا هَذَا فَقَالَ الَّذِي رَأَيْتَهُ فِي النَّهَرِ آكِلُ الرِّبَا',
        'indo':
            'Dari Samrah bin Jundub radliallahu ‘anhu berkata; Nabi shallallahu ‘alaihi wasallam bersabda: “Pada suatu malam aku mimpi dua orang menemuiku lalu keduanya membawa aku keluar menuju tanah suci. Kemudian kami berangkat hingga tiba di suatu sungai yang airnya dari darah. Disana ada seorang yang berdiri di tengah sungai dan satu orang lagi berada (di tepinya) memegang batu. Maka laki-laki yang berada di tengah sungai menghampirinya dan setiap kali dia hendak keluar dari sungai maka laki-laki yang memegang batu melemparnya dengan batu kearah mulutnya hingga dia kembali ke tempatnya semula di tengah sungai dan terjadilah seterusnya yang setiap dia hendak keluar dari sungai, akan dilempar dengan batu sehingga kembali ke tempatnya semula. Aku bertanya: “Apa maksudnya ini?” Maka orang yang aku lihat dalam mimpiku itu berkata: “Orang yang kamu lihat dalam sungai adalah pemakan riba\'”. (hadits riwayat Bukhari)',
      },
      {
        'arabic':
            'عَنْ ابْنِ عَبَّاسٍ عَنْ رَسُولِ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَقَالَ وَالَّذِي نَفْسُ مُحَمَّدٍ بِيَدِهِ لَيَبِيتَنَّ نَاسٌ مِنْ أُمَّتِي عَلَى أَشَرٍ وَبَطَرٍ وَلَعِبٍ وَلَهْوٍ فَيُصْبِحُوا قِرَدَةً وَخَنَازِيرَ بِاسْتِحْلَالِهِمْ الْمَحَارِمَ وَالْقَيْنَاتِ وَشُرْبِهِمْ الْخَمْرَ وَأَكْلِهِمْ الرِّبَا وَلُبْسِهِمْ الْحَرِيرَ',
        'indo':
            'Dari Ibnu ‘Abbas dari Rasulullah Shallallahu’alaihiwasallam bersabda: “Demi jiwa yang Muhammad berada ditanganNya, sungguh beberapa orang dari ummatku bermalam dengan bersuka ria, menyalahgunakan nikmat dan bermain-main, di pagi harinya mereka menjadi kera dan babi karena mereka menghalalkan yang haram, nyanyian, minum khamer, makan riba dan mengenakan sutera.” (HR Ahmad)',
      },
      {
        'arabic':
            'عنْ عَبْدِ اللَّهِ، عَنْ النَّبِيِّ – صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ – قَالَ: “الرِّبَا ثَلَاثَةٌ وَسَبْعُونَ بَابًا',
        'indo':
            'Terjemahan: dari Abdullah dari Nabi shallallahu ‘alaihi wasallam, beliau bersabda: “Riba itu memiliki tujuh puluh tiga pintu.”(Ibn Majah)',
      },
      {
        'arabic':
            'َوَعَنْ سَعْدِ بْنِ أَبِي وَقَّاصٍ رضي الله عنه قَالَ: ( سَمِعْتُ رَسُولَ اَللَّهِ صلى الله عليه وسلم سُئِلَ عَنِ اِشْتِرَاءِ اَلرُّطَبِ بِالتَّمْرِ فَقَالَ: أَيَنْقُصُ اَلرُّطَبُ إِذَا يَبِسَ? قَالُوا: نَعَمَ. فَنَهَى عَنْ ذَلِكَ ) رَوَاهُ اَلْخَمْسَةُ, وَصَحَّحَهُ اِبْنُ اَلْمَدِينِيِّ, وَاَلتِّرْمِذِيُّ, وَابْنُ حِبَّانَ, وَالْحَاكِمُِ ',
        'indo':
            'Sa\'ad Ibnu Abu waqqash Radliyallaahu \'anhu berkata: Aku mendengar Rasulullah Shallallaahu \'alaihi wa Sallam ditanya tentang hukumnya membeli kurma basah dengan kurma kering. Beliau bersabda: "Apakah kurma basah itu berkurang jika mengering?". Ia menjawab: Ya. Lalu beliau melarang hal itu. (Hadits shahih menurut Ibnu al-Madiny, Tirmidzi, Ibnu Hibban, dan Hakim.)',
      },
      {
        'arabic':
            'عَنْ أَبِي هُرَيْرَةَ قَالَقَالَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ الرِّبَا سَبْعُونَ حُوبًا أَيْسَرُهَا أَنْ يَنْكِحَ الرَّجُلُ أُمَّهُ',
        'indo':
            'Dari Abu Hurairah ia berkata, “Rasulullah shallallahu ‘alaihi wasallam bersabda: “Riba itu mempunyai tujuh puluh tingkatan, yang paling ringan adalah seperti seseorang yang berzina dengan ibunya.” (HR Ibn Majah)',
      },
      {
        'arabic':
            'عَنْ عَبْدِ اللَّهِ بْنِ حَنْظَلَةَ غَسِيلِ الْمَلَائِكَةِ قَالَ قَالَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ دِرْهَمٌ رِبًا يَأْكُلُهُ الرَّجُلُ وَهُوَ يَعْلَمُ أَشَدُّ مِنْ سِتَّةٍ وَثَلَاثِينَ زَنْيَةً',
        'indo':
            'Artinya: Dari ‘Abdullah bin Hanzhalah, yang dimandikan oleh para malaikat, ia berkata; Rasulullah Shallallahu’alaihi wasallam bersabda: “Satu dirham hasil riba yang dimakan seseorang sementara ia mengetahuinya, itu lebih buruk dari tigapuluh kali berzina.” (HR. Ahmad)',
      },
      {
        'arabic':
            'عَنْ أَبِي هُرَيْرَةَ أَنَّ رَسُولَ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ قَالَ يَأْتِي عَلَى النَّاسِ زَمَانٌ يَأْكُلُونَ فِيهِ الرِّبَا قَالَ قِيلَ لَهُ النَّاسُ كُلُّهُمْ قَالَ مَنْ لَمْ يَأْكُلْهُ مِنْهُمْ نَالَهُ مِنْ غُبَارِهِ',
        'indo':
            'Dari Abu Hurairah. dia berkata; “Rasulullah shallallahu ‘alaihi wasallam bersabda: “Akan datang kepada manusia suatu masa di mana saat itu mereka akan memakan riba, ” Abu Hurairah berkata; maka timbullah pertanyaan kepada beliau; “Apakah semua manusia melakukannya?” Beliau menjawab: “Yang tidak makan di antara mereka akan mendapatkan debunya.(Ahmad, Abu dawud, Nasai dan Ibn Majah)',
      },
      {
        'arabic':
            'عَنْ أَبِي هُرَيْرَةَ قَالَقَالَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ رَأَيْتُ لَيْلَةَ أُسْرِيَ بِي لَمَّا انْتَهَيْنَا إِلَى السَّمَاءِ السَّابِعَةِ فَنَظَرْتُ فَوْقَ قَالَ عَفَّانُ فَوْقِي فَإِذَا أَنَا بِرَعْدٍ وَبَرْقٍ وَصَوَاعِقَ قَالَ فَأَتَيْتُ عَلَى قَوْمٍ بُطُونُهُمْ كَالْبُيُوتِ فِيهَا الْحَيَّاتُ تُرَى مِنْ خَارِجِ بُطُونِهِمْ قُلْتُ مَنْ هَؤُلَاءِ يَا جِبْرِيلُ قَالَ هَؤُلَاءِ أَكَلَةُ الرِّبَا فَلَمَّا نَزَلْتُ إِلَى السَّمَاءِ الدُّنْيَا نَظَرْتُ أَسْفَلَ مِنِّي فَإِذَا أَنَا بِرَهْجٍ وَدُخَانٍ وَأَصْوَاتٍ فَقُلْتُ مَا هَذَا يَا جِبْرِيلُ قَالَ هَذِهِ الشَّيَاطِينُ يَحُومُونَ عَلَى أَعْيُنِ بَنِي آدَمَ أَنْ لَا يَتَفَكَّرُوا فِي مَلَكُوتِ السَّمَوَاتِ وَالْأَرْضِ وَلَوْلَا ذَلِكَ لَرَأَوْا الْعَجَائِبَ',
        'indo':
            'Dari Abu Hurairah, dia berkata; Rasulullah shallallahu ‘alaihi wasallam Bersabda: “Pada malam aku diisra`kan, ketika aku sampai di langit yang ke tujuh aku melihat ke atas, -‘Affan menyebutkan; “ke atasku, – dan ternyata aku sedang berada di antara guruh dan kilatan petir, ” beliau bersabda: “Lalu aku mendatangi suatu kaum yang perut mereka seperti sarang ular sehingga bisa dilihat dari luar perutnya, aku berkata; ‘Siapa mereka wahai Jibril? ‘ Jibril berkata; ‘Mereka adalah orang-orang yang memakan riba.’ Dan ketika aku turun ke langit dunia, aku melihat di bawahku dan ternyata aku berada di antara debu, asap dan suara, maka aku berkata; ‘Apa ini wahai Jibril? ‘ Jibril berkata; ‘Ini adalah setan-setan yang menghalangi pandangan mata anak cucu Adam sehingga mereka tidak bisa memikirkan tentang kerajaan langit dan bumi, sekiranya bukan karena itu sungguh mereka akan menyaksikan keajaiban-keajaiban.\'" (Ahmad, Musnad Abu Hurairah, no 8286)',
      },
      {
        'arabic':
            'عنْ عَمْرِو بْنِ الْعَاصِ قَالَسَمِعْتُ رَسُولَ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ يَقُولُ مَا مِنْ قَوْمٍ يَظْهَرُ فِيهِمْ الرِّبَا إِلَّا أُخِذُوا بِالسَّنَةِ وَمَا مِنْ قَوْمٍ يَظْهَرُ فِيهِمْ الرُّشَا إِلَّا أُخِذُوا بِالرُّعْبِ',
        'indo':
            'Artinya : Dari Amru bin Ash ia berkata, “Saya mendengar Rasulullah shallallahu ‘alaihi wasallam bersabda: “Tidaklah riba merajalela pada suatu kaum kecuali akan ditimpa paceklik. Dan tidaklah budaya suap merajalela pada suatu kaum kecuali akan ditimpakan kepada mereka ketakutan.” (Hadist riwayat Imam Ahmad)',
      },
      {
        'arabic':
            'أَخْبَرَنَا أَبُو عَبْدِ اللَّهِ مُحَمَّدُ بْنُ عَبْدِ اللَّهِ الزَّاهِدُ، ثنا أَبُو إِسْمَاعِيلَ السُّلَمِيُّ، ثنا عَبْدُ الْعَزِيزِ بْنُ عَبْدِ اللَّهِ الْأُوَيْسِيُّ، ثنا إِبْرَاهِيمُ بْنُ خُثَيْمِ بْنِ عِرَاكِ بْنِ مَالِكٍ، عَنْ أَبِيهِ، عَنْ جَدِّهِ، عَنْ أَبِي هُرَيْرَةَ، قَالَ: قَالَ رَسُولُ اللَّهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ: ” أَرْبَعَةٌ حَقٌّ عَلَى اللَّهِ أَنْ لَا يُدْخِلَهُمُ الْجَنَّةَ وَلَا يُذِيقَهُمْ نَعِيمَهَا: مُدْمِنُ الْخَمْرِ، وَآكِلُ الرِّبَا، وَآكِلُ مَالِ الْيَتِيمِ بِغَيْرِ حَقٍّ، وَالْعَاقُّ لِوَالِدَيْهِ «هَذَا حَدِيثٌ صَحِيحُ الْإِسْنَادِ وَلَمْ يُخَرِّجَاهُ وَقَدِ اتَّفَقَا عَلَى خُثَيْمٍ» التعليق – من تلخيص الذهبي- 2260 – إبراهيم بن خثim بن عراك بن مالك قال النسائي متروك',
        'indo':
            'Dari Abu Hurairah ia berkata : telah bersabda Rasulllah saw: empat orang hak atas Allah bahwa ia tidak akan memasukan mereka kesurga dan tidak akan merasakan nikmatnya, 1. Peminum khomer 2. Pemakan riba 3. Pemakan harta yatim tanpa hak 4. Dan yang durhaka pada kedua orang tua. (Riwayat Al Hakim)',
      },
      {
        'arabic':
            'لَيَأْتِيَنَّ عَلَى النَّاسِ زَمَانٌ لاَ يُبَالِى الْمَرْءُ بِمَا أَخَذَ الْمَالَ ، أَمِنْ حَلاَلٍ أَمْ مِنْ حَرَامٍ',
        'indo':
            '“Akan datang suatu zaman di mana manusia tidak lagi peduli dari mana mereka mendapatkan harta, apakah dari usaha yang halal atau haram.” (HR. Bukhari no. 2083)',
      },
      {
        'arabic':
            'لَعَنَ رَسُولُ اللَّهِ -صلى الله عليه وسلم- آكِلَ الرِّبَا وَمُوكِلَهُ وَكَاتِبَهُ وَشَاهِدَيْهِ وَقَالَ هُمْ سَوَاءٌ',
        'indo':
            'Artinya: “Rasulullah shallallahu ‘alaihi wa sallam melaknat pemakan riba (rentenir), orang yang menyerahkan riba (nasabah), pencatat riba (sekretaris) dan dua orang saksinya.” Beliau mengatakan, “Mereka semua itu sama.”(HR. Muslim no. 1598)',
      },
      {
        'arabic':
            'عَنْ أَبِي سَعِيدٍ الْخُدْرِيِّ قَالَ قَالَ رَسُولُ اللَّهِ صَلَّى اللَّه عَلَيْهِ وَسَلَّمَ الذَّهَبُ بِالذَّهَبِ وَالْفِضَّةِ بِالْفِضَّةِ وَالْبُرُّ بِالْبُرِّ وَالشَّعِيرُ بِالشَّعِيرِ وَالتَّمْرُ بِالتَّمْرِ وَالْمِلْحُ بِالْمِلْحِ مِثْلا بِمِثْلٍ يَدًا بِيَدٍ فَمَنْ زَادَ أَوِ اسْتَزَادَ فَقَدْ أَرْبَى الآخِذُ وَالْمُعْطِي فِيهِ سَوَاءٌ',
        'indo':
            'Diriwayatkan oleh Abu Said Al Khudri bahwa Rasulullah Shallallahu \'alaihi wa sallam bersabda, "Emas hendaklah dibayar dengan emas, perak dengan perak, gandum dengan gandum, tepung dengan tepung, kurma dengan kurma, garam dengan garam, bayaran harus dari tangan ke tangan (cash). Barangsiapa memberi tambahan atau meminta tambahan, sesungguhnya ia telah berurusan denga riba. Penerima dan pemberi statusnya sama (berdosa)." (Shahih Muslim no. 2971)',
      },
      {
        'arabic':
            'مَا ظَهَرَ فِي قَوْمٍ الرِّبَا وَالزِّنَا إِلَّا أَحَلُّوا بِأَنْفُسِهِمْ عِقَابَ اللَّهِ عَزَّ وَجَلَّ',
        'indo':
            'Artinya : “Tidaklah nampak pada suatu kaum riba dan perzinaan melainkan mereka telah menghalalkan bagi mereka mendapatkan siksa Allah Azza wa Jalla. (Ahmad, Musnad Ibn Masu’d, no 3168)',
      },
      {
        'arabic':
            'َوَعَنْ أَبِي سَعِيدٍ, وَأَبِي هُرَيْرَةَ -رَضِيَ اَللَّهُ عَنْهُمَا- ( ;أَنَّ رَسُولَ اَللَّهِ صلى الله عليه وسلم اِسْتَعْمَلَ رَجُلًا عَلَى خَيْبَرٍ, فَجَاءَهُ بِتَمْرٍ جَنِيبٍ, فَقَالَ رَسُولُ اَللَّهِ صلى الله عليه وسلم أَكُلُّ تَمْرِ خَيْبَرَ هَكَذَا? فَقَالَ: لَا, وَاَللَّهِ يَا رَسُولَ اَللَّهِ, إِنَّا لَنَأْخُذُ اَلصَّاعَ مِنْ هَذَا بِالصَّاعَيْنِ وَالثَّلَاثَةِ فَقَالَ رَسُولُ اَللَّهِ صلى الله عليه وسلم لَا تَفْعَلْ، بِعِ اَلْجَمْعَ بِالدَّرَاهِمِ, ثُمَّ اِبْتَعْ بِالدَّرَاهِمِ جَنِيبًا ) وَقَالَ فِي اَلْمِيزَانِ مِثْلَ ذَلِكَ. مُتَّفَقٌ عَلَيْهِ. وَلِمُسْلِمٍ: وَكَذَلِكَ اَلْمِيزَانُ',
        'indo':
            'Dari Abu Said al-Khudry dan Abu Hurairah Radliyallaahu \'anhu bahwa Rasulullah Shallallaahu \'alaihi wa Sallam mengangkat seorang amil zakat untuk daerah Khaibar. Ia kemudian membawa kepada beliau kurma yang bagus; Lalu Rasulullah Shallallaahu \'alaihi wa Sallam bertanya: "Apakah setiap kurma khaibar seperti ini?". Ia menjawab: Demi Allah tidak, wahai Rasulullah. Kami menukar satu sho\' seperti ini dengan dua sho\', dan dua sho\' dengan tiga sho\'. Lalu Rasulullah Shallallaahu \'alaihi wa Sallam bersabda: "Jangan lakukan itu, juallah semuanya dengan dirham, kemudian belilah kurma yang bagus dengan dirham tersebut." Beliau bersabda: " Demikian juga dengan benda-benda yang ditimbang." Muttafaq Alaihi. Menurut riwayat Muslim: "Demikian pula benda-benda yang ditimbang."',
      },
      {
        'arabic':
            'َوَعَنْ جَابِرِ بْنِ عَبْدِ اَللَّهِ -رَضِيَ اَللَّهُ عَنْهُمَا- قَالَ : ( نَهَى رَسُولُ اَللَّهِ صلى الله عليه وسلم عَنْ بَيْعِ اَلصُّبْرَةِ مِنَ اَلتَّمْرِ لا يُعْلَمُ مَكِيلُهَا بِالْكَيْلِ اَلْمُسَمَّى مِنَ اَلتَّمْرِ ) رَوَاهُ مُسْلِمٌ ',
        'indo':
            'Artinya : Jabir Ibnu Abdullah Radliyallaahu \'anhu berkata: Rasulullah Shallallaahu \'alaihi wa Sallam melarang jual-beli setumpuk kurma yang tidak diketahui takarannya dengan kurma yang diketahui takarannya. (Riwayat Muslim)',
      },
      {
        'arabic':
            'َوَعَنْ أَبِي أُمَامَةَ رضي الله عنه عَنِ اَلنَّبِيِّ صلى الله عليه وسلم قَالَ: ( مَنْ شَفَعَ لِأَخِيهِ شَفَاعَةً, فَأَهْدَى لَهُ هَدِيَّةً, فَقَبِلَهَا, فَقَدْ أَتَى بَابًا عَظِيماً مِنْ أَبْوَابِ اَلرِّبَا ) رَوَاهُ أَحْمَدُ, وَأَبُو دَاوُدَ, وَفِي إِسْنَادِهِ مَقَالٌ ',
        'indo':
            'Dari Abu Umamah Radliyallaahu \'anhu bahwa Nabi Shallallaahu \'alaihi wa Sallam bersabda: "Barangsiapa memberi syafa\'at (menjadi perantara untuk suatu kebaikan) kepada saudaranya, lalu ia diberi hadiah dan diterimanya, maka ia telah mendatangi sebuah pintu besar dari pintu-pintu riba." (Riwayat Ahmad dan Abu Dawud)',
      },
      {
        'arabic':
            'َوَعَنْ عَبْدِ اَللَّهِ بْنِ عَمْرِوٍ -رَضِيَ اَللَّهُ عَنْهُمَا- قَالَ: ( لَعَنَ رَسُولُ اَللَّهِ صلى الله عليه وسلم اَلرَّاشِي وَالْمُرْتَشِيَ ) رَوَاهُ أَبُو دَاوُدَ, وَاَلتِّرْمِذِيُّ وَصَحَّحَهُ',
        'indo':
            'Dari Abdullah Ibnu Amar Ibnu al-\'Ash Radliyallaahu \'anhu bahwa Rasulullah Shallallaahu \'alaihi wa Sallam melaknat orang yang memberi dan menerima suap. (Riwayat Abu Dawud dan Tirmidzi. Hadits shahih menurut Tirmidzi)',
      },
      {
        'arabic':
            'عَنْ عَوْفِ بْنِ مَالِكٍ، قَالَ: قَالَ رَسُولُ اللَّهِ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ: إِيَّاكَ وَالذُّنُوبَ الَّتِي لا تُغْفَرُ: الْغُلُولُ، فَمَنْ غَلَّ شَيْئًا أَتَى بِهِ يَوْمَ الْقِيَامَةِ، وَآكِلُ الرِّبَا فَمَنْ أَكَلَ الرِّبَا بُعِثَ يَوْمَ الْقِيَامَةِ مَجْنُونًا يَتَخَبَّطُ',
        'indo':
            'Artinya : Dari Auf bin Malik, Rasulullah shallallahu ‘alaihi wa sallam bersabda, “Hati-hatilah dengan dosa-dosa yang tidak akan diampuni. Ghulul (korupsi). Barangsiapa yang mengambil harta melalui jalan khianat, maka harta tersebut akan didatangkan pada hari kiamat nanti. Demikian pula pemakan harta riba. Barangsiapa yang memakan harta riba, maka dia akan dibangkitkan pada hari kiamat nanti dalam keadaan gila dan berjalan sempoyongan.” (Hr. Thabrani)',
      },
      {
        'arabic':
            'أَلاَ كُلُّ شَىْءٍ مِنْ أَمْرِ الْجَاهِلِيَّةِ تَحْتَ قَدَمَىَّ مَوْضُوعٌ وَدِمَاءُ الْجَاهِلِيَّةِ مَوْضُوعَةٌ وَإِنَّ أَوَّلَ دَمٍ أَضَعُ مِنْ دِمَائِنَا دَمُ بْنِ رَبِيعَةَ بْنِ الْحَارِثِ كَانَ مُسْتَرْضِعًا فِي بَنيى سَعْدٍ فَقَتَلَتْهُ هُذَيْلٌ وَرِبَا الْجَاهِلِيَّةِ مَوْضُوعٌ وَأَوَّلُ رِبًا أَضَعُ رِبَانَا رِبَا عَبَّاسِ بْنِ عَبْدِ الْمُطَّلِبِ فَإِنَّهُ مَوْضُوعٌ كُلُّهُ',
        'indo':
            '“Ingatlah, segala perkara jahiliah itu terletak di bawah kedua telapak kakiku. Semua kasus pembunuhan di masa jahiliah itu sudah dihapuskan. Kasus pembunuhan yang pertama kali kuhapus adalah pembunuhan terhadap Ibnu Rabi’ah bin al Harits. Dulu, dia disusui oleh salah seorang dari Bani Sa’ad, lalu dibunuh oleh Hudzail. Riba jahiliah juga telah dihapus. Riba yang pertama kali kuhapus adalah riba yang dilakukan oleh Abbas bin Abdil Muthallib. Sungguh, semuanya telah dihapus.” (Hr. Muslim, dari Jabir bin Abdillah)',
      },
      {
        'arabic':
            'عَنْ سَمُرَةَ بْنِ جُنْدُبٍ رَضِيَ اللهُ عَنْهُ قَالَ قَالَ النَّبِىُّ صَلَّى اللهُ عَلَيْهِ وَ سَلَّمَ: رَأَيْتُ اللَّيْلَةَ رَجُلَيْنِ أَتَيَانِي ، فَأَخْرَجَانِي إِلَى أَرْضٍ مُقَدَّسَةٍ ، فَانْطَلَقْنَا حَتَّى أَتَيْنَا عَلَى نَهَرٍ مِنْ دَمٍ فِيهِ رَجُلٌ قَائِمٌ ، وَعَلَى وَسَطِ النَّهَرِ رَجُلٌ بَيْنَ يَدَيْهِ حِجَارَةٌ ، فَأَقْبَلَ الرَّجُلُ الَّذِى فِي النَّهَرِ فَإِذَا أَرَادَ الرَّجُلُ أَنْ يَخْرُجَ رَمَى الرَّجُلُ بِحَجَرٍ فِى فِيهِ فَرَدَّهُ حَيْثُ كَانَ ، فَجَعَلَ كُلَّمَا جَاءَ لِيَخْرُجَ رَمَى فِي فِيهِ بِحَجَرٍ ، فَيَرْجِعُ كَمَا كَانَ ، فَقُلْتُ مَا هَذَا فَقَالَ الَّذِي رَأَيْتَهُ فِى النَّهَرِ آكِلُ الرِّبَا',
        'indo':
            'Dari Samurah bin Jundab, Nabi shallallahu ‘alaihi wa sallam bersabda, “Semalam aku bermimpi, bahwa ada dua orang yang datang, lalu keduanya mengajakku pergi ke sebuah tanah yang suci. Kami berangkat, sehingga kami sampai di sebuah sungai berisi darah. Di tepi sungai tersebut terdapat seseorang yang berdiri. Di hadapannya terdapat batu. Di tengah sungai, ada seseorang yang sedang berenang. Orang yang berada di tepi sungai memandangi orang yang berenang di sungai. Jika orang yang berenang tersebut ingin keluar, maka orang yang berada di tepi sungai melemparkan batu ke arah mulutnya. Akhirnya, orang tersebut kembali ke posisinya semula. Setiap kali orang tersebut ingin keluar dari sungai, maka orang yang di tepi sungai melemparkan batu ke arah mulutnya sehingga dia kembali ke posisinya semula di tengah sungai. Kukatakan, ‘Siapakah orang tersebut?’ Salah satu malaikat menjawab, ‘Yang kau lihat berada di tengah sungai adalah pemakan riba.’” (Hr. Bukhari)',
      },
      {
        'arabic': '',
        'indo':
            '“Menjelang kedatangan hari Kiamat tampak (menyebar) riba, perzinahan dan minuman khamar“. (HR.At-Thabrani)',
      },
      {
        'arabic': '',
        'indo':
            '“Jauhilah oleh kalian semua dosa-dosa yang tidak diampuni”. Dan beliau menyebutkan salah satunya adalah memakan riba“. (HR. At-Tabrani)',
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
          "Hadist Tentang Riba'",
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
