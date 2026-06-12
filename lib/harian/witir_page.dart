import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WitirPage extends StatefulWidget {
  const WitirPage({super.key});

  @override
  State<WitirPage> createState() => _WitirPageState();
}

class _WitirPageState extends State<WitirPage> {
  String _selectedOption = 'Niat Shalat Witir';

  final List<String> _dropdownOptions = [
    'Niat Shalat Witir',
    'Tata Cara Witir 2 Rakaat',
    'Tata Cara Witir 1 Rakaat',
  ];

  // Data Tata Cara Shalat Witir 2 Rakaat (Bagian Pertama)
  final List<Map<String, dynamic>> _tataCara2RakaatData = [
    {
      'header': 'Rakaat 1 - Langkah 1',
      'title': 'Niat dan Berdiri Tegak',
      'desc':
          'Berdiri tegak menghadap kiblat dan memantapkan niat di dalam hati untuk melaksanakan shalat sunnah Witir dua rakaat.',
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
          "Allah Maha Besar lagi Sempurna Kebesaran-Nya, segala puji bagi Allah sebanyak-banyaknya. Dan Maha Suci Allah sepanjang pagi dan sore. Kubalikkan wajahku kepada Dzat yang menciptakan langit dan bumi dengan keadaan lurus dan berserah diri, dan aku bukanlah dari golongan orang-orang musyrik. Sesungguhnya shalatku, ibadahku, hidupku dan matiku hanya untuk Allah, Tuhan semesta alam. Tidak ada sekutu bagi-Nya, dan dengan yang demikian itulah aku diperintahkan, and aku adalah termasuk orang-orang Muslim.",
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
          'Disunnahkan membaca Surat Al-Kafirun pada rakaat pertama dan Surat Al-Ikhlas pada rakaat kedua setelah Al-Fatihah.',
      'hasRead': false,
    },
    {
      'header': 'Rakaat 1 - Langkah 6',
      'title': 'Rukuk',
      'desc':
          'Membungkuk dengan tertib (tumaninah) dan membaca tasbih rukuk secara lengkap (3x):',
      'hasRead': true,
      'arabic': "سُبْحَانَ رَبِّيَ الْعَظِيمِ وَبِحَمْدِهِ",
      'latin': "Subhaana rabbiyal 'adziimi wa bihamdih. (3x)",
      'arti': "Maha Suci Tuhanku Yang Maha Agung dan dengan memuji-Nya.",
    },
    {
      'header': 'Rakaat 1 - Langkah 7',
      'title': 'I\'tidal',
      'desc':
          'Bangkit tegak dari rukuk (I\'tidal) dan membaca doa setelah tegak berdiri:',
      'hasRead': true,
      'arabic':
          "سَمِعَ اللهُ لِمَنْ حَمِدَهُ. رَبَّنَا لَكَ الْحَمْدُ مِلْءُ السَّمَاوَاتِ وَمِلْءُ الْأَرْضِ وَمِلْءُ مَا شِئْتَ مِنْ شَيْءٍ بَعْدُ",
      'latin':
          "Sami'allaahu liman chamidah. Rabbanaa lakal-hamdu mil'us-samaawaati wa mil'ul-ardhi wa mil'u maa syi'ta min syai'in ba'du.",
      'arti':
          "Allah mendengar orang yang memuji-Nya. Ya Tuhan kami, bagi-Mu segala puji, sepenuh langit dan sepenuh bumi, serta sepenuh apa yang Engkau kehendaki setelah itu.",
    },
    {
      'header': 'Rakaat 1 - Langkah 8',
      'title': 'Sujud',
      'desc':
          'Sujud dengan tenang dan membaca tasbih sujud secara lengkap (3x):',
      'hasRead': true,
      'arabic': "سُبْحَانَ رَبِّيَ الْأَعْلَىٰ وَبِحَمْدِهِ",
      'latin': "Subhaana rabbiyal a'laa wa bihamdih. (3x)",
      'arti': "Maha Suci Tuhanku Yang Maha Tinggi dan dengan memuji-Nya.",
    },
    {
      'header': 'Rakaat 1 - Langkah 9',
      'title': 'Duduk di Antara Dua Sujud',
      'desc':
          'Bangun dari sujud pertama lalu duduk dengan tenang dan membaca doa lengkap:',
      'hasRead': true,
      'arabic':
          "رَبِّ اغْفِرْ لِيْ وَارْحَمْنِيْ وَاجْبُرْنِيْ وَارْفَعْنِيْ وَارْزُقْنِيْ وَاهْدِنِيْ وَعَافِنِيْ وَاعْفُ عَنِّيْ",
      'latin':
          "Rabbighfirlii warchamnii wajburnii warfa'nii warzuqnii wahdinii wa 'aafinii wa'fu 'annii.",
      'arti':
          "Ya Tuhanku, ampunilah aku, belas kasihanilah aku, cukupkanlah kekuranganku, tinggikanlah derajatku, berilah aku rezeki, berilah aku petunjuk, sehatkanlah aku, dan ampunilah aku.",
    },
    {
      'header': 'Rakaat 1 - Langkah 10',
      'title': 'Sujud Kedua',
      'desc':
          'Sujud dengan tenang dan membaca tasbih sujud secara lengkap (3x):',
      'hasRead': true,
      'arabic': "سُبْحَانَ رَبِّيَ الْأَعْلَىٰ وَبِحَمْدِهِ",
      'latin': "Subhaana rabbiyal a'laa wa bihamdih. (3x)",
      'arti': "Maha Suci Tuhanku Yang Maha Tinggi dan dengan memuji-Nya.",
    },
    {
      'header': 'Rakaat 2 - Langkah 1',
      'title': 'Berdiri untuk Rakaat Kedua',
      'desc':
          'Bangkit berdiri tegak untuk memulai rakaat kedua, kemudian mengulangi gerakan membaca Al-Fatihah dan Surat Pendek (Surat Al-Ikhlas), dilanjutkan Rukuk, I\'tidal, Sujud, Duduk, Dan sujud kembali',
      'hasRead': false,
    },
    {
      'header': 'Rakaat 2 - Langkah 2',
      'title': 'Tasyahud Akhir',
      'desc':
          'Setelah sujud kedua pada rakaat kedua, lakukan duduk tasyahud akhir dengan khusyuk dan membaca bacaan tasyahud akhir lengkap beserta shalawat:',
      'hasRead': true,
      'arabic':
          "التَّحِيَّاتُ الْمُبَارَكَاتُ الصَّلَوَاتُ الطَّيِّبَاتُ لِلَّهِ، السَّلَامُ عَلَيْكَ أَيُّهَا النَّبِيُّ وَرَحْمَةُ اللهِ وَبَرَكَاتُهُ، السَّلَامُ عَلَيْنَا وَعَلَىٰ عِبَادِ اللهِ الصَّالِحِينَ. أَشْهَدُ أَنْ لَا إِلَٰهَ إِلَّا اللهُ وَأَشْهَدُ أَنَّ مُحَمَّدًا رَسُولُ اللهِ. اللَّهُمَّ صَلِّ عَلَىٰ مُحَمَّدٍ وَعَلَىٰ آلِ مُحَمَّدٍ كَمَا صَلَّيْتَ عَلَىٰ إِبْرَاهِيمَ وَعَلَىٰ آلِ إِبْرَاهِيمَ وَبَارِكْ عَلَىٰ مُحَمَّدٍ وَعَلَىٰ آلِ مُحَمَّدٍ كَمَا بَارَكْتَ عَلَىٰ إِبْرَاهِيمَ وَعَلَىٰ آلِ إِبْرَاهِيمَ فِي الْعَالَمِينَ إِنَّكَ حَمِيدٌ مَجِيدٌ",
      'latin':
          "At-tahiyyaatul mubaarakatush-shalawaatuth-thayyibaatu lillaah. As-salaamu 'alaika ayyuhan-nabiyyu wa rahmatullaahi wa barakaatuh. As-salaamu 'alaina wa 'alaa 'ibaadillaahish-shaalihiin. Asyhadu allaa ilaaha illallaah, wa asyhadu anna Muhammadar-rasuulullaah. Allaahumma shalli 'alaa Muhammad wa 'alaa aali Muhammad, kamaa shallaita 'alaa Ibraahiim wa 'alaa aali Ibraahiim. Wa baarik 'alaa Muhammad wa 'alaa aali Muhammad, kamaa baarakta 'alaa Ibraahiim wa 'alaa aali Ibraahiim, fil-'aalamiina innaka hamiidum-majiid.",
      'arti':
          "Segala penghormatan, keberkahan, shalawat, dan kebaikan hanyalah milik Allah. Semoga kesejahteraan, rahmat Allah, dan berkah-Nya tercurah kepadamu, wahai Nabi. Semoga Kesejahteraan tercurah kepada kami dan kepada hamba-hamba Allah yang saleh. Aku bersaksi bahwa tidak ada Tuhan selain Allah, dan aku bersaksi bahwa Muhammad adalah utusan Allah. Ya Allah, limpahkanlah rahmat kepada Nabi Muhammad dan kepada keluarga Nabi Muhammad, sebagaimana Engkau telah melimpahkan rahmat kepada Nabi Ibrahim dan keluarga Nabi Ibrahim. Dan berilah keberkahan kepada Nabi Muhammad dan keluarga Nabi Muhammad, sebagaimana Engkau telah memberikan keberkahan kepada Nabi Ibrahim dan keluarga Nabi Ibrahim. Di seluruh alam semesta, sesungguhnya Engkau Maha Terpuji lagi Maha Mulia.",
    },
    {
      'header': 'Rakaat 2 - Langkah 3',
      'title': 'Salam',
      'desc':
          'Memalingkan wajah ke kanan sampai pipi kanan terlihat dari belakang, lalu memalingkan wajah ke kiri sambil membaca:',
      'hasRead': true,
      'arabic': "السَّلَامُ عَلَيْكُمْ وَرَحْمَةُ اللهِ",
      'latin': "As-salaamu 'alaikum wa rahmatullaah.",
      'arti': "Semoga keselamatan dan rahmat Allah tercurah kepadamu.",
    },
  ];

  // Data Tata Cara Shalat Witir 1 Rakaat (Penutup)
  final List<Map<String, dynamic>> _tataCara1RakaatData = [
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
          "Allah Maha Besar lagi Sempurna Kebesaran-Nya, segala puji bagi Allah sebanyak-banyaknya. Dan Maha Suci Allah sepanjang pagi dan sore. Kubalikkan wajahku kepada Dzat yang menciptakan langit dan bumi dengan keadaan lurus dan berserah diri, dan aku bukanlah dari golongan orang-orang musyrik. Sesungguhnya shalatku, ibadahku, hidupku dan matiku hanya untuk Allah, Tuhan semesta alam. Tidak ada sekutu bagi-Nya, dan dengan yang demikian itulah aku diperintahkan, and aku adalah termasuk orang-orang Muslim.",
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
          'Disunnahkan Membaca tiga surat sekaligus - Al-ikhlas, Al-falaq dan An-nas setelah Al-Fatihah.',
      'hasRead': false,
    },
    {
      'header': 'Rakaat 1 - Langkah 6',
      'title': 'Rukuk',
      'desc':
          'Membungkuk dengan tertib (tumaninah) dan membaca tasbih rukuk secara lengkap (3x):',
      'hasRead': true,
      'arabic': "سُبْحَانَ رَبِّيَ الْعَظِيمِ وَبِحَمْدِهِ",
      'latin': "Subhaana rabbiyal 'adziimi wa bihamdih. (3x)",
      'arti': "Maha Suci Tuhanku Yang Maha Agung dan dengan memuji-Nya.",
    },
    {
      'header': 'Rakaat 1 - Langkah 7',
      'title': 'I\'tidal',
      'desc':
          'Bangkit tegak dari rukuk (I\'tidal), CATATAN : Disunnahkan membaca (Qunut) Setelah I\'tidal ini Cuma pada saat paruh kedua bulan ramadan',
      'hasRead': true,
      'arabic':
          "سَمِعَ اللهُ لِمَنْ حَمِدَهُ. رَبَّنَا لَكَ الْحَمْدُ مِلْءُ السَّمَاوَاتِ وَمِلْءُ الْأَرْضِ وَمِلْءُ مَا شِئْتَ مِنْ شَيْءٍ بَعْدُ",
      'latin':
          "Sami'allaahu liman chamidah. Rabbanaa lakal-hamdu mil'us-samaawaati wa mil'ul-ardhi wa mil'u maa syi'ta min syai'in ba'du.",
      'arti':
          "Allah mendengar orang yang memuji-Nya. Ya Tuhan kami, bagi-Mu segala puji, sepenuh langit dan sepenuh bumi, serta sepenuh apa yang Engkau kehendaki setelah itu.",
    },
    {
      'header': 'Rakaat 1 - Langkah 8',
      'title': 'Sujud',
      'desc':
          'Sujud dengan tenang dan membaca tasbih sujud secara lengkap (3x):',
      'hasRead': true,
      'arabic': "سُبْحَانَ رَبِّيَ الْأَعْلَىٰ وَبِحَمْدِهِ",
      'latin': "Subhaana rabbiyal a'laa wa bihamdih. (3x)",
      'arti': "Maha Suci Tuhanku Yang Maha Tinggi dan dengan memuji-Nya.",
    },
    {
      'header': 'Rakaat 1 - Langkah 9',
      'title': 'Duduk di Antara Dua Sujud',
      'desc':
          'Bangun dari sujud pertama lalu duduk dengan tenang dan membaca doa lengkap:',
      'hasRead': true,
      'arabic':
          "رَبِّ اغْفِرْ لِيْ وَارْحَمْنِيْ وَاجْبُرْنِيْ وَارْفَعْنِيْ وَارْزُقْنِيْ وَاهْدِنِيْ وَعَافِنِيْ وَاعْفُ عَنِّيْ",
      'latin':
          "Rabbighfirlii warchamnii wajburnii warfa'nii warzuqnii wahdinii wa 'aafinii wa'fu 'annii.",
      'arti':
          "Ya Tuhanku, ampunilah aku, belas kasihanilah aku, cukupkanlah kekuranganku, tinggikanlah derajatku, berilah aku rezeki, berilah aku petunjuk, sehatkanlah aku, dan ampunilah aku.",
    },
    {
      'header': 'Rakaat 1 - Langkah 10',
      'title': 'Sujud Kedua',
      'desc':
          'Sujud dengan tenang dan membaca tasbih sujud secara lengkap (3x):',
      'hasRead': true,
      'arabic': "سُبْحَانَ رَبِّيَ الْأَعْلَىٰ وَبِحَمْدِهِ",
      'latin': "Subhaana rabbiyal a'laa wa bihamdih. (3x)",
      'arti': "Maha Suci Tuhanku Yang Maha Tinggi dan dengan memuji-Nya.",
    },
    {
      'header': 'Rakaat 2 - Langkah 2',
      'title': 'Tasyahud Akhir',
      'desc':
          'Setelah sujud kedua pada rakaat kedua, lakukan duduk tasyahud akhir dengan khusyuk dan membaca bacaan tasyahud akhir lengkap beserta shalawat:',
      'hasRead': true,
      'arabic':
          "التَّحِيَّاتُ الْمُبَارَكَاتُ الصَّلَوَاتُ الطَّيِّبَاتُ لِلَّهِ، السَّلَامُ عَلَيْكَ أَيُّهَا النَّبِيُّ وَرَحْمَةُ اللهِ وَبَرَكَاتُهُ، السَّلَامُ عَلَيْنَا وَعَلَىٰ عِبَادِ اللهِ الصَّالِحِينَ. أَشْهَدُ أَنْ لَا إِلَٰهَ إِلَّا اللهُ وَأَشْهَدُ أَنَّ مُحَمَّدًا رَسُولُ اللهِ. اللَّهُمَّ صَلِّ عَلَىٰ مُحَمَّدٍ وَعَلَىٰ آلِ مُحَمَّدٍ كَمَا صَلَّيْتَ عَلَىٰ إِبْرَاهِيمَ وَعَلَىٰ آلِ إِبْرَاهِيمَ وَبَارِكْ عَلَىٰ مُحَمَّدٍ وَعَلَىٰ آلِ مُحَمَّدٍ كَمَا بَارَكْتَ عَلَىٰ إِبْرَاهِيمَ وَعَلَىٰ آلِ إِبْرَاهِيمَ فِي الْعَالَمِينَ إِنَّكَ حَمِيدٌ مَجِيدٌ",
      'latin':
          "At-tahiyyaatul mubaarakatush-shalawaatuth-thayyibaatu lillaah. As-salaamu 'alaika ayyuhan-nabiyyu wa rahmatullaahi wa barakaatuh. As-salaamu 'alaina wa 'alaa 'ibaadillaahish-shaalihiin. Asyhadu allaa ilaaha illallaah, wa asyhadu anna Muhammadar-rasuulullaah. Allaahumma shalli 'alaa Muhammad wa 'alaa aali Muhammad, kamaa shallaita 'alaa Ibraahiim wa 'alaa aali Ibraahiim. Wa baarik 'alaa Muhammad wa 'alaa aali Muhammad, kamaa baarakta 'alaa Ibraahiim wa 'alaa aali Ibraahiim, fil-'aalamiina innaka hamiidum-majiid.",
      'arti':
          "Segala penghormatan, keberkahan, shalawat, dan kebaikan hanyalah milik Allah. Semoga kesejahteraan, rahmat Allah, dan berkah-Nya tercurah kepadamu, wahai Nabi. Semoga Kesejahteraan tercurah kepada kami dan kepada hamba-hamba Allah yang saleh. Aku bersaksi bahwa tidak ada Tuhan selain Allah, dan aku bersaksi bahwa Muhammad adalah utusan Allah. Ya Allah, limpahkanlah rahmat kepada Nabi Muhammad dan kepada keluarga Nabi Muhammad, sebagaimana Engkau telah melimpahkan rahmat kepada Nabi Ibrahim dan keluarga Nabi Ibrahim. Dan berilah keberkahan kepada Nabi Muhammad dan keluarga Nabi Muhammad, sebagaimana Engkau telah memberikan keberkahan kepada Nabi Ibrahim dan keluarga Nabi Ibrahim. Di seluruh alam semesta, sesungguhnya Engkau Maha Terpuji lagi Maha Mulia.",
    },
    {
      'header': 'Rakaat 2 - Langkah 3',
      'title': 'Salam',
      'desc':
          'Memalingkan wajah ke kanan sampai pipi kanan terlihat dari belakang, lalu memalingkan wajah ke kiri sambil membaca:',
      'hasRead': true,
      'arabic': "السَّلَامُ عَلَيْكُمْ وَرَحْمَةُ اللهِ",
      'latin': "As-salaamu 'alaikum wa rahmatullaah.",
      'arti': "Semoga keselamatan dan rahmat Allah tercurah kepadamu.",
    },
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
          "Shalat Witir",
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
          // Tags
          Wrap(
            spacing: 8,
            children: [
              _buildTag(
                "Shalat Sunnah",
                isLightMode ? const Color(0xffe2e8f0) : Colors.white10,
                subTextColor,
              ),
              _buildTag(
                "witir",
                isLightMode ? const Color(0xffe2e8f0) : Colors.white10,
                subTextColor,
              ),
              _buildTag(
                "penutup",
                isLightMode ? const Color(0xffe2e8f0) : Colors.white10,
                subTextColor,
              ),
            ],
          ),
          const SizedBox(height: 24),

          // Dropdown Menu (Persis Qobliyah)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            decoration: BoxDecoration(
              color: cardColor,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: isLightMode
                    ? const Color(0xffcbd5e1)
                    : Colors.teal.withOpacity(0.3),
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

          // Kondisional Tampilan Berdasarkan Dropdown
          if (_selectedOption == 'Niat Shalat Witir') ...[
            // === DESAIN NIAT 2 RAKAAT ===
            Center(
              child: Text(
                "Niat Shalat Witir (2 Rakaat)",
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
                "أُصَلِّيْ سُنَّةَ الوِتْرِ رَكْعَتَيْنِ لِلهِ تَعَالَى",
                textAlign: TextAlign.center,
                style: GoogleFonts.amiri(
                  color: arabicTextColor,
                  fontSize: 24,
                  height: 2.2,
                ),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              "Transliterasi (2 Rakaat)",
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
                "Ushallii sunnatal-witri rak'ataini lillaahi ta'aalaa.",
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
              "Terjemahan (2 Rakaat)",
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
                      : Colors.teal.withOpacity(0.2),
                ),
              ),
              child: Text(
                "Aku berniat shalat sunnah Witir dua rakaat karena Allah Ta'ala.",
                style: TextStyle(
                  color: subTextColor,
                  fontSize: 14,
                  height: 1.4,
                ),
              ),
            ),

            const SizedBox(height: 40),
            const Divider(color: Colors.grey, thickness: 0.5),
            const SizedBox(height: 24),

            // === DESAIN NIAT 1 RAKAAT ===
            Center(
              child: Text(
                "Niat Shalat Witir (1 Rakaat Penutup)",
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
                "أُصَلِّيْ سُنَّةَ الوِتْرِ رَكْعَةً لِلهِ تَعَالَى",
                textAlign: TextAlign.center,
                style: GoogleFonts.amiri(
                  color: arabicTextColor,
                  fontSize: 24,
                  height: 2.2,
                ),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              "Transliterasi (1 Rakaat)",
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
                "Ushallii sunnatal-witri rak'atan lillaahi ta'aalaa.",
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
              "Terjemahan (1 Rakaat)",
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
                      : Colors.teal.withOpacity(0.2),
                ),
              ),
              child: Text(
                "Aku berniat shalat sunnah Witir satu rakaat karena Allah Ta'ala.",
                style: TextStyle(
                  color: subTextColor,
                  fontSize: 14,
                  height: 1.4,
                ),
              ),
            ),
          ] else ...[
            // === TAMPILAN TATA CARA (Witir 2 Rakaat ATAU 1 Rakaat) ===
            Row(
              children: [
                Icon(Icons.format_list_numbered, color: accentColor, size: 18),
                const SizedBox(width: 8),
                Text(
                  _selectedOption == 'Tata Cara Witir 2 Rakaat'
                      ? "Urutan Panduan Shalat Witir 2 Rakaat"
                      : "Urutan Panduan Shalat Witir 1 Rakaat",
                  style: TextStyle(
                    color: accentColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            ...(_selectedOption == 'Tata Cara Witir 2 Rakaat'
                    ? _tataCara2RakaatData
                    : _tataCara1RakaatData)
                .map((step) {
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
                          step['header']!,
                          style: TextStyle(
                            color: accentColor,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          step['title']!,
                          style: TextStyle(
                            color: mainTextColor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          step['desc']!,
                          style: TextStyle(
                            color: subTextColor,
                            fontSize: 13,
                            height: 1.5,
                          ),
                        ),
                        if (step['hasRead'] == true) ...[
                          const SizedBox(height: 16),
                          _buildBacaanBox(
                            step['arabic']!,
                            step['latin']!,
                            step['arti']!,
                            innerCardColor,
                            mainTextColor,
                            subTextColor,
                            isLightMode,
                            arabicTextColor,
                          ),
                        ],
                      ],
                    ),
                  );
                })
                .toList(),
          ],

          const SizedBox(height: 24),
          // Seksi Keterangan Statis di bagian bawah (Sama persis dengan Qobliyah)
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
                    : Colors.teal.withOpacity(0.1),
              ),
            ),
            child: Text(
              "Shalat Witir adalah shalat sunnah penutup rangkaian ibadah shalat malam dengan jumlah rakaat ganjil (1, 3, 5, dst). Umumnya di masyarakat dikerjakan sebanyak 3 rakaat dengan metode dipisah: 2 rakaat salam kemudian langsung menyambung berdiri lagi mengerjakan 1 rakaat salam.",
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

  Widget _buildTag(String label, Color bg, Color text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(label, style: TextStyle(color: text, fontSize: 11)),
    );
  }

  Widget _buildBacaanBox(
    String ar,
    String lat,
    String art,
    Color innerBg,
    Color mainTxt,
    Color subTxt,
    bool isLight,
    Color arabicColor,
  ) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: innerBg,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              ar,
              textAlign: TextAlign.center,
              style: GoogleFonts.amiri(
                color: arabicColor,
                fontSize: 19,
                height: 2.2,
              ),
            ),
          ),
          const SizedBox(height: 12),
          Text(
            lat,
            style: TextStyle(
              color: mainTxt.withOpacity(0.9),
              fontSize: 13,
              fontStyle: FontStyle.italic,
              height: 1.4,
            ),
          ),
          Divider(
            color: isLight ? const Color(0xffcbd5e1) : Colors.white10,
            height: 16,
          ),
          Text(
            art,
            style: TextStyle(
              color: isLight ? const Color(0xff475569) : Colors.white60,
              fontSize: 12,
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}
