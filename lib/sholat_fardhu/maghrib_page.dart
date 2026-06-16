import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MaghribPage extends StatefulWidget {
  const MaghribPage({super.key});

  @override
  State<MaghribPage> createState() => _MaghribPageState();
}

class _MaghribPageState extends State<MaghribPage> {
  String _selectedOption = 'Shalat Maghrib Sendirian';

  final Map<String, Map<String, String>> _niatData = {
    'Shalat Maghrib Sendirian': {
      'title': 'Niat (Sendirian)',
      'arabic':
          "أُصَلِّىْ فَرْضَ الْمَغْرِبِ ثَلٰثَ رَكَعَاتٍ مُسْتَقْبِلَ الْقِبْلَةِ أَدَاءً لِلّٰهِ تَعَالَىٰ",
      'transliteration':
          "Ushallii fardhal-maghribi tsalaatsa raka'aatin mustaqbilal qiblati adaa'an lillaahi ta'aalaa.",
      'translation':
          "Aku berniat shalat fardhu Maghrib tiga rakaat menghadap kiblat karena Allah Ta'ala.",
    },
    'Shalat Maghrib Sebagai Imam': {
      'title': 'Niat (Imam)',
      'arabic':
          "أُصَلِّىْ فَرْضَ أَلْمَغْرِبِ ثَلٰثَ رَكَعَاتٍ مُسْتَقْبِلَ الْقِبْلَةِ إِمَامًا لِلّٰهِ تَعَالَىٰ",
      'transliteration':
          "Ushallii fardhal-maghribi tsalaatsa raka'aatin mustaqbilal qiblati imaaman lillaahi ta'aalaa.",
      'translation':
          "Aku berniat shalat fardhu Maghrib tiga rakaat menghadap kiblat sebagai imam karena Allah Ta'ala.",
    },
    'Shalat Maghrib Sebagai Makmum': {
      'title': 'Niat (Makmum)',
      'arabic':
          "أُصَلِّىْ فَرْضَ الْمَغْرِبِ ثَلٰثَ رَكَعَاتٍ مُسْتَقْبِلَ الْقِبْلَةِ مَأْمُوْمًا لِلّٰهِ تَعَالَىٰ",
      'transliteration':
          "Ushallii fardhal-maghribi tsalaatsa raka'aatin mustaqbilal qiblati ma'muuman lillaahi ta'aalaa.",
      'translation':
          "Aku berniat shalat fardhu Maghrib tiga rakaat menghadap kiblat sebagai makmum karena Allah Ta'ala.",
    },
  };

  final List<Map<String, dynamic>> _tataCaraUrutanData = [
    {
      'header': 'Rakaat 1 - Langkah 1',
      'title': 'Niat Shalat Maghrib',
      'desc':
          'Berdiri tegak menghadap kiblat dan memantapkan niat di dalam hati.',
      'hasRead': false,
    },
    {
      'header': 'Rakaat 1 - Langkah 2',
      'title': 'Takbiratul Ihram',
      'desc':
          'Lalu mengangkat kedua belah tangan sejajar daun telinga serta membaca:',
      'hasRead': true,
      'arabic': "اللهُ أَكْبَرُ",
      'latin': "Allahu Akbar.",
      'arti': "Allah Maha Besar.",
    },
    {
      'header': 'Rakaat 1 - Langkah 3',
      'title': 'Doa Iftitah',
      'desc':
          'Sedekapkan kedua tangan di antara dada dan pusar (tangan kanan menggenggam pergelangan tangan kiri), kemudian membaca Doa Iftitah:',
      'hasRead': true,
      'arabic':
          "اللهُ أَكْبَرُ كَبِيرًا وَالْحَمْدُ لِلَّهِ كَثِيرًا وَسُبْحَانَ اللهِ بُكْرَةً وَأَصِيلاً. إِنِّي وَجَّهْتُ وَجْهِيَ لِلَّذِي فَطَرَ السَّمَاوَاتِ وَالأَرْضَ حَنِيفًا مُسْلِمًا وَمَا أَنَا مِنَ الْمُشْرِكِينَ. إِنَّ صَلاَتِي وَنُسُكِي وَمَحْيَايَ وَمَمَاتِي لِلَّهِ رَبِّ الْعَالَمِينَ. لاَ شَرِيكَ لَهُ وَبِذَلِكَ أُمِرْتُ وَأَنَا مِنَ الْمُسْلِمِينَ",
      'latin':
          "Allaahu akbaru kabiiraw-walhamdu lillaahi katsiiraw-wasubhaanallaahi bukrataw-wa-ashiila. Inni wajjahtu wajhiya lilladzii fatharas-samaawaati wal-ardha haniifam-muslimaw-wamaa ana minal-musyrikiin. Inna shalaatii wanusukii wamahyaaya wamamaatii lillaahi rabbil-'aalamiin. Laa syariikalahu wabidzaalika umirtu wa ana minal-muslimiin.",
      'arti':
          "Allah Maha Besar lagi Sempurna Kebesaran-Nya, segala puji bagi Allah sebanyak-banyaknya. Dan Maha Suci Allah sepanjang pagi dan sore. Kubalikkan wajahku kepada Dzat yang menciptakan langit dan bumi dengan keadaan lurus dan berserah diri, dan aku bukanlah dari golongan orang-orang musyrik. Sesungguhnya shalatku, ibadahku, hidupku dan matiku hanya untuk Allah, Tuhan semesta alam. Tidak ada sekutu bagi-Nya, dan dengan yang demikian itulah aku diperintahkan, dan aku adalah termasuk orang-orang Muslim.",
    },
    {
      'header': 'Rakaat 1 - Langkah 4',
      'title': 'Membaca Surat Al-Fatihah',
      'desc':
          'Selesai membaca doa Iftitah, dilanjutkan membaca Surat Al-Fatihah:',
      'hasRead': true,
      'arabic':
          "بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ ﴿١﴾ الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ ﴿٢﴾ الرَّحْمَٰنِ الرَّحِيمِ ﴿٣﴾ مَالِكِ يَوْمِ الدِّينِ ﴿٤﴾ إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ ﴿٥﴾ اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ ﴿٦﴾ صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّينَ ﴿٧﴾ آمينَ",
      'latin':
          "Bismillaahir-rachmaanir-rachiim. Al-hamdu lillaahi rabbil-'aalamiin. Ar-rachmaanir-rachiim. Maaliki yaumid-diin. Iyyaaka na'budu wa iyyaaka nasta'iin. Ihdinas-shiraathal-mustaqiim. Shiraathal-ladziina an'amta 'alaihim ghairil-maghghuubi 'alaihim waladh-dhaalliin. Aamiin.",
      'arti':
          "Dengan nama Allah Yang Maha Pengasih lagi Maha Penyayang. Segala puji bagi Allah, Tuhan seluruh alam. Yang Maha Pengasih lagi Maha Penyayang. Pemilik hari pembalasan. Hanya kepada Engkaulah kami menyembah dan hanya kepada Engkaulah kami memohon pertolongan. Tunjukkanlah kami jalan yang lurus. (yaitu) jalan orang-orang yang telah Engkau beri nikmat kepadanya; bukan (jalan) mereka yang dimurkai, dan bukan (pula jalan) mereka yang sesat. Kabulkanlah doa kami.",
    },
    {
      'header': 'Rakaat 1 - Langkah 5',
      'title': 'Membaca Surat Pendek',
      'desc':
          'Disunnahkan membaca surat atau ayat Al-Qur\'an secara keras (jahr) pada rakaat pertama dan kedua.',
      'hasRead': false,
    },
    {
      'header': 'Rakaat 1 - Langkah 6',
      'title': 'Rukuk',
      'desc':
          'Selesai membaca surat pendek, mengucapkan takbir lalu membungkukkan badan. Pegang lutut dengan kedua telapak tangan, ratakan punggung, lalu membaca tasbih (3x):',
      'hasRead': true,
      'arabic': "سُبْحَانَ رَبِّيَ الْعَظِيمِ وَبِحَمْدِهِ",
      'latin': "Subhaana rabbiyal 'adziimi wa bihamdih. (3x)",
      'arti': "Maha Suci Tuhanku Yang Maha Agung dan dengan memuji-Nya.",
    },
    {
      'header': 'Rakaat 1 - Langkah 7',
      'title': 'I\'tidal',
      'desc':
          'Bangkit tegak dari rukuk dengan mengangkat kedua belah tangan sejajar daun telinga seraya membaca:',
      'hasRead': true,
      'arabic': "سَمِعَ اللهُ لِمَنْ حَمِدَهُ",
      'latin': "Sami'allaahu liman chamidah.",
      'arti': "Allah mendengar orang yang memuji-Nya.",
      'extraDesc':
          'Pada waktu posisi tubuh sudah berdiri tegak (I\'tidal), lanjutkan membaca:',
      'extraArabic':
          "رَبَّنَا لَكَ الْحَمْدُ مِلْءُ السَّمَاوَاتِ وَمِلْءُ الْأَرْضِ وَمِلْءُ مَا شِئْتَ مِنْ شَيْءٍ بَعْدُ",
      'extraLatin':
          "Rabbanaa lakal-chamdu mil'us-samaawaati wa mil'ul-ardhi wa mil'u maa syi'ta min syai'in ba'du.",
      'extraArti':
          "Ya Tuhan kami, bagi-Mu lah segala puji, memenuhi langit dan memenuhi bumi serta memenuhi apa saja yang Engkau kehendaki setelah itu.",
    },
    {
      'header': 'Rakaat 1 - Langkah 8',
      'title': 'Sujud Pertama',
      'desc':
          'Turun menuju sujud dengan mendahulukan lutut baru telapak tangan dan dahi/hidung menempel ke bumi seraya mengucap "Allahu Akbar". Bacalah tasbih sujud (3x):',
      'hasRead': true,
      'arabic': "سُبْحَانَ رَبِّيَ الْأَعْلَىٰ وَبِحَمْدِهِ",
      'latin': "Subhaana rabbiyal a'laa wa bihamdih. (3x)",
      'arti': "Maha Suci Tuhanku Yang Maha Tinggi dan dengan memuji-Nya.",
    },
    {
      'header': 'Rakaat 1 - Langkah 9',
      'title': 'Duduk di Antara Dua Sujud',
      'desc':
          'Bangun dari sujud pertama lalu duduk dengan tenang seraya mengucap "Allahu Akbar" dan membaca doa:',
      'hasRead': true,
      'arabic':
          "رَبِّ اغْفِرْ لِي وَارْحَمْنِي وَاجْبُرْنِي وَارْفَعْنِي وَارْزُقْنِي وَاهْدِنِي وَعَافِنِي وَاعْفُ عَنِّي",
      'latin':
          "Rabbighfirlii warchamnii wajburnii warfa'nii warzuqnii wahdinii wa 'aafinii wa'fu 'annii.",
      'arti':
          "Ya Tuhanku, ampunilah aku, belas kasihanilah aku, cukupkanlah segala kekuranganku, tinggikanlah derajatku, berilah rezeki kepadaku, berilah aku petunjuk, berilah kesehatan kepadaku, dan ampunilah kesalahanku.",
    },
    {
      'header': 'Rakaat 1 - Langkah 10',
      'title': 'Sujud Kedua',
      'desc':
          'Melakukan gerakan sujud kembali seperti sujud pertama seraya mengucap "Allahu Akbar", lalu membaca tasbih sujud (3x):',
      'hasRead': true,
      'arabic': "سُبْحَانَ رَبِّيَ الْأَعْلَىٰ وَبِحَمْدِهِ",
      'latin': "Subhaana rabbiyal a'laa wa bihamdih. (3x)",
      'arti': "Maha Suci Tuhanku Yang Maha Tinggi dan dengan memuji-Nya.",
    },
    {
      'header': 'Rakaat 2 - Langkah 11',
      'title': 'Bangkit Menuju Rakaat Kedua',
      'desc':
          'Bangun dari sujud kedua, berdiri kembali untuk rakaat kedua. Lakukan gerakan bersedekap, membaca Surat Al-Fatihah, dan Surat Pendek secara keras (jahr) seperti rakaat pertama.',
      'hasRead': false,
    },
    {
      'header': 'Rakaat 2 - Langkah 12',
      'title': 'Gerakan Rakaat Kedua',
      'desc':
          'Lakukan gerakan Rukuk, I\'tidal, Sujud pertama, Duduk di antara dua sujud, dan Sujud kedua persis seperti rakaat pertama.',
      'hasRead': false,
    },
    {
      'header': 'Rakaat 2 - Langkah 13',
      'title': 'Duduk Tasyahud Awal',
      'desc':
          'Setelah sujud kedua pada rakaat kedua, jangan langsung berdiri, melainkan duduk tasyahud awal (ifrityas) lalu membaca:',
      'hasRead': true,
      'arabic':
          "التَّحِيَّاتُ الْمُبَارَكَاتُ الصَّلَوَاتُ الطَّيِّبَاتُ لِلَّهِ، السَّلَامُ عَلَيْكَ أَيُّهَا النَّبِيُw وَرَحْمَةُ اللَّهِ وَبَرَكَاتُهُ، السَّلَامُ عَلَيْنَا وَعَلَىٰ عِبَادِ اللَّهِ الصَّالِحِينَ، أَشْهَدُ أَنْ لَا إِلَٰهَ إِلَّا اللَّهُ وَأَشْهَدُ أَنَّ مُحَمَّدًا رَسُولُ اللَّهِ، اللَّهُمَّ صَلِّ عَلَىٰ سَيِّدِنَا مُحَمَّدٍ",
      'latin':
          "At-tahiyyaatul mubaarakatus-shalawaatuth-thayyibaatu lillaah. As-salaamu 'alaika ayyuhan-nabiyyu wa rachmatullaahi wa barakaatuh. As-salaamu 'alainaa wa 'alaa 'ibaadillaahis-shaalichiin. Asyhadu allaa ilaacha illallaach, wa asyhadu anna Muhammadar-rasuulullaach. Allaahumma shalli 'alaa sayyidinaa Muhammad.",
      'arti':
          "Segala penghormatan, keberkahan, shalawat dan kebaikan adalah milik Allah. Semoga keselamatan, rahmat Allah dan berkah-Nya tetap tercurah kepadamu, wahai Nabi. Semoga keselamatan tetap tercurah kepada kami dan kepada hamba-hamba Allah yang saleh. Aku bersaksi bahwa tidak ada Tuhan selain Allah, dan aku bersaksi bahwa Muhammad adalah utusan Allah. Ya Allah, limpahkanlah rahmat kepada junjungan kami Nabi Muhammad.",
    },
    {
      'header': 'Rakaat 3 - Langkah 14',
      'title': 'Bangkit Menuju Rakaat Ketiga',
      'desc':
          'Bangkit berdiri tegak untuk rakaat ketiga seraya membaca takbir. Pada rakaat terakhir ini, hanya membaca Surat Al-Fatihah dengan suara lirih (sirr) tanpa membaca surat pendek.',
      'hasRead': false,
    },
    {
      'header': 'Rakaat 3 - Langkah 15',
      'title': 'Rukuk hingga Sujud Kedua Rakaat Ketiga',
      'desc':
          'Lakukan Rukuk, I\'tidal, Sujud pertama, Duduk di antara dua sujud, dan Sujud kedua dengan tertib seperti sebelumnya.',
      'hasRead': false,
    },
    {
      'header': 'Rakaat 3 - Langkah 16',
      'title': 'Duduk Tasyahud Akhir',
      'desc':
          'Setelah sujud kedua rakaat ketiga, ambil posisi duduk Tasyahud Akhir (Tawurruk). Jari telunjuk tangan kanan diacungkan saat membaca lafal "Illallaah", lalu melafalkan bacaan tasyahud akhir lengkap:',
      'hasRead': true,
      'arabic':
          "التَّحِيَّاتُ الْمُبَارَكَاتُ الصَّلَوَاتُ الطَّيِّبَاتُ لِلَّهِ، السَّلَامُ عَلَيْكَ أَيُّهَا النَّبِيُّ وَرَحْمَةُ اللَّهِ وَبَرَكَاتُهُ، السَّلَامُ عَلَيْنَا وَعَلَىٰ عِبَادِ اللَّهِ الصَّالِحِينَ، أَشْهَدُ أَنْ لَا إِلَٰهَ إِلَّا اللَّهُ وَأَشْهَدُ أَنَّ مُحَمَّدًا رَسُولُ اللَّهِ. اللَّهُمَّ صَلِّ عَلَىٰ سَيِّدِنَا مُحَمَّدٍ وَعَلَىٰ آلِ سَيِّدِنَا مُحَمَّدٍ كَمَا صَلَّيْتَ عَلَىٰ سَيِّدِنَا إِبْرَاهِيمَ وَعَلَىٰ آلِ سَيِّدِنَا إِبْرَاهِيمَ وَبَارِكْ عَلَىٰ سَيِّدِنَا مُحَمَّدٍ وَعَلَىٰ آلِ سَيِّدِنَا مُحَمَّدٍ كَمَا بَارَكْتَ عَلَىٰ سَيِّدِنَا إِبْرَاهِيمَ وَعَلَىٰ آلِ سَيِّدِنَا إِبْرَاهِيمَ فِي الْعَالَمِينَ إِنَّكَ حَمِيدٌ مَجِيدٌ",
      'latin':
          "At-tahiyyaatul mubaarakatus-shalawaatuth-thayyibaatu lillaah. As-salaamu 'alaika ayyuhan-nabiyyu wa rachmatullaahi wa barakaatuh. As-salaamu 'alainaa wa 'alaa 'ibaadillaahis-shaalichiin. Asyhadu allaa ilaacha illallaach, wa asyhadu anna Muhammadar-rasuulullaach. Allaahumma shalli 'alaa sayyidinaa Muhammad wa 'alaa aali sayyidinaa Muhammad, kamaa shallaita 'alaa sayyidinaa Ibraahiim wa 'alaa aali sayyidinaa Ibraahiim. Wa baarik 'alaa sayyidinaa Muhammad wa 'alaa aali sayyidinaa Muhammad, kamaa baarakta 'alaa sayyidinaa Ibraahiim wa 'alaa aali sayyidinaa Ibraahiim, fil-'aalamiina innaka chamiidum-majiid.",
      'arti':
          "Segala penghormatan, keberkahan, shalawat dan kebaikan adalah milik Allah. Semoga keselamatan, rahmat Allah dan berkah-Nya tetap tercurah kepadamu, wahai Nabi. Semoga keselamatan tetap tercurah kepada kami dan kepada hamba-hamba Allah yang saleh. Aku bersaksi bahwa tidak ada Tuhan selain Allah, dan aku bersaksi bahwa Muhammad adalah utusan Allah. Ya Allah, limpahkanlah rahmat kepada junjungan kami Nabi Muhammad dan kepada keluarganya, sebagaimana Engkau telah melimpahkan rahmat kepada junjungan kami Nabi Ibrahim dan keluarganya. Dan berilah berkah kepada junjungan kami Nabi Muhammad dan keluarganya, sebagaimana Engkau telah memberikan berkah kepada junjungan kami Nabi Ibrahim dan keluarganya, di seluruh alam semesta, sesungguhnya Engkau Maha Terpuji lagi Maha Mulia.",
    },
    {
      'header': 'Rakaat 3 - Langkah 17',
      'title': 'Salam',
      'desc':
          'Mengakhiri shalat dengan memalingkan wajah ke kanan sampai pipi terlihat dari belakang, kemudian memalingkan wajah ke kiri seraya mengucapkan:',
      'hasRead': true,
      'arabic': "السَّلَامُ عَلَيْكُمْ وَرَحْمَةُ اللهِ",
      'latin': "As-salaamu 'alaikum wa rachmatullaah.",
      'arti': "Semoga keselamatan dan rahmat Allah tercurah kepadamu.",
    },
  ];

  final List<String> _dropdownOptions = [
    'Shalat Maghrib Sendirian',
    'Shalat Maghrib Sebagai Imam',
    'Shalat Maghrib Sebagai Makmum',
    'Tata Cara Shalat Maghrib',
  ];

  @override
  Widget build(BuildContext context) {
    final bool isLightMode = Theme.of(context).brightness == Brightness.light;

    final Color bgColor = isLightMode
        ? const Color(0xfff5f7fa)
        : const Color(0xff090f16);
    final Color cardColor = isLightMode
        ? Colors.white
        : const Color(0xff111a24);
    final Color innerCardColor = isLightMode
        ? const Color(0xffeef2f7)
        : const Color(0xff090f16);
    final Color mainTextColor = isLightMode
        ? const Color(0xff1e293b)
        : Colors.white;
    final Color subTextColor = isLightMode
        ? const Color(0xff64748b)
        : Colors.white70;
    final Color accentColor = isLightMode
        ? const Color(0xff0f766e)
        : Colors.tealAccent;
    final Color borderTileColor = isLightMode
        ? const Color(0xffe2e8f0)
        : Colors.white12;

    // PERUBAHAN UTAMA: Menjamin teks arab berwarna hitam penuh di Mode Terang dan putih di Mode Gelap
    final Color arabicTextColor = isLightMode ? Colors.black : Colors.white;

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: bgColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: isLightMode ? Colors.black87 : Colors.white70,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "Niat & Tata Cara Shalat Maghrib",
          style: TextStyle(
            color: mainTextColor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Wrap(
            spacing: 8,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: isLightMode ? const Color(0xffe2e8f0) : Colors.white10,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "Shalat Fardhu",
                  style: TextStyle(color: subTextColor, fontSize: 11),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: isLightMode ? const Color(0xffe2e8f0) : Colors.white10,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "maghrib",
                  style: TextStyle(color: subTextColor, fontSize: 11),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: isLightMode ? const Color(0xffe2e8f0) : Colors.white10,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "wajib",
                  style: TextStyle(color: subTextColor, fontSize: 11),
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            decoration: BoxDecoration(
              color: cardColor,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: isLightMode
                    ? const Color(0xffcbd5e1)
                    : Colors.teal.withValues(alpha: 0.2),
                width: 1,
              ),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: _selectedOption,
                dropdownColor: cardColor,
                icon: Icon(Icons.arrow_drop_down, color: accentColor),
                style: TextStyle(
                  color: mainTextColor,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
                items: _dropdownOptions.map((String option) {
                  return DropdownMenuItem<String>(
                    value: option,
                    child: Text(option),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  if (newValue != null) {
                    setState(() {
                      _selectedOption = newValue;
                    });
                  }
                },
              ),
            ),
          ),
          const SizedBox(height: 32),
          if (_selectedOption != 'Tata Cara Shalat Maghrib') ...[
            Center(
              child: Text(
                _niatData[_selectedOption]!['title']!,
                style: TextStyle(
                  color: accentColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
              decoration: BoxDecoration(
                color: cardColor,
                borderRadius: BorderRadius.circular(12),
                border: isLightMode
                    ? Border.all(color: const Color(0xffe2e8f0))
                    : null,
              ),
              child: Text(
                _niatData[_selectedOption]!['arabic']!,
                textAlign: TextAlign.center,
                style: GoogleFonts.amiri(
                  color: arabicTextColor, // Niat atas disesuaikan hitam/putih
                  fontSize: 24,
                  height: 2.2,
                ),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              "Transliterasi",
              style: TextStyle(
                color: accentColor,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 12),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: cardColor,
                borderRadius: BorderRadius.circular(12),
                border: isLightMode
                    ? Border.all(color: const Color(0xffe2e8f0))
                    : null,
              ),
              child: Text(
                _niatData[_selectedOption]!['transliteration']!,
                style: TextStyle(
                  color: subTextColor,
                  fontSize: 14,
                  fontStyle: FontStyle.italic,
                  height: 1.4,
                ),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              "Terjemahan",
              style: TextStyle(
                color: accentColor,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 12),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: cardColor,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: isLightMode
                      ? const Color(0xffe2e8f0)
                      : Colors.teal.withValues(alpha: 0.2),
                ),
              ),
              child: Text(
                _niatData[_selectedOption]!['translation']!,
                style: TextStyle(
                  color: subTextColor,
                  fontSize: 14,
                  height: 1.4,
                ),
              ),
            ),
          ] else ...[
            Row(
              children: [
                Icon(Icons.format_list_numbered, color: accentColor, size: 18),
                const SizedBox(width: 8),
                Text(
                  "Urutan Panduan Shalat Maghrib Lengkap",
                  style: TextStyle(
                    color: accentColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            ..._tataCaraUrutanData.map((tataCara) {
              return Container(
                margin: const EdgeInsets.only(bottom: 16),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: cardColor,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: borderTileColor),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tataCara['header']!,
                      style: TextStyle(
                        color: accentColor,
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      tataCara['title']!,
                      style: TextStyle(
                        color: mainTextColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      tataCara['desc']!,
                      style: TextStyle(
                        color: subTextColor,
                        fontSize: 13,
                        height: 1.4,
                      ),
                    ),
                    if (tataCara['hasRead'] == true) ...[
                      const SizedBox(height: 16),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: innerCardColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Text(
                                tataCara['arabic']!,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.amiri(
                                  color:
                                      arabicTextColor, // PERUBAHAN: Menjadi hitam penuh di Mode Terang
                                  fontSize: 20,
                                  height: 2.0,
                                ),
                              ),
                            ),
                            const SizedBox(height: 12),
                            Text(
                              tataCara['latin']!,
                              style: TextStyle(
                                color: mainTextColor.withValues(alpha: 0.9),
                                fontSize: 13,
                                fontStyle: FontStyle.italic,
                                height: 1.4,
                              ),
                            ),
                            Divider(
                              color: isLightMode
                                  ? const Color(0xffcbd5e1)
                                  : Colors.white10,
                              height: 16,
                            ),
                            Text(
                              tataCara['arti']!,
                              style: TextStyle(
                                color: isLightMode
                                    ? const Color(0xff475569)
                                    : Colors.white60,
                                fontSize: 12,
                                height: 1.4,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                    if (tataCara['title'] == 'I\'tidal') ...[
                      const SizedBox(height: 12),
                      Text(
                        tataCara['extraDesc']!,
                        style: TextStyle(
                          color: subTextColor,
                          fontSize: 13,
                          height: 1.4,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: innerCardColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Text(
                                tataCara['extraArabic']!,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.amiri(
                                  color:
                                      arabicTextColor, // PERUBAHAN: Menjadi hitam penuh di Mode Terang
                                  fontSize: 20,
                                  height: 2.0,
                                ),
                              ),
                            ),
                            const SizedBox(height: 12),
                            Text(
                              tataCara['extraLatin']!,
                              style: TextStyle(
                                color: mainTextColor.withValues(alpha: 0.9),
                                fontSize: 13,
                                fontStyle: FontStyle.italic,
                                height: 1.4,
                              ),
                            ),
                            Divider(
                              color: isLightMode
                                  ? const Color(0xffcbd5e1)
                                  : Colors.white10,
                              height: 16,
                            ),
                            Text(
                              tataCara['extraArti']!,
                              style: TextStyle(
                                color: isLightMode
                                    ? const Color(0xff475569)
                                    : Colors.white60,
                                fontSize: 12,
                                height: 1.4,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ],
                ),
              );
            }),
          ],
          const SizedBox(height: 24),
          Row(
            children: [
              Icon(Icons.info_outline, color: accentColor, size: 18),
              const SizedBox(width: 6),
              Text(
                "Keterangan",
                style: TextStyle(
                  color: accentColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: cardColor,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: isLightMode
                    ? const Color(0xffe2e8f0)
                    : Colors.teal.withValues(alpha: 0.2),
              ),
            ),
            child: Text(
              "Shalat Maghrib dikerjakan sebanyak 3 rakaat. Bacaan surat pada dua rakaat pertama dikerjakan secara keras (jahr). Waktunya dimulai sejak terbenamnya matahari hingga hilangnya awan merah (syafaq) di ufuk barat.",
              style: TextStyle(
                color: isLightMode ? const Color(0xff475569) : Colors.white60,
                fontSize: 13,
                height: 1.5,
              ),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
