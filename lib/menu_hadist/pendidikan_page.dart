import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';

class PendidikanPage extends StatelessWidget {
  const PendidikanPage({super.key});

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
            'عَنْ اَبِىْ هُرَيْرَةَ رَضِيَ اللهُ عَنْهُ قَالَ : قَالَ رَسُوْلُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّم... : كُلُّ مَوْلُوْدٍ يُوْلَدُ عَلَى الْفِطْرَةِ فَاَبَوَاهُ يُهَوِّدَانِهِ اَوْ يُنَصِّرَنِهِ اَوْ يُمَجِّسَنِهِ (رَوَاهُ الْبُخَارِى وَمُسْلِمْ )',
        'indo':
            'Dari Abu Hurairah R.A, Ia berkata: Rasulullah SAW bersabda : “Setiap anak dilahirkan dalam keadaan suci, ayah dan ibunyalah yang menjadikan Yahudi, Nasrani, atau Majusi.” (HR. Bukhori dan Muslim)',
      },
      {
        'arabic':
            'عَنْ عَلِيٍّ رَضِيَ اللهُ عَنْهُ قَالَ :  قَالَ رَسُوْلُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ :  اَدِّبُوْا اَوْلَادَكُمْ عَلَى ثَلَاثِ خِصَالٍ : حُبِّ نَبِيِّكُمْ وَحُبِّ اَهْلِ بَيْتِهِ وَ قِرَأَةُ الْقُرْأَنِ فَإِنَّ حَمْلَةَ الْقُرْأَنُ فِيْ ظِلِّ اللهِ يَوْمَ لَا ظِلٌّ ظِلَّهُ مَعَ اَنْبِيَائِهِ وَاَصْفِيَائِهِ (رَوَاهُ الدَّيْلَمِ )',
        'indo':
            'Dari Ali R.A ia berkata : Rasulullah SAW bersabda : “Didiklah anak-anak kalian dengan tiga macam perkara yaitu mencintai Nabi kalian dan keluarganya serta membaca Al-Qur’an, karena sesungguhnya orang yang menjunjung tinggi Al-Qur’an akan berada di bawah lindungan Allah, diwaktu tidak ada lindungan selain lindungan-Nya bersama para Nabi dan kekasihnya” (H.R Ad-Dailami)',
      },
      {
        'arabic':
            'قَالَ النَّبِيُّ صَلَّى اللهُ عَلَيْهِ وَسَلَّم:كُنْ عَالِمًا اَوْ مُتَعَلِّمًا اَوْ مُسْتَمِعًا اَوْ مُحِبًا وَلَا تَكُنْ خَامِسًا فَتُهْلِكَ (رَوَاهُ الْبَيْهَقِ )',
        'indo':
            'Telah bersabda Rasulullah SAW :”Jadilah engkau orang yang berilmu (pandai) atau orang yang belajar, atau orang yang mendengarkan ilmu atau yang mencintai ilmu. Dan janganlah engkau menjadi orang yang kelima maka kamu akan celaka (H.R Baehaqi)',
      },
      {
        'arabic':
            'مَنْ اَرَادَ الدُّنْيَا فَعَلَيْهِ بِالْعِلْمِ وَمَنْ اَرَادَ الْأَخِرَةَ فَعَلَيْهِ بِالْعِلْمِ وَمَنْ اَرَادَهُمِا فَعَلَيْهِ بِالْعِلْمِ  (رَوَاهُ الْبُخَارِى وَمُسْلِمٌ )',
        'indo':
            '“Barangsiapa yang menghendaki kebaikan di dunia maka dengan ilmu. Barangsipa yang menghendaki kebaikan di akhirat maka dengan ilmu.  Barangsiapa yang menghendaki keduanya maka dengan ilmu” (HR. Bukhori dan Muslim)',
      },
      {
        'arabic':
            'عَنْ عَلِيٍّ رَضِيَ اللهُ عَنْهُ قَالَ :  قَالَ رَسُوْلُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ : الْعَالِمُ يَنْتَفِعُ بِعِلْمِهِ خَيْرٌ مِنْ اَلْفِ عَابِدٍ (رَوَاهُ الدَّيْلَمِ )',
        'indo':
            'Dari Ali R.A ia berkata : Rasulullah SAW bersabda : Orang-orang yang berilmu kemudian dia memanfaatkan ilmu tersebut (bagi orang lain) akan lebih baik dari seribu orang yang beribadah atau ahli ibadah. (H.R Ad-Dailami)',
      },
      {
        'arabic':
            'عَنْ اِبْنُ عَبَّاسِ رَضِيَ اللهُ عَنْهُ قَالَ : قَالَ رَسُوْلُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ : مَنْ يُرِدِ اللهُ بِهِ خَيْرًا يُفَقِّهْهُ فِيْ الدِّيْنِ وَ اِنَّمَا الْعِلْمُ بِاالتَّعَلُّمِ ...... (رَوَاهُ الْبُخَارِىْ)',
        'indo':
            'Dari Ibnu Abbas R.A Ia berkata : Rasulullah SAW bersabda : “Barang siapa yang dikehendaki Allah menjadi baik, maka dia akan difahamkan dalam hal agama. Dan sesungguhnya ilmu itu dengan belajar” (HR. Bukhori)',
      },
      {
        'arabic':
            'قَالَ رَسُوْلُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ : لَا يَتْبَغِ لِلْجَاهِلِ اَنْ يَسْكُنَ عَلَى جَهْلِهِ وَلَا لِلْعَالِمِ اَنْ يَسْكُنَ عَلَى عِلْمِهِ (رَوَاُه الطَّبْرَانِىُّ)',
        'indo':
            'Rasulullah SAW bersabda : “Tidak pantas bagi orang yang bodoh itu mendiamkan kebodohannya dan tidak pantas pula orang yang berilmu mendiamkan ilmunya” (H.R Ath-Thabrani)',
      },
      {
        'arabic':
            'عَنْ عَبْدِاللهِ ابْنِ عُمَرَو بْنُ الْعَاصِ قَالَ : قَالَ رَسُوْلُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ : إِنَّ اللهَ لَا يَقْبِضُ الْعَالِمُ إِنْتِزَاعًا يَنْزِعُهُ مِنَ النَّاسِ وَلَكِنْ يَقْبِضُ الْعُلَمَاءُ حَتَّى إِذَا لَمْ يَتْرَكْ عَالِمًا إِتَّخَذَ النَّاسُ رُؤُوْسًا جَهْلًا فَسْئَلُوْا فَافْتُوْا بِغَيْرِ عِلْمٍ فَضَلُّوْا وَ اَضَلُّوْا (اَخْرَجَهُ الْبُخَارِىْ)',
        'indo':
            'Dari Abdullah bin Amr bin Ash berkata, Rasulullah SAW bersabda : “Sesungguhnya Allah tidak mengambil ilmu dengan mencabutnya dari manusia tetapi Allah mengambil ilmu dengan cara mengambil para ulama, sehingga jika Dia tidak meninggalkan seorang alim, maka orang-orang menjadikan pemimpin mereka orang-orang yang bodoh, lalu mereka ditanya maka mereka menjawab tanpa dengan ilmu, jadilah mereka sesat dan menyesatkan. (HR. Bukhori)',
      },
      {
        'arabic':
            'تَعَلَّمُوْا مِنَ الْعِلْمِ مَا شِئْتُمْ فَوَاللهِ لَا تُؤْتِ جَزَاءً بِجَمْعِ الْعِلْمِ حَتَّى تَعَمَّلُوْا (رَوَاهُ اَبُوْ الْحَسَنْ)',
        'indo':
            '“Belajarlah kalian semua atas ilmu yang kalian inginkan, maka demi Allah tidak akan diberikan pahala kalian sebab mengumpulkan ilmu sehingga kamu mengamalkannya. (HR. Abu Hasan)',
      },
      {
        'arabic':
            'عَنْ اِبْنِ عَبَّاسٍ رَضِيَ اللهُ عَنْهُ قَالَ : قَالَ رَسُوْلُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ : اُطْلُبُ الْعِلُمَ وَلَوْ بِاالصِّيْنِ فَاِنَّ طَلَبَ الْعِلْمَ فَرِيْضَةٌ عَلَى كُلِّ مُسْلِمٍ وَ مُسْلِمَةٍ اِنَّ الْمَلَائِكَةَ تَضَعُ اَجْنِحَتِهَا لِطَالِبٍ رِضَاعًا بِمَا يَطْلُبُ ( رَوَاهُ اِبْنِ عَبْدِ الْبَرِّ )',
        'indo':
            'Dari Ibnu Abbas R.A Ia berkata : Rasulullah SAW bersabda : “Carilah ilmu sekalipun di negeri Cina, karena sesungguhnya mencari ilmu itu wajib bagi seorang muslim laki-laki dan perempuan. Dan sesungguhnya para malaikat menaungkan sayapnya kepada orang yang menuntut ilmu karena ridho terhadap amal perbuatannya. (H.R Ibnu Abdul Barr)',
      },
      {
        'arabic':
            'وَعَنْ اَبِيْ دَرْدَاءَ رَضِيَ اللهُ عَنْهُ قَالَ :سَمِعْتُ رَسُوْلُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ يَقُوْلُ : مَنْ سَلَكَ طَرِيْقًا يَبْتَغِيْ فِيْهِ عِلْمًا سَهَّلَ اللهُ طَرِيْقًا إِلَى الْجَنَّةِ اِنَّ الْمَلَائِكَةَ تَضَعُ اَجْنِحَتِهَا لِطَالِبٍ رِضَاعًا بِمَا صَنَعَ وَاَنَّ الْعَالِمُ لِيَسْتَغْفِرْ لَهُ مَنْ فِيْ السَمَاوَتِ وَمَنْ فِيْ الْعَرْضِ حَتَّى الحَيْتَانِ فِيْ الْمَاءِ , وَ فَضْلُ الْعَالِمِ عَلَى الْعِبَادِ كَفَضْلِ الْقَمَرِ عَلَى سَائِرِ الْكَوَاكِبِ , وَ اَنَّ الْعُلَمَاءَ وَرَثَةُ الْأَنْبِيَاءِ لَمْ يَرِثُوْا دِيْنَارًا وَلَا دِرْهَامًا , إِنَّمَا وَرِثُوْالْعِلْمَ , فَمَنْ أَخَذَهُ أَخَذَ بِحَظٍ وَ اَفِرٍ (رَوَاهُ اَبُوْ دَاوُدْ وَ الْتِّرْمِذِيْ)',
        'indo':
            'Dari Abu Darda’ R.A, beliau berkata : Saya mendengar Rasulullah SAW bersabda : Barang siapa yang menempuh perjalanan untuk mencari ilmu maka Allah memudahkan baginya jalan menuju surga, dan sesungguhnya para malaikat meletakkan sayapnya bagi penuntut ilmu yang ridho terhadap apa yang ia kerjakan, dan sesungguhnya orang yang alim dimintakan ampunan oleh orang-orang yang ada di langit dan orang-orang yang ada di bumi hingga ikan-ikan yang ada di air, dan keutamaan yang alim atas orang yang ahli ibadah seperti keutamaan bulan atas seluruh bintang, dan sesungguhnya ulama’ adalah pewaris para Nabi, dan sesungguhnya para Nabi tidak mewariskan dinar dan tidak mewariskan dirham, melainkan mewariskan ilmu, maka barang siapa yang mengabilnya maka hendaklah ia mengambil dengan bagian yang sempurna. (H.R Abu Daud dan Tirmidzi)',
      },
      {
        'arabic':
            'عَنْ عَبْدِاللهِ ابْنِ عُمَرَ رَضِيَ اللهُ عَنْهُ قَالَ :  قَالَ رَسُوْلُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ : بَلِّغُوْا عَنِّى وَلَوْ اَيَةً وَحَدِّثُوْاعَنْ بَنِيْ إِسْرَائِيْلَ وَلَا خَرَجَ : وَمَنْ كَذَّبَ عَلَيَّ مُتَعَمِّدًا فَلْيَتَبَوَّاءْ مَقْعَدَهُ مِنَ النَّارِ(رَوَاهُ الْبُخَارِى)',
        'indo':
            'Dari Abdullah bin Umar R.A ia berkata : Rasulullah SAW bersabda : “Sampaikanlah dariku walaupun satu ayat, dan ceritakanlah apa yang datang dari bani Israil dan tidak ada dosa, dan barangsiapa berdusta atasku dengan sengaja, maka hendaklah ia menyiapkan tempat duduknya di dalam neraka”. (HR. Bukhori)',
      },
      {
        'arabic':
            'وقال ibn مسعود رضي الله عنه : عليكم بالئلم قبل ان يرفع ور فعه موت رءاته فوالذي نفس بيده ليعدن رجا ل قتلوا في سبيل الله شهداء انتبشهم الله علماء لما يرون من كرا مثهم فان احدا لم يعلد عا لما وانما الئلم باالتعلم. (رواه الترمذ)',
        'indo':
            'Artinya:“Ibnu Mas’ud RA berkata: kalian mesti berilmu (menguasai ilmu) sebelum mati menjemput. Maka demi “dzat” yang menguasai diri yang menyayangi seseorang yang meninggal di jalan Allah dengan mati syahid. Sesungguhnya Allah akan membangkitkannya (ulama) karena kemuliaannya. Sesungguhnya seorang dilahirkan tanpa ilmu dan ilmu bisa di dapat melalui dipelajari”. (H.R. Tirmidzi)',
      },
      {
        'arabic':
            'العلم خازائن، ومفتا حها السؤال، فاسألوا يرحمكما الله، فانه يؤجر فيه اربعة – السا ئل، والمستمع، والمحب لهم (رواه ابو نعيم عن على)',
        'indo':
            'Artinya:Ilmu adalah gudang dan kuci pembuka gudang tersebut adalah pertanyaan/ permintaan. Maka kalian bertanyalah (pada guru / ulama) maka kalian akan di rahmat Allah, sesungguhnya ada empat orang yang akan pendapat / diberi pahala yaitu, orang yang bertanya, yang mengajarkan, yang mendengarkan, dan yang mencintai pada orang-orang tersebut. (H.R. Abu Nua’im dari Ali)',
      },
      {
        'arabic':
            ' عَنْ عُمَرُوبْنُ شُعَيْبِ عَنْ اَبِيْهَ عَنْ جَدّهِ قَالَ : قَالَ رَسُوْلُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ : مُرُوْا اَوْلَادَكُمْ بِالصَّلَاةِ وَهُم اَبْنَاءُ سِنِيْنَ وَاضْرِبُهُمْ اَبْنَاءَ عَشَرَ وَ فَرِّقُوْا بَيْنَهُمْ فِيْ الْمَضَاجِعِ ( رَوَاهُ اَبُوْ دَاوُدَ )',
        'indo':
            'Dari Amr Bin Syu’aib dari bapaknya dari kakeknya berkata : Raulullah SAW bersabda : “perintahkanlah anakmu untuk melakukan shalat, pada saat mereka berusia tujuh tahun, dan pukullah mereka pada saat mereka berusia sepuluh tahun jika mereka meninggalkan shalat dan pisahkanlah mereka dalam hal tempat tidur.” (HR. Abu Dawud)',
      },
      {
        'arabic':
            ' قَالَ أَمِيْرُ الْمُؤْمِنِيْنَ رَضِيَ اللهُ عَنْهُ سَمِعْتُ رَسُوْلُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ يَقُوْلُ : إِنَّمَا الْاَعْمَالُ بِانِّيَاتِ إِنَّمَا لِكُلِّ لِإِمْرِءٍ مَا نَوَى. فَمَنْ كَانَتْ هِجْرَتُهُ اِلَى اللهِ وَ رَسُوْلِهِ فَهِجْرَتُهُ اِلَى اللهِ وَ رَسُوْلِهِ وِمَنْ كَانَتْ هِجْرَتُهُ لِدُّنْيَا يُسِيْبَهَا اَوْ اِمْرَأَةً يَنْكِحُهَا فَهِجْرَتُهُ اِلَى مَا هَجَرَ اِلَيْهِ (رَوَاهُ الْبُخَارِى وَمُسْلِمْ )',
        'indo':
            'Amirul mukminin Umar bin Khottob RA, berkata, aku mendengar Rasulullah SAW bersabda:” Sesungguhnya amal perbuatan  itu disertai niatnya. Barang siapa yang berpijak hanya karena Allah dan Rasulnya, dan barang siapa yang hijrahnya karena dunia dan yang diharapkan atau wanita yang ia nikahi, Maka hijrahnya itu menuju apa yang ia inginkan. (HR. Bukhori dan Muslim)   ',
      },
      {
        'arabic':
            'عَنْ جَابِرٍ رَضِيَ اللهُ عَنْهُ قَالَ :  قَالَ رَسُوْلُ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ : إِنَّمَا شِفَاءُ الْعِيِّ السُّئَال (رَوَاهُ اَبُوْ دَاوُدْ وَ الْتِّرْمِذِيْ)',
        'indo':
            'Dari Jabir R.A, ia berkata, Rasulullah SAW bersabda :“Sesungguhnya obat kebodohan itu tak lain adalah bertanya.” (HR. Abu Daud)',
      },
      {
        'arabic':
            'حَدَثَنَا مَنْ كَانَ يُقْرِئُنَا مِنْ اَصْحَابِ النَّبِيِّ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ أَنَّهُمْ كَانُوْا يُقْتَرِئُوْنَ مِنْ رَسُوْلِ اللهِ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ عَشْرَ اَيَاتٍ فَلَايَئْخُذُوْنَ فِيْ الْعَشْرِ الْأَخَرِى حَتَّى يَعْلَمُوْا مَا فِيْ هَذِهِ مِنَ الْعِلْمِ وَالْعَمَلِ (رَوَاهُ اَحْمَدْ )',
        'indo':
            '“Telah menceritakan kepada kami orang yang biasa mengajari kami, yakni dari kalangan sahabat Nabi SAW, bercerita kepada kami bahwa sesungguhnya mereka (para sahabat) pernah mempelajari sepuluh ayat (Al-Qur’an) dari Rasulullah SAW. Mereka tidak mempelajari sepuluh ayat yang lain sebelum mereka dapat mengetahui setiap ilmu yang terdapat dalam ayat-ayat tersebut dan mengamalkannya.” (HR. Ahmad)',
      },
      {
        'arabic':
            'عن ابي درداء قال: سمعت رسول الله صلى الله عليه وسلم يقول: فضل العا لم على العابد كفضل القمر على الكو كب، وانما االعلماء ورثة الآ نبياء, وان الآ نبياء لم يورثوا دينارا ولادرهما، انما ورثوالعلم، فمن اخده اخd بحظ وكفر (رواه ابو داود والتر مذى)',
        'indo':
            'Artinya:“Dari Abi Darda ia berkata: Saya mendengar Rasulullah SAW beliau bersabda: keutamaan orang alim dibanding ahli ibadah adalah seperti keutamaan bulan dibanding bintang-bintang, sesungguhnya para ulama itu pewaris para Nabi, dan sesungguhnya para Nabi tidak mewariskan dinar dan tidak pula dirham, sesungguhnya mereka mewariskan ilmu, maka barang siapa mengambil warisan itu berarti ia mengambil bagian yang sempurna”. (H.R. Abu Daud dan Tirmidzi).   ',
      },
      {
        'arabic':
            'وعن ابي هريرة رضي الله عنه عن النبي صلى الله عليه وسلم انه قال: من سلك طريقا الى العلم سلك الله طريقا ال الجنة، وانه العالم يستغفرله من في السموات ومن فى الارض حتى اليتا فى الخير، ان العلماء ورثة الانبياء (رواه ابو داود)',
        'indo':
            'Artinya: “Dari Abu Hurairah RA Rasulullah SAW bersabdal: Barang siapa menjalani akan suatu jalan untuk mencari ilmu pengetahuan (ilmu Allah) maka Allah akan memudahkan baginya jalan menuju syurga, sesungguhnya orang alim semua makhluk yang ada di langit, dan makhluk yang ada di bumi hingga ikan Hiu yang ada di laut memohon ampunan baginya, sesungguhnya ulama itu adalah pewaris Nabi”. (H.R. Abu Daud)',
      },
      {
        'arabic':
            'وعن ابن عباس رضي الله عنه قال: قال النبي صلى الله عليه وسلم : خير سليمان عليه السلام بين العلم والملك, فاختار العلم فاعطي العلم والملك (رواه احمد)',
        'indo':
            'Artinya:“Dari Ibnu Abbas RA ia berkata: Rasulullah SAW bersabda: Sulaiman AS beliau memilih antara ilmu dan kerajaan, maka kemudian beliau memilih ilmu, lalu diberikannya ilmu dan kerajaan”. (H.R. Ahmad)',
      },
      {
        'arabic':
            'عن ابى در قال عليه الصلاة والسلام : يا ابا در للأن تخدو فتعلم بابا من كتب الله تعا لى خيرا لك من ان تصلى مانة ركعة (رواه ابن ماجه)',
        'indo':
            'Artinya: “Abu Dar berkata: Rasulullah SAW bersabda: Ya Abu Dar seandainya kau pergi pagi lalu kemudian mempelajari ilmu satu bab dari kitab Allah SWT maka itu lebih baik dibanding kau melaksanakan shalat seratus rakaat”. (H.R. Ibnu Majah)',
      },
      {
        'arabic':
            'وعن انس رضي الله عنه قال: قال رسول الله صلى الله عليه وسلم: وقروا من تتعلمون منه (رواه ابو حسن المردى)',
        'indo':
            'Artinya:“Dari Anas RA ia berkata: Rasulullah SAW bersabda: Muliakanlah orang yang telah memberikan pelajaran kepadamu”. (H.R. Abu Hasan Al-Mawardi)',
      },
      {
        'arabic':
            'وعن امامة رضي الله عنها قال: قال رسول الله صلى الله عليه وسلم: اقرب الناس من درجة النبوة اهل العلم والجهاد، اما اهل العلم فد لعا الناس على ما جاءت به الرسul واما اهل الجهاد فجاهدوا باسيا فهم على ما جاءت به الرسل (رواه درقطن)',
        'indo':
            'Artinya: “Dari Umamah RA ia berkata: Rasulullah SAW bersabda: orang paling dekat derajatnya dari para Nabi ialah ahkul ilmi (yang berilmu) dan pejuang, jika orang yang berilmu memberi petunjuk pada manusia melalui apa yang datang dari Rasul (ilmu), dan kalau pejuang berjuanglah dengan pedangnya, seperti yang ditunjukkan Rasul”. (H.R. Daruqutni)',
      },
      {
        'arabic':
            'إذا مات إبن أدم إنقطع عمله إلا من ثلاث: صدقة جارية او علمينتفع به او ولد صالح يدعوا له',
        'indo':
            'Artinya: Apabila anak Adam (manusia) mati maka terputuslah amalnya kecuali 3 hal; bersedekah jariyah, ilmu yang bermanfaat atau anak sholeh yang selalu mendoakan kedua orang tuanya. (HR. Muslim)',
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
          'Hadist Tentang Pendidikan',
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
