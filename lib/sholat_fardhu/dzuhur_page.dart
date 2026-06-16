import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DzuhurPage extends StatefulWidget {
  const DzuhurPage({super.key});

  @override
  State<DzuhurPage> createState() => _DzuhurPageState();
}

class _DzuhurPageState extends State<DzuhurPage> {
  String _selectedOption = 'Shalat Dzuhur Sendirian';

  final Map<String, Map<String, String>> _niatData = {
    'Shalat Dzuhur Sendirian': {
      'title': 'Niat (Sendirian)',
      'arabic':
          "أُصَلِّيْ فَرْضَ الظُّهْرِ أَرْبَعَ رَكَعاَتٍ مُسْتَقْبِلَ الْقِبْلَةِ أَدَاءً لِلَّهِ تَعَالَى",
      'transliteration':
          "Ushallii fardhas-zhuhri arba'a raka'aatin mustaqbilal qiblati adaa'an lillaahi ta'aalaa.",
      'translation':
          "Aku berniat shalat fardhu Dzuhur empat rakaat menghadap kiblat karena Allah Ta'ala.",
    },
    'Shalat Dzuhur Sebagai Imam': {
      'title': 'Niat (Imam)',
      'arabic':
          "أُصَلِّيْ فَرْضَ الظُّهْرِ أَرْبَعَ رَكَعاَتٍ مُسْتَقْبِلَ الْقِبْلَةِ إِمَامًا لِلَّهِ تَعَالَى",
      'transliteration':
          "Ushallii fardhas-zhuhri arba'a raka'aatin mustaqbilal qiblati imaaman lillaahi ta'aalaa.",
      'translation':
          "Aku berniat shalat fardhu Dzuhur empat rakaat menghadap kiblat sebagai imam karena Allah Ta'ala.",
    },
    'Shalat Dzuhur Sebagai Makmum': {
      'title': 'Niat (Makmum)',
      'arabic':
          "أُصَلِّيْ فَرْضَ الظُّهْرِ أَرْبَعَ رَكَعاَتٍ مُسْتَقْبِلَ الْقِبْلَةِ مَأْمُوْمًا لِلَّهِ تَعَالَى",
      'transliteration':
          "Ushallii fardhas-zhuhri arba'a raka'aatin mustaqbilal qiblati ma'mūman lillaahi ta'aalaa.",
      'translation':
          "Aku berniat shalat fardhu Dzuhur empat rakaat menghadap kiblat sebagai makmum karena Allah Ta'ala.",
    },
  };

  final List<Map<String, dynamic>> _tataCaraUrutanData = [
    {
      'header': 'Rakaat 1 - Langkah 1',
      'title': 'Niat Shalat Dzuhur',
      'desc':
          'Berdiri tegak menghadap kiblat dan memantapkan niat di dalam hati sesuai pilihan peran (sendiri/imam/makmum).',
      'hasRead': false,
    },
    {
      'header': 'Rakaat 1 - Langkah 2',
      'title': 'Takbiratul Ihram',
      'desc':
          'Mengangkat kedua belah tangan sejajar daun telinga seraya membaca:',
      'hasRead': true,
      'arabic': "اللهُ أَكْبَرُ",
      'latin': "Allahu Akbar.",
      'arti': "Allah Maha Besar.",
    },
    {
      'header': 'Rakaat 1 - Langkah 3',
      'title': 'Doa Iftitah',
      'desc':
          'Sedekapkan kedua tangan di dada (tangan kanan di atas tangan kiri), kemudian membaca Doa Iftitah secara lirih:',
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
          'Dilanjutkan membaca Surat Al-Fatihah (bacaan dibaca secara lirih/tidak dikeraskan):',
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
          'Disunnahkan membaca surat atau ayat Al-Qur\'an secara lirih pada rakaat pertama dan kedua.',
      'hasRead': false,
    },
    {
      'header': 'Rakaat 1 - Langkah 6',
      'title': 'Rukuk',
      'desc':
          'Mengucapkan takbir lalu membungkukkan badan untuk Rukuk dengan thumakninah. Pegang lutut dengan kedua telapak tangan, ratakan punggung, lalu membaca tasbih (3x):',
      'hasRead': true,
      'arabic': "سُبْحَانَ رَبِّيَ الْعَظِيمِ وَبِحَمْدِهِ",
      'latin': "Subhaana rabbiyal 'adziimi wa bihamdih. (3x)",
      'arti': "Maha Suci Tuhanku Yang Maha Agung dan dengan memuji-Nya.",
    },
    {
      'header': 'Rakaat 1 - Langkah 7',
      'title': 'I\'tidal',
      'desc': 'Bangkit tegak dari rukuk seraya mengangkat tangan dan membaca:',
      'hasRead': true,
      'arabic': "سَمِعَ اللَّهُ لِمَنْ حَمِدَهُ",
      'latin': "Sami'allaahu liman chamidah.",
      'arti': "Allah mendengar orang yang memuji-Nya.",
      'extraDesc':
          'Saat posisi badan sudah berdiri tegak sempurna, lanjutkan membaca:',
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
          'Turun ke sujud dengan menempelkan dahi, hidung, kedua telapak tangan, kedua lutut, dan ujung jari kaki ke bumi seraya mengucap takbir. Baca tasbih sujud (3x):',
      'hasRead': true,
      'arabic': "سُبْحَانَ رَبِّيَ الْأَعْلَىٰ وَبِحَمْدِهِ",
      'latin': "Subhaana rabbiyal a'laa wa bihamdih. (3x)",
      'arti': "Maha Suci Tuhanku Yang Maha Tinggi dan dengan memuji-Nya.",
    },
    {
      'header': 'Rakaat 1 - Langkah 9',
      'title': 'Duduk di Antara Dua Sujud',
      'desc':
          'Bangun dari sujud pertama lalu duduk dengan tenang (posisi duduk Iftirasy) seraya mengucapkan takbir dan membaca doa:',
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
          'Sujud kembali seperti gerakan sujud pertama seraya mengucapkan takbir, lalu membaca tasbih sujud (3x):',
      'hasRead': true,
      'arabic': "سُبْحَانَ رَبِّيَ الْأَعْلَىٰ وَبِحَمْدِهِ",
      'latin': "Subhaana rabbiyal a'laa wa bihamdih. (3x)",
      'arti': "Maha Suci Tuhanku Yang Maha Tinggi dan dengan memuji-Nya.",
    },
    {
      'header': 'Rakaat 2 - Langkah 11',
      'title': 'Bangkit Menuju Rakaat Kedua',
      'desc':
          'Bangkit dari sujud kedua untuk berdiri kembali melanjutkan rakaat kedua. Tangan bersedekap, membaca kembali Surat Al-Fatihah dan Surat Pendek pilihan secara lirih.',
      'hasRead': false,
    },
    {
      'header': 'Rakaat 2 - Langkah 12',
      'title': 'Rukuk, I\'tidal, Sujud 1 & 2 Rakaat Kedua',
      'desc':
          'Melakukan gerakan Rukuk, I\'tidal, Sujud pertama, duduk di antara dua sujud, dan sujud kedua rakaat kedua dengan tertib beserta bacaan doa masing-masing seperti rakaat pertama.',
      'hasRead': false,
    },
    {
      'header': 'Rakaat 2 - Langkah 13',
      'title': 'Duduk Tasyahud Awal',
      'desc':
          'Setelah sujud kedua rakaat kedua, ambil posisi duduk Tasyahud Awal (Iftirasy). Letakkan tangan di paha, acungkan jari telunjuk tangan kanan saat membaca kalimat "Illallaah", lalu membaca doa tasyahud awal:',
      'hasRead': true,
      'arabic':
          "التَّحِيَّاتُ الْمُبَارَكَاتُ الصَّلَوَاتُ الطَّيِّبَاتُ لِلَّهِ، السَّلَامُ عَلَيْكَ أَيُّهَا النَّبِيُ` وَرَحْمَةُ اللَّهِ وَبَرَكَاتُهُ، السَّلَامُ عَلَيْنَا وَعَلَىٰ عِبَادِ اللَّهِ الصَّالِحِينَ، أَشْهَدُ أَنْ لَا إِلَٰهَ إِلَّا اللَّهُ وَأَشْهَدُ أَنَّ مُحَمَّدًا رَسُولُ اللَّهِ. اللَّهُمَّ صَلِّ عَلَىٰ سَيِّدِنَا مُحَمَّدٍ وَعَلَىٰ آلِ سَيِّدِنَا مُحَمَّدٍ",
      'latin':
          "At-tahiyyaatul mubaarakatus-shalawaatuth-thayyibaatu lillaah. As-salaamu 'alaika ayyuhan-nabiyyu wa rachmatullaahi wa barakaatuh. As-salaamu 'alainaa wa 'alaa 'ibaadillaahis-shaalichiin. Asyhadu allaa ilaacha illallaach, wa asyhadu anna Muhammadar-rasuulullaach. Allaahumma shalli 'alaa sayyidinaa Muhammad wa 'alaa aali sayyidinaa Muhammad.",
      'arti':
          "Segala penghormatan, keberkahan, shalawat dan kebaikan adalah milik Allah. Semoga keselamatan, rahmat Allah dan berkah-Nya tetap tercurah kepadamu, wahai Nabi. Semoga keselamatan tetap tercurah kepada kami dan kepada hamba-hamba Allah yang saleh. Aku bersaksi bahwa tidak ada Tuhan selain Allah, dan aku bersaksi bahwa Muhammad adalah utusan Allah. Ya Allah, limpahkanlah rahmat kepada junjungan kami Nabi Muhammad dan kepada keluarganya.",
    },
    {
      'header': 'Rakaat 3 - Langkah 14',
      'title': 'Bangkit Menuju Rakaat Ketiga',
      'desc':
          'Selesai tasyahud awal, bangkit berdiri tegak kembali seraya mengucapkan takbir dan mengangkat tangan sejajar telinga. Di rakaat ketiga ini, kamu HANYA membaca Surat Al-Fatihah saja secara lirih (tidak membaca surat pendek lagi).',
      'hasRead': false,
    },
    {
      'header': 'Rakaat 3 - Langkah 15',
      'title': 'Rukuk, I\'tidal, Sujud 1 & 2 Rakaat Ketiga',
      'desc':
          'Lakukan seluruh rangkaian gerakan Rukuk, I\'tidal, Sujud pertama, duduk di antara dua sujud, serta sujud kedua untuk rakaat ketiga dengan tertib.',
      'hasRead': false,
    },
    {
      'header': 'Rakaat 4 - Langkah 16',
      'title': 'Bangkit Menuju Rakaat Keempat',
      'desc':
          'Bangkit berdiri kembali untuk rakaat terakhir (rakaat keempat). Sama seperti rakaat ketiga, di rakaat keempat ini kamu HANYA membaca Surat Al-Fatihah saja secara lirih.',
      'hasRead': false,
    },
    {
      'header': 'Rakaat 4 - Langkah 17',
      'title': 'Rukuk, I\'tidal, Sujud 1 & 2 Rakaat Keempat',
      'desc':
          'Lakukan gerakan Rukuk, I\'tidal, Sujud pertama, duduk di antara dua sujud, dan gerakan sujud terakhir di rakaat keempat secara tertib beserta bacaannya.',
      'hasRead': false,
    },
    {
      'header': 'Rakaat 4 - Langkah 18',
      'title': 'Duduk Tasyahud Akhir',
      'desc':
          'Setelah sujud terakhir, ambil posisi duduk Tasyahud Akhir (Tawurruk). Acungkan telunjuk tangan kanan saat membaca lafal "Illallaah", lalu membaca bacaan Tasyahud Akhir lengkap dengan shalawat Ibrahimiyah:',
      'hasRead': true,
      'arabic':
          "التَّحِيَّاتُ الْمُبَارَكَاتُ الصَّلَوَاتُ الطَّيِّبَاتُ لِلَّهِ، السَّلَامُ عَلَيْكَ أَيُّهَا النَّبِيُّ وَرَحْمَةُ اللَّهِ وَبَرَكَاتُهُ، السَّلَامُ عَلَيْنَا وَعَلَىٰ عِبَادِ اللَّهِ الصَّالِحِينَ، أَشْهَدُ أَنْ لَا إِلَٰهَ إِلَّا اللَّهُ وَأَشْهَدُ أَنَّ مُحَمَّا رَسُولُ اللَّهِ. اللَّهُمَّ صَلِّ عَلَىٰ سَيِّدِنَا مُحَمَّدٍ وَعَلَىٰ آلِ سَيِّدِنَا مُحَمَّدٍ كَمَا صَلَّيْتَ عَلَىٰ سَيِّدِنَا إِبْرَاهِيمَ وَعَلَىٰ آلِ سَيِّدِنَا إِبْرَاهِيمَ وَبَارِكْ عَلَىٰ سَيِّدِنَا مُحَمَّدٍ وَعَلَىٰ آلِ سَيِّدِنَا مُحَمَّدٍ كَمَا بَارَكْتَ عَلَىٰ سَيِّدِنَا إِبْرَاهِيمَ وَعَلَىٰ آلِ سَيِّدِنَا إِبْرَاهِيمَ فِي الْعَالَمِينَ إِنَّكَ حَمِيدٌ مَجِيدٌ",
      'latin':
          "At-tahiyyaatul mubaarakatus-shalawaatuth-thayyibaatu lillaah. As-salaamu 'alaika ayyuhan-nabiyyu wa rachmatullaahi wa barakaatuh. As-salaamu 'alainaa wa 'alaa 'ibaadillaahis-shaalichiin. Asyhadu allaa ilaacha illallaach, wa asyhadu anna Muhammadar-rasuulullaach. Allaahumma shalli 'alaa sayyidinaa Muhammad wa 'alaa aali sayyidinaa Muhammad, kamaa shallaita 'alaa sayyidinaa Ibraahiim wa 'alaa aali sayyidinaa Ibraahiim. Wa baarik 'alaa sayyidinaa Muhammad wa 'alaa aali sayyidinaa Muhammad, kamaa baarakta 'alaa sayyidinaa Ibraahiim wa 'alaa aali sayyidinaa Ibraahiim, fil-'aalamiina innaka chamiidum-majiid.",
      'arti':
          "Segala penghormatan, keberkahan, shalawat dan kebaikan adalah milik Allah. Semoga keselamatan, rahmat Allah dan berkah-Nya tetap tercurah kepadamu, wahai Nabi. Semoga keselamatan tetap tercurah kepada kami dan kepada hamba-hamba Allah yang saleh. Aku bersaksi bahwa tidak ada Tuhan selain Allah, dan aku bersaksi bahwa Muhammad adalah utusan Allah. Ya Allah, limpahkanlah rahmat kepada junjungan kami Nabi Muhammad dan kepada keluarganya, sebagaimana Engkau telah melimpahkan rahmat kepada junjungan kami Nabi Ibrahim dan keluarganya. Dan berilah berkah kepada junjungan kami Nabi Muhammad dan keluarganya, sebagaimana Engkau telah memberikan berkah kepada junjungan kami Nabi Ibrahim dan keluarganya, di seluruh alam semesta, sesungguhnya Engkau Maha Terpuji lagi Maha Mulia.",
    },
    {
      'header': 'Rakaat 4 - Langkah 19',
      'title': 'Salam',
      'desc':
          'Mengakhiri shalat dengan memalingkan wajah ke kanan hingga pipi terlihat dari belakang, kemudian menengok ke kiri seraya mengucapkan:',
      'hasRead': true,
      'arabic': "السَّلَامُ عَلَيْكُمْ وَرَحْمَةُ اللهِ",
      'latin': "As-salaamu 'alaikum wa rachmatullaah.",
      'arti': "Semoga keselamatan dan rahmat Allah tercurah kepadamu.",
    },
  ];

  final List<String> _dropdownOptions = [
    'Shalat Dzuhur Sendirian',
    'Shalat Dzuhur Sebagai Imam',
    'Shalat Dzuhur Sebagai Makmum',
    'Tata Cara Shalat Dzuhur',
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

    // =========================================================================
    // UPDATE UTAMA: Inisialisasi warna teks arab adaptif tema mengikuti AsharPage
    // =========================================================================
    final Color arabicTextColor = isLightMode ? Colors.black87 : Colors.white;

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
          "Niat & Tata Cara Shalat Dzuhur",
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
                  "dzuhur",
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

          if (_selectedOption != 'Tata Cara Shalat Dzuhur') ...[
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
                  color:
                      arabicTextColor, // Diubah menggunakan variabel terpusat
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
                  "Urutan Panduan Shalat Dzuhur Lengkap",
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
                                      arabicTextColor, // Diubah menggunakan variabel terpusat
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
                                      arabicTextColor, // Diubah menggunakan variabel terpusat
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
              "Shalat Dzuhur dilakukan sebanyak 4 rakaat dengan merendahkan suara bacaannya (sirr). Waktunya dimulai sejak matahari tergelincir ke barat hingga bayangan suatu benda sama panjang dengan benda aslinya.",
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
