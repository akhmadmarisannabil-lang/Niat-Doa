import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IsyaPage extends StatefulWidget {
  const IsyaPage({super.key});

  @override
  State<IsyaPage> createState() => _IsyaPageState();
}

class _IsyaPageState extends State<IsyaPage> {
  // Opsi default yang terpilih
  String _selectedOption = 'Shalat Isya Sendirian';

  // 1. Data Niat Shalat Isya
  final Map<String, Map<String, String>> _niatData = {
    'Shalat Isya Sendirian': {
      'title': 'Niat (Sendirian)',
      'arabic':
          "أُصَلِّىْ فَرْضَ الْعِشَاءِ أَرْبَعَ رَكَعَاتٍ مُسْتَقْبِلَ الْقِبْلَةِ أَدَاءً لِلّٰهِ تَعَالَىٰ",
      'transliteration':
          "Ushallii fardhal-'isyaa'i arba'a raka'aatin mustaqbilal qiblati adaa'an lillaahi ta'aalaa.",
      'translation':
          "Aku berniat shalat fardhu Isya empat rakaat menghadap kiblat karena Allah Ta'ala.",
    },
    'Shalat Isya Sebagai Imam': {
      'title': 'Niat (Imam)',
      'arabic':
          "أُصَلِّىْ فَرْضَ الْعِشَاءِ أَرْبَعَ رَكَعَاتٍ مُسْتَقْبِلَ الْقِبْلَةِ اِمَامًا لِلّٰهِ تَعَالَىٰ",
      'transliteration':
          "Ushallii fardhal-'isyaa'i arba'a raka'aatin mustaqbilal qiblati imaaman lillaahi ta'aalaa.",
      'translation':
          "Aku berniat shalat fardhu Isya empat rakaat menghadap kiblat sebagai imam karena Allah Ta'ala.",
    },
    'Shalat Isya Sebagai Makmum': {
      'title': 'Niat (Makmum)',
      'arabic':
          "أُصَلِّىْ فَرْضَ الْعِشَاءِ أَرْبَعَ رَكَعَاتٍ مُسْتَقْبِلَ الْقِبْلَةِ مَأْمُوْمًا لِلّٰهِ تَعَالَىٰ",
      'transliteration':
          "Ushallii fardhal-'isyaa'i arba'a raka'aatin mustaqbilal qiblati ma'mūman lillaahi ta'aalaa.",
      'translation':
          "Aku berniat shalat fardhu Isya empat rakaat menghadap kiblat sebagai makmum karena Allah Ta'ala.",
    },
  };

  // 2. Data Tata Cara Shalat Isya Berurutan (4 Rakaat)
  final List<Map<String, dynamic>> _tataCaraUrutanData = [
    {
      'header': 'Rakaat 1 - Langkah 1',
      'title': 'Niat Shalat Isya',
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
          'Sedekapkan kedua tangan di dada, kemudian membaca Doa Iftitah secara lirih:',
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
          'Membaca Surat Al-Fatihah. Disunnahkan untuk melafalkannya dengan suara keras (jahr) bagi shalat sendiri atau imam:',
      'hasRead': true,
      'arabic':
          "بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ ﴿١﴾ الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ ﴿٢﴾ الرَّحْمَٰنِ الرَّحِيمِ ﴿٣﴾ مَالِكِ يَوْمِ الدِّينِ ﴿٤﴾ إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ ﴿٥﴾ اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ ﴿٦﴾ صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِم_ وَلَا الضَّالِّينَ ﴿٧﴾ آمينَ",
      'latin':
          "Bismillaahir-rachmaanir-rachiim. Al-hamdu lillaahi rabbil-'aalamiin. Ar-rachmaanir-rachiim. Maaliki yaumid-diin. Iyyaaka na'budu wa iyyaaka nasta'iin. Ihdinas-shiraathal-mustaqiim. Shiraathal-ladziina an'amta 'alaihim ghairil-maghghuubi 'alaihim waladh-dhaalliin. Aamiin.",
      'arti':
          "Dengan nama Allah Yang Maha Pengasih lagi Maha Penyayang. Segala puji bagi Allah, Tuhan seluruh alam. Yang Maha Pengasih lagi Maha Penyayang. Pemilik hari pembalasan. Hanya kepada Engkaulah kami menyembah dan hanya kepada Engkaulah kami memohon pertolongan. Tunjukkanlah kami jalan yang lurus. (yaitu) jalan orang-orang yang telah Engkau beri nikmat kepadanya; bukan (jalan) mereka yang dimurkai, dan bukan (pula jalan) mereka yang sesat. Kabulkanlah doa kami.",
    },
    {
      'header': 'Rakaat 1 - Langkah 5',
      'title': 'Membaca Surat Pendek',
      'desc':
          'Membaca salah satu surat pendek Al-Qur\'an dengan suara keras (jahr) bagi sendiri/imam, contohnya Al-Ikhlas:',
      'hasRead': true,
      'arabic':
          "بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ. قُلْ هُوَ اللَّهُ أَحَدٌ ﴿١﴾ اللَّهُ الصَّمَدُ ﴿٢﴾ لَمْ يَلِدْ وَلَم_ يُولَدْ ﴿٣﴾ وَلَمْ يَكُن لَّهُ كُفُوًا أَحَدٌ ﴿٤﴾",
      'latin':
          "Bismillaahir-rachmaanir-rachiim. Qul huwallaahu achad. Allaahush-shamad. Lam yalid walam yuulad. Walam yakul-lahu kufuwan achad.",
      'arti':
          "Dengan nama Allah Yang Maha Pengasih lagi Maha Penyayang. Katakanlah (Muhammad), 'Dialah Allah, Yang Maha Esa. Allah tempat meminta segala sesuatu. (Allah) tidak beranak dan tidak pula diperanakkan. Dan tidak ada sesuatu yang setara dengan Dia.'",
    },
    {
      'header': 'Rakaat 1 - Langkah 6',
      'title': 'Rukuk',
      'desc':
          'Mengucapkan takbir lalu rukuk secara thumakninah. Letakkan telapak tangan di lutut, ratakan punggung, lalu membaca tasbih (3x):',
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
          'Saat posisi tubuh sudah tegak sempurna, lanjutkan dengan membaca:',
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
          'Turun sujud secara thumakninah seraya bertakbir, lalu membaca tasbih sujud (3x):',
      'hasRead': true,
      'arabic': "سُبْحَانَ رَبِّيَ الْأَعْلَىٰ وَبِحَمْدِهِ",
      'latin': "Subhaana rabbiyal a'laa wa bihamdih. (3x)",
      'arti': "Maha Suci Tuhanku Yang Maha Tinggi dan dengan memuji-Nya.",
    },
    {
      'header': 'Rakaat 1 - Langkah 9',
      'title': 'Duduk di Antara Dua Sujud',
      'desc':
          'Bangkit dari sujud pertama lalu duduk tenang (posisi Iftirasy) seraya mengucap takbir dan membaca doa:',
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
          'Bangkit berdiri kembali untuk rakaat kedua. Bacaan Al-Fatihah dan Surat Pendek dibaca nyaring kembali (jahr) bagi sendiri/imam.',
      'hasRead': false,
    },
    {
      'header': 'Rakaat 2 - Langkah 12',
      'title': 'Rukuk, I\'tidal, Sujud 1 & 2 Rakaat Kedua',
      'desc':
          'Lakukan seluruh rangkaian gerakan komplit dari Rukuk sampai Sujud kedua di rakaat kedua secara tenang dan thumakninah.',
      'hasRead': false,
    },
    {
      'header': 'Rakaat 2 - Langkah 13',
      'title': 'Duduk Tasyahud Awal',
      'desc':
          'Setelah sujud kedua rakaat kedua, ambil posisi duduk Tasyahud Awal (Iftirasy). Acungkan jari telunjuk tangan kanan saat masuk lafal "Illallaah", lalu membaca doa tasyahud awal:',
      'hasRead': true,
      'arabic':
          "التَّحِيَّاتُ الْمُبَارَكَاتُ الصَّلَوَاتُ الطَّيِّبَاتُ لِلَّهِ، السَّلَامُ عَلَيْكَ أَيُّهَا النَّبِيُّ وَرَحْمَةُ اللَّهِ وَبَرَكَاتُهُ، السَّلَامُ عَلَيْنَا وَعَلَىٰ عِبَادِ اللَّهِ الصَّالِحِينَ، أَشْهَدُ أَنْ Lَا إِلَٰهَ إِلَّا اللَّهُ وَأَشْهَدُ أَنَّ مُحَمَّدًا رَسُولُ اللَّهِ. اللَّهُمَّ صَلِّ عَلَىٰ سَيِّدِنَا مُحَمَّدٍ وَعَلَىٰ آلِ سَيِّدِنَا مُحَمَّدٍ",
      'latin':
          "At-tahiyyaatul mubaarakatus-shalawaatuth-thayyibaatu lillaah. As-salaamu 'alaika ayyuhan-nabiyyu wa rachmatullaahi wa barakaatuh. As-salaamu 'alainaa wa 'alaa 'ibaadillaahis-shaalichiin. Asyhadu allaa ilaacha illallaach, wa asyhadu anna Muhammadar-rasuulullaach. Allaahumma shalli 'alaa sayyidinaa Muhammad wa 'alaa aali sayyidinaa Muhammad.",
      'arti':
          "Segala penghormatan, keberkahan, shalawat dan kebaikan adalah milik Allah. Semoga keselamatan, rahmat Allah dan berkah-Nya tetap tercurah kepadamu, wahai Nabi. Semoga keselamatan tetap tercurah kepada kami dan kepada hamba-hamba Allah yang saleh. Aku bersaksi bahwa tidak ada Tuhan selain Allah, dan aku bersaksi bahwa Muhammad adalah utusan Allah. Ya Allah, limpahkanlah rahmat kepada junjungan kami Nabi Muhammad dan kepada keluarganya.",
    },
    {
      'header': 'Rakaat 3 - Langkah 14',
      'title': 'Bangkit Menuju Rakaat Ketiga',
      'desc':
          'Bangkit berdiri kembali seraya bertakbir. Mulai rakaat ketiga ini, bacaan Al-Fatihah HANYA dibaca secara lirih (sirr) dan tidak perlu lagi membaca surat pendek.',
      'hasRead': false,
    },
    {
      'header': 'Rakaat 3 - Langkah 15',
      'title': 'Rukuk, I\'tidal, Sujud 1 & 2 Rakaat Ketiga',
      'desc':
          'Lakukan seluruh gerakan dari Rukuk, I\'tidal, hingga Sujud kedua untuk rakaat ketiga dengan tertib dan tenang.',
      'hasRead': false,
    },
    {
      'header': 'Rakaat 4 - Langkah 16',
      'title': 'Bangkit Menuju Rakaat Keempat (Terakhir)',
      'desc':
          'Bangkit berdiri kembali untuk masuk ke rakaat terakhir (rakaat keempat). Sama seperti rakaat ketiga, kamu HANYA membaca Surat Al-Fatihah saja secara lirih.',
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
          'Setelah menyelesaikan sujud terakhir, duduklah dengan posisi Tasyahud Akhir (Tawarruk). Jari telunjuk kanan diacungkan saat lafal "Illallaah", kemudian membaca doa Tasyahud Akhir lengkap beserta Shalawat Ibrahimiyah:',
      'hasRead': true,
      'arabic':
          "التَّحِيَّاتُ الْمُبَارَكَاتُ الصَّلَوَاتُ الطَّيِّبَاتُ لِلَّهِ، السَّلَامُ عَلَيْكَ أَيُّهَا النَّبِيُّ وَرَحْمَةُ اللَّهِ وَبَرَكَاتُهُ، السَّلَامُ عَلَيْنَا وَعَلَىٰ عِبَادِ اللَّهِ الصَّالِحِينَ، أَشْهَدُ أَنْ لَا إِلَٰهَ إِلَّا اللَّهُ وَأَشْهَدُ أَنَّ مُحَمَّدًا رَسُولُ اللَّهِ. اللَّهُمَّ صَلِّ عَلَىٰ سَيِّدِنَا مُحَمَّدٍ وَعَلَىٰ آلِ سَيِّدِنَا مُحَمَّدٍ كَمَا صَلَّيْتَ عَلَىٰ سَيِّدِنَا إِبْرَاهِيمَ وَعَلَىٰ آلِ سَيِّدِنَا إِبْرَاهِيمَ وَبَارِكْ عَلَىٰ سَيِّدِنَا مُحَمَّدٍ وَعَلَىٰ آلِ سَيِّدِنَا مُحَمَّدٍ كَمَا بَارَكْتَ عَلَىٰ سَيِّدِنَا إِبْرَاهِيمَ وَعَلَىٰ آلِ سَيِّدِنَا إِبْرَاهِيمَ فِي الْعَالَمِينَ إِنَّكَ حَمِيدٌ مَجِيدٌ",
      'latin':
          "At-tahiyyaatul mubaarakatus-shalawaatuth-thayyibaatu lillaah. As-salaamu 'alaika ayyuhan-nabiyyu wa rachmatullaahi wa barakaatuh. As-salaamu 'alainaa wa 'alaa 'ibaadillaahis-shaalichiin. Asyhadu allaa ilaacha illallaach, wa asyhadu anna Muhammadar-rasuulullaach. Allaahumma shalli 'alaa sayyidinaa Muhammad wa 'alaa aali sayyidinaa Muhammad, kamaa shallaita 'alaa sayyidinaa Ibraahiim wa 'alaa aali sayyidinaa Ibraahiim. Wa baarik 'alaa sayyidinaa Muhammad wa 'alaa aali sayyidinaa Muhammad, kamaa baarakta 'alaa sayyidinaa Ibraahiim wa 'alaa aali sayyidinaa Ibraahiim, fil-'aalamiina innaka chamiidum-majiid.",
      'arti':
          "Segala penghormatan, keberkahan, shalawat dan kebaikan adalah milik Allah. Semoga keselamatan, rahmat Allah dan berkah-Nya tetap tercurah kepadamu, wahai Nabi. Semoga keselamatan tetap tercurah kepada kami dan kepada hamba-hamba Allah yang saleh. Aku bersaksi bahwa tidak ada Tuhan selain Allah, dan aku bersaksi bahwa Muhammad adalah utusan Allah. Ya Allah, limpahkanlah rahmat kepada junjungan kami Nabi Muhammad dan kepada keluarganya, sebagaimana Engkau telah melimpahkan rahmat kepada junjungan kami Nabi Ibrahim dan keluarganya. Dan berilah berkah kepada junjungan kami Nabi Muhammad dan keluarganya, sebagaimana Engkau telah memberikan berkah kepada junjungan kami Nabi Ibrahim dan keluarganya, di seluruh alam semesta, sesungguhnya Engkau Maha Terpuji lagi Maha Mulia.",
    },
    {
      'header': 'Rakaat 4 - Langkah 19',
      'title': 'Salam',
      'desc':
          'Mengakhiri shalat dengan memalingkan wajah ke arah kanan terlebih dahulu, kemudian menengok ke kiri seraya mengucap:',
      'hasRead': true,
      'arabic': "السَّلَامُ عَلَيْكُمْ وَرَحْمَةُ اللهِ",
      'latin': "As-salaamu 'alaikum wa rachmatullaah.",
      'arti': "Semoga keselamatan dan rahmat Allah tercurah kepadamu.",
    },
  ];

  final List<String> _dropdownOptions = [
    'Shalat Isya Sendirian',
    'Shalat Isya Sebagai Imam',
    'Shalat Isya Sebagai Makmum',
    'Tata Cara Shalat Isya',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff090f16),
      appBar: AppBar(
        backgroundColor: const Color(0xff090f16),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white70),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Niat & Tata Cara Shalat Isya",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // Kategori Tag
          Wrap(
            spacing: 8,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  "Shalat Fardhu",
                  style: TextStyle(color: Colors.white70, fontSize: 11),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  "isya",
                  style: TextStyle(color: Colors.white70, fontSize: 11),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  "wajib",
                  style: TextStyle(color: Colors.white70, fontSize: 11),
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),

          // Dropdown Pilihan Menu
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            decoration: BoxDecoration(
              color: const Color(0xff111a24),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.teal.withOpacity(0.3), width: 1),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: _selectedOption,
                dropdownColor: const Color(0xff111a24),
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.tealAccent,
                ),
                style: const TextStyle(
                  color: Colors.white,
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

          // Render Konten Berdasarkan Dropdown
          if (_selectedOption != 'Tata Cara Shalat Isya') ...[
            Center(
              child: Text(
                _niatData[_selectedOption]!['title']!,
                style: const TextStyle(
                  color: Colors.tealAccent,
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
                color: const Color(0xff111a24),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                _niatData[_selectedOption]!['arabic']!,
                textAlign: TextAlign.center,
                style: GoogleFonts.amiri(
                  color: Colors.white.withOpacity(0.9),
                  fontSize: 24,
                  height: 2.2,
                ),
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              "Transliterasi",
              style: TextStyle(
                color: Colors.tealAccent,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 12),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xff111a24),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                _niatData[_selectedOption]!['transliteration']!,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                  fontStyle: FontStyle.italic,
                  height: 1.4,
                ),
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              "Terjemahan",
              style: TextStyle(
                color: Colors.tealAccent,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 12),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xff111a24),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.teal.withOpacity(0.2)),
              ),
              child: Text(
                _niatData[_selectedOption]!['translation']!,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                  height: 1.4,
                ),
              ),
            ),
          ] else ...[
            Row(
              children: const [
                Icon(
                  Icons.format_list_numbered,
                  color: Colors.tealAccent,
                  size: 18,
                ),
                SizedBox(width: 8),
                Text(
                  "Urutan Panduan Shalat Isya Lengkap",
                  style: TextStyle(
                    color: Colors.tealAccent,
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
                  color: const Color(0xff111a24),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.white12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tataCara['header']!,
                      style: const TextStyle(
                        color: Colors.tealAccent,
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      tataCara['title']!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      tataCara['desc']!,
                      style: const TextStyle(
                        color: Colors.white70,
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
                          color: const Color(0xff090f16),
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
                                  color: Colors.tealAccent,
                                  fontSize: 20,
                                  height: 2.0,
                                ),
                              ),
                            ),
                            const SizedBox(height: 12),
                            Text(
                              tataCara['latin']!,
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.9),
                                fontSize: 13,
                                fontStyle: FontStyle.italic,
                                height: 1.4,
                              ),
                            ),
                            const Divider(color: Colors.white10, height: 16),
                            Text(
                              tataCara['arti']!,
                              style: const TextStyle(
                                color: Colors.white60,
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
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 13,
                          height: 1.4,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: const Color(0xff090f16),
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
                                  color: Colors.tealAccent,
                                  fontSize: 20,
                                  height: 2.0,
                                ),
                              ),
                            ),
                            const SizedBox(height: 12),
                            Text(
                              tataCara['extraLatin']!,
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.9),
                                fontSize: 13,
                                fontStyle: FontStyle.italic,
                                height: 1.4,
                              ),
                            ),
                            const Divider(color: Colors.white10, height: 16),
                            Text(
                              tataCara['extraArti']!,
                              style: const TextStyle(
                                color: Colors.white60,
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
            }).toList(),
          ],

          const SizedBox(height: 24),
          // Keterangan
          Row(
            children: const [
              Icon(Icons.info_outline, color: Colors.tealAccent, size: 18),
              SizedBox(width: 6),
              Text(
                "Keterangan",
                style: TextStyle(
                  color: Colors.tealAccent,
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
              color: const Color(0xff111a24),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.teal.withOpacity(0.1)),
            ),
            child: const Text(
              "Shalat Isya dikerjakan sebanyak 4 rakaat. Bacaan surat pada dua rakaat pertama dikerjakan secara keras (jahr). Waktunya dimulai sejak hilangnya awan merah di ufuk barat hingga terbitnya fajar shadiq (waktu Subuh).",
              style: TextStyle(
                color: Colors.white60,
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
