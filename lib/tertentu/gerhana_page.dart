import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GerhanaPage extends StatefulWidget {
  const GerhanaPage({super.key});

  @override
  State<GerhanaPage> createState() => _GerhanaPageState();
}

class _GerhanaPageState extends State<GerhanaPage> {
  // Menggunakan satu dropdown menu tunggal terintegrasi
  String _selectedOption = 'Gerhana Matahari (Kusuf) - Sendirian';

  final List<String> _dropdownOptions = [
    'Gerhana Matahari (Kusuf) - Sendirian',
    'Gerhana Matahari (Kusuf) - Sebagai Imam',
    'Gerhana Matahari (Kusuf) - Sebagai Makmum',
    'Gerhana Bulan (Khusuf) - Sendirian',
    'Gerhana Bulan (Khusuf) - Sebagai Imam',
    'Gerhana Bulan (Khusuf) - Sebagai Makmum',
    'Tata Cara Shalat Gerhana',
  ];

  final Map<String, Map<String, String>> _niatData = {
    'Gerhana Matahari (Kusuf) - Sendirian': {
      'title': 'Niat (Sendirian)',
      'arabic':
          "أُصَلِّى Sُنَّةً لِكُسُوْفِ الشَّمْسِ رَكْعَتَيْنِ لِلّٰهِ تَعَالَىٰ",
      'transliteration':
          "Ushallii sunnatal-likusuufish-syamsi rak'ataini lillaahi ta'aalaa.",
      'translation':
          "Aku berniat shalat sunnah gerhana matahari dua rakaat karena Allah Ta'ala.",
    },
    'Gerhana Matahari (Kusuf) - Sebagai Imam': {
      'title': 'Niat (Imam)',
      'arabic':
          "أُصَلِّى Sُنَّةً لِكُسُوْفِ الشَّمْسِ رَكْعَتَيْنِ إِمَامًا لِلّٰهِ Tَعَالَىٰ",
      'transliteration':
          "Ushallii sunnatal-likusuufish-syamsi rak'ataini imaaman lillaahi ta'aalaa.",
      'translation':
          "Aku berniat shalat sunnah gerhana matahari dua rakaat sebagai imam karena Allah Ta'ala.",
    },
    'Gerhana Matahari (Kusuf) - Sebagai Makmum': {
      'title': 'Niat (Makmum)',
      'arabic':
          "أُصَلِّيْ Sُنَّةً لِكُسُوْفِ الشَّمْسِ رَكْعَتَيْنِ مَأْمُوْمًا لِلهِ Tَعَالَى",
      'transliteration':
          "Ushallii sunnatal-likusuufish-syamsi rak'ataini ma'muuman lillaahi ta'aalaa.",
      'translation':
          "Aku berniat shalat sunnah gerhana matahari dua rakaat sebagai makmum karena Allah Ta'ala.",
    },
    'Gerhana Bulan (Khusuf) - Sendirian': {
      'title': 'Niat (Sendirian)',
      'arabic':
          "أُصَلِّى Sُنَّةً لِخُسُوْفِ الْقَمَرِ رَكْعَتَيْنِ لِلّٰهِ Tَعَالَىٰ",
      'transliteration':
          "Ushallii sunnatal-likhusuufil-qamari rak'ataini lillaahi ta'aalaa.",
      'translation':
          "Aku berniat shalat sunnah gerhana bulan dua rakaat karena Allah Ta'ala.",
    },
    'Gerhana Bulan (Khusuf) - Sebagai Imam': {
      'title': 'Niat (Imam)',
      'arabic':
          "أُصَلِّى Sُنَّةً لِخُسُوْفِ الْقَمَرِ رَكْعَتَيْنِ إِمَامًا لِلّٰهِ Tَعَالَىٰ",
      'transliteration':
          "Ushallii sunnatal-likhusuufil-qamari rak'ataini imaaman lillaahi ta'aalaa.",
      'translation':
          "Aku berniat shalat sunnah gerhana bulan dua rakaat sebagai imam karena Allah Ta'ala.",
    },
    'Gerhana Bulan (Khusuf) - Sebagai Makmum': {
      'title': 'Niat (Makmum)',
      'arabic':
          "أُصَلِّى Sُنَّةً لِخُسُوْفِ الْقَمَرِ رَكْعَتَيْنِ مَأْمُوْمًا لِلّٰهِ Tَعَالَىٰ",
      'transliteration':
          "Ushallii sunnatal-likhusuufil-qamari rak'ataini ma'muuman lillaahi ta'aalaa.",
      'translation':
          "Aku berniat shalat sunnah gerhana bulan dua rakaat sebagai makmum karena Allah Ta'ala.",
    },
  };

  final List<Map<String, dynamic>> _tataCaraData = [
    {
      'header': 'Rakaat 1 - Langkah 1',
      'title': 'Takbiratul Ihram & Niat',
      'desc':
          'Berdiri tegak menghadap kiblat, memantapkan niat di dalam hati sesuai jenis gerhana dan peran, lalu mengangkat kedua tangan seraya mengucap takbir:',
      'hasRead': true,
      'arabic': "اللهُ أَكْبَرُ",
      'latin': "Allahu Akbar.",
      'arti': "Allah Maha Besar.",
    },
    {
      'header': 'Rakaat 1 - Langkah 2',
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
      'header': 'Rakaat 1 - Langkah 3',
      'title': 'Membaca Al-Fatihah & Surat Pendek',
      'desc':
          'dilanjutkan dengan Surat Al-Fatihah, lalu membaca surat pendek Al-Qur\'an (disunnahkan surat yang panjang jika mampu).',
      'hasRead': true,
      'arabic':
          "بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ ﴿١﴾ الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ ﴿٢﴾ الرَّحْمَٰنِ الرَّحِيمِ ﴿٣﴾ مَالِكِ يَوْمِ الدِّينِ ﴿٤﴾ إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ ﴿٥﴾ اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ ﴿٦﴾ صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّينَ ﴿٧﴾ آمينَ",
      'latin':
          "Bismillaahir-rachmaanir-rachiim. Al-hamdu lillaahi rabbil-'aalamiin. Ar-rachmaanir-rachiim. Maaliki yaumid-diin. Iyyaaka na'budu wa iyyaaka nasta'iin. Ihdinas-shiraathal-mustaqiim. Shiraathal-ladziina an'amta 'alaihim ghairil-maghghuubi 'alaihim waladh-dhaalliin.",
      'arti':
          "Dengan nama Allah Yang Maha Pengasih lagi Maha Penyayang. Segala puji bagi Allah, Tuhan seluruh alam. Yang Maha Pengasih lagi Maha Penyayang. Pemilik hari pembalasan. Hanya kepada Engkaulah kami menyembah dan hanya kepada Engkaulah kami memohon pertolongan. Tunjukkanlah kami jalan yang lurus. (yaitu) jalan orang-orang yang telah Engkau beri nikmat kepadanya; bukan (jalan) mereka yang dimurkai, dan bukan (pula jalan) mereka yang sesat.",
    },
    {
      'header': 'Rakaat 1 - langkah 4',
      'title': 'Rukuk Pertama',
      'desc':
          'Melakukan gerakan rukuk dengan tumaninah. Disunnahkan memperlama durasi rukuk dengan membaca tasbih:',
      'hasRead': true,
      'arabic': "سُبْحَانَ رَبِّيَ الْعَظِيمِ وَبِحَمْدِهِ",
      'latin': "Subhaana rabbiyal 'adziimi wa bihamdih.",
      'arti': "Maha Suci Tuhanku Yang Maha Agung dan dengan memuji-Nya.",
    },
    {
      'header': 'Rakaat 1 - Langkah 5',
      'title': 'I\'tidal Pertama (Bangkit dari Rukuk)',
      'desc': 'Bangkit berdiri tegak (i\'tidal) seraya mengucapkan:',
      'hasRead': true,
      'arabic': "سَمِعَ اللهُ لِمَنْ حَمِدَهُ. رَبَّنَا لَكَ الْحَمْدُ",
      'latin': "Sami'allaahu liman chamidah. Rabbanaa lakal-hamdu.",
      'arti':
          "Allah mendengar orang yang memuji-Nya. Ya Tuhan kami, bagi-Mu segala puji.",
    },
    {
      'header': 'Rakaat 1 - Langkah 6',
      'title': 'Berdiri Lagi & Membaca Al-Fatihah Kedua',
      'desc':
          'PERHATIAN: Setelah i\'tidal pertama, TIDAK LANGSUNG SUJUD. Anda kembali bersedekap tegak untuk membaca Surat Al-Fatihah kedua beserta surat pendek kembali.',
      'hasRead': true,
      'arabic':
          "بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ ﴿١﴾ الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ ﴿٢﴾ الرَّحْمَٰنِ الرَّحِيمِ ﴿٣﴾ مَالِكِ يَوْمِ الدِّينِ ﴿٤﴾ إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ ﴿٥﴾ اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ ﴿٦﴾ صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّينَ ﴿٧﴾ آمينَ",
      'latin':
          "Bismillaahir-rachmaanir-rachiim. Al-hamdu lillaahi rabbil-'aalamiin. Ar-rachmaanir-rachiim. Maaliki yaumid-diin. Iyyaaka na'budu wa iyyaaka nasta'iin. Ihdinas-shiraathal-mustaqiim. Shiraathal-ladziina an'amta 'alaihim ghairil-maghghuubi 'alaihim waladh-dhaalliin.",
      'arti':
          "Dengan nama Allah Yang Maha Pengasih lagi Maha Penyayang. Segala puji bagi Allah, Tuhan seluruh alam. Yang Maha Pengasih lagi Maha Penyayang. Pemilik hari pembalasan. Hanya kepada Engkaulah kami menyembah dan hanya kepada Engkaulah kami memohon pertolongan. Tunjukkanlah kami jalan yang lurus. (yaitu) jalan orang-orang yang telah Engkau beri nikmat kepadanya; bukan (jalan) mereka yang dimurkai, dan bukan (pula jalan) mereka yang sesat.",
    },
    {
      'header': 'Rakaat 1 - Langkah 7',
      'title': 'Rukuk Kedua',
      'desc':
          'Melakukan rukuk kembali (rukuk kedua dalam rakaat yang sama) dengan durasi yang sedikit lebih singkat dari rukuk pertama.',
      'hasRead': true,
      'arabic': "سُبْحَانَ رَبِّيَ الْعَظِيمِ وَبِحَمْدِهِ",
      'latin': "Subhaana rabbiyal 'adziimi wa bihamdih.",
      'arti': "Maha Suci Tuhanku Yang Maha Agung dan dengan memuji-Nya.",
    },
    {
      'header': 'Rakaat 1 - Langkah 8',
      'title': 'I\'tidal Kedua & Sujud Dua Kali',
      'desc':
          'Bangkit i\'tidal kedua, kemudian turun melakukan sujud pertama, duduk di antara dua sujud, dan sujud kedua seperti shalat biasa namun dengan durasi sujud yang lama.',
      'hasRead': true,
      'arabic': "سُبْحَانَ رَبِّيَ الْأَعْلَىٰ وَبِحَمْدِهِ",
      'latin': "Subhaana rabbiyal a'laa wa bihamdih.",
      'arti': "Maha Suci Tuhanku Yang Maha Tinggi dan dengan memuji-Nya.",
    },
    {
      'header': 'Rakaat 2 - Langkah 1',
      'title': 'Mengulangi Pola Rakaat yang Sama',
      'desc':
          'Bangkit berdiri ke rakaat kedua. Lakukan alur yang sama persis: Berdiri (Al-Fatihah + Surat) -> Rukuk I -> I\'tidal -> Berdiri Lagi (Al-Fatihah + Surat) -> Rukuk II -> I\'tidal -> Sujud, Duduk, Dan sujud kembali',
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

  @override
  Widget build(BuildContext context) {
    final bool isLightMode = Theme.of(context).brightness == Brightness.light;
    final bool isTataCara = _selectedOption == 'Tata Cara Shalat Gerhana';

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
        ? const Color(0xff475569)
        : Colors.white70;
    final Color chipBgColor = isLightMode
        ? const Color(0xffe2e8f0)
        : Colors.white10;
    final Color chipTextColor = isLightMode
        ? const Color(0xff64748b)
        : Colors.white70;
    final Color accentColor = isLightMode
        ? const Color(0xff0f766e)
        : Colors.tealAccent;
    final Color borderColor = isLightMode
        ? const Color(0xffe2e8f0)
        : Colors.teal.withValues(alpha: 0.2);
    final Color arabicTextColor = isLightMode
        ? Colors.black
        : Colors.white.withValues(alpha: 0.9);

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
          isTataCara ? "Tata Cara Shalat Gerhana" : "Niat Shalat Gerhana",
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
              _buildChip("Shalat Sunnah", chipBgColor, chipTextColor),
              _buildChip("gerhana", chipBgColor, chipTextColor),
              _buildChip("kusuf-khusuf", chipBgColor, chipTextColor),
            ],
          ),
          const SizedBox(height: 24),

          // Dropdown Tunggal Terintegrasi
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            decoration: BoxDecoration(
              color: cardColor,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: isLightMode
                    ? borderColor
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
                  fontSize: 14,
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

          // Kondisional Render Konten Utama
          if (!isTataCara) ...[
            (() {
              final currentNiat = _niatData[_selectedOption]!;
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      currentNiat['title']!,
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
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 32,
                    ),
                    decoration: BoxDecoration(
                      color: cardColor,
                      borderRadius: BorderRadius.circular(12),
                      border: isLightMode
                          ? Border.all(color: borderColor)
                          : null,
                    ),
                    child: Text(
                      currentNiat['arabic']!,
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
                          ? Border.all(color: borderColor)
                          : null,
                    ),
                    child: Text(
                      currentNiat['transliteration']!,
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
                      border: isLightMode
                          ? Border.all(color: borderColor)
                          : null,
                    ),
                    child: Text(
                      currentNiat['translation']!,
                      style: TextStyle(
                        color: subTextColor,
                        fontSize: 14,
                        height: 1.4,
                      ),
                    ),
                  ),
                ],
              );
            })(),
          ] else ...[
            Row(
              children: [
                Icon(Icons.format_list_numbered, color: accentColor, size: 18),
                const SizedBox(width: 8),
                Text(
                  "Panduan Siklus Unik Shalat Gerhana",
                  style: TextStyle(
                    color: accentColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            ..._tataCaraData.map((step) {
              return Container(
                margin: const EdgeInsets.only(bottom: 16),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: cardColor,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: isLightMode ? borderColor : Colors.white12,
                  ),
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
            }),
          ],

          const SizedBox(height: 24),
          Row(
            children: [
              Icon(Icons.info_outline, color: accentColor, size: 18),
              const SizedBox(width: 8),
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
                    ? borderColor
                    : Colors.teal.withValues(alpha: 0.2),
              ),
            ),
            child: Text(
              "Shalat Gerhana adalah shalat sunnah dua rakaat yang dilaksanakan ketika terjadi fenomena gerhana, baik gerhana matahari (Kusuf) maupun gerhana bulan (Khusuf). Tata cara pelaksanaannya memiliki keunikan tersendiri, yaitu terdapat dua kali ruku' dan dua kali membaca Al-Fatihah pada setiap rakaatnya.",
              style: TextStyle(color: subTextColor, fontSize: 13, height: 1.5),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChip(String label, Color bg, Color textCol) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(label, style: TextStyle(color: textCol, fontSize: 11)),
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
              color: mainTxt.withValues(alpha: 0.9),
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
