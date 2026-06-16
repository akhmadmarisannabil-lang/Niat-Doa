import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShalatGhaibPage extends StatefulWidget {
  const ShalatGhaibPage({super.key});

  @override
  State<ShalatGhaibPage> createState() => _ShalatGhaibPageState();
}

class _ShalatGhaibPageState extends State<ShalatGhaibPage> {
  // Opsi default yang terpilih
  String _selectedOption = 'Shalat Ghaib Sebagai Makmum';

  // 1. Data Niat Shalat Ghaib (Lafadz Asli)
  final Map<String, Map<String, String>> _niatData = {
    'Shalat Ghaib Sendirian': {
      'title': 'Niat (Sendirian)',
      'arabic':
          "أُصَلِّى عَلَى الْمَيِّتِ (اْلمَيِّتَةِ) الْغَائِبِ أَرْبَعَ تَكْبِيْرَاتٍ فَرْضَ كِفَايَةٍ لِلّٰهِ تَعَالَىٰ",
      'transliteration':
          "Ushallii 'alal mayyitil ('alal mayyitatil/untuk perempuan) ghaa-ibi arba'a takbiiraatin fardha kifaayatin lillaahi ta'aalaa.",
      'translation':
          "Aku berniat shalat atas jenazah ghaib (yang tidak ada di tempat) empat takbir fardhu kifayah karena Allah Ta'ala.",
    },
    'Shalat Ghaib Sebagai Imam': {
      'title': 'Niat (Imam)',
      'arabic':
          "أُصَلِّى عَلَى الْمَيِّتِ (اْلمَيِّتَةِ) الْغَائِبِ أَرْبَعَ تَكْبِيْرَاتٍ فَرْضَ كِفَايَةٍ اِمَامًا لِلّٰهِ تَعَالَىٰ",
      'transliteration':
          "Ushallii 'alal mayyitil ('alal mayyitatil/untuk prempuan) ghaa-ibi arba'a takbiiraatin fardha kifaayatin imaaman lillaahi ta'aalaa.",
      'translation':
          "Aku berniat shalat atas jenazah ghaib (yang tidak ada di tempat) empat takbir fardhu kifayah sebagai imam karena Allah Ta'ala.",
    },
    'Shalat Ghaib Sebagai Makmum': {
      'title': 'Niat (Makmum)',
      'arabic':
          "أُصَلِّى عَلَى الْمَيِّتِ (اْلمَيِّتَةِ) الْغَائِبِ أَرْبَعَ تَكْبِيْرَاتٍ فَرْضَ كِفَايَةِ مَأْمُوْمًا لِلّٰهِ تَعَالَىٰ",
      'transliteration':
          "Ushallii 'alal mayyitil ('alal mayyitatil/untuk prempuan) ghaa-ibi arba'a takbiiraatin fardha kifaayatin ma'muuman lillaahi ta'aalaa.",
      'translation':
          "Aku berniat shalat atas jenazah ghaib (yang tidak ada di tempat) empat takbir fardhu kifayah sebagai makmum karena Allah Ta'ala.",
    },
  };

  // 2. Data Tata Cara Shalat Ghaib Berurutan Beserta Bacaannya (Lafadz Asli)
  final List<Map<String, dynamic>> _tataCaraUrutanData = [
    {
      'header': 'Langkah 1',
      'title': 'Berdiri Tegak & Takbiratul Ihram (Takbir Ke-1)',
      'desc':
          'Shalat Ghaib ditunaikan tanpa adanya fisik jenazah di depan kita. Berdiri tegak, mantapkan niat shalat ghaib di hati bersamaan dengan takbir pertama:',
      'hasRead': true,
      'arabic': "اللهُ أَكْبَرُ",
      'latin': "Allahu Akbar.",
      'arti': "Allah Maha Besar.",
    },
    {
      'header': 'Langkah 2',
      'title': 'Membaca Surat Al-Fatihah',
      'desc':
          'Setelah takbir pertama selesai, posisikan tangan bersedekap kemudian membaca Surat Al-Fatihah:',
      'hasRead': true,
      'arabic':
          "بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ ﴿١﴾ الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ ﴿٢﴾ الرَّحْمَٰنِ الرَّحِيمِ ﴿٣﴾ مَالِكِ يَوْمِ الدِّينِ ﴿٤﴾ إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ ﴿٥﴾ اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ ﴿٦﴾ صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِم| غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّينَ ﴿٧﴾ آمينَ",
      'latin':
          "Bismillaahir-rachmaanir-rachiim. Al-hamdu lillaahi rabbil-'aalamiin. Ar-rachmaanir-rachiim. Maaliki yaumid-diin. Iyyaaka na'budu wa iyyaaka nasta'iin. Ihdinas-shiraathal-mustaqiim. Shiraathal-ladziina an'amta 'alaihim ghairil-maghghuubi 'alaihim waladh-dhaalliin. Aamiin.",
      'arti':
          "Dengan nama Allah Yang Maha Pengasih lagi Maha Penyayang. Segala puji bagi Allah, Tuhan seluruh alam. Yang Maha Pengasih lagi Maha Penyayang. Pemilik hari pembalasan. Hanya kepada Engkaulah kami menyembah dan hanya kepada Engkaulah kami memohon pertolongan. Tunjukkanlah kami jalan yang lurus. (yaitu) jalan orang-orang yang telah Engkau beri nikmat kepadanya; bukan (jalan) mereka yang dimurkai, dan bukan (pula jalan) mereka yang sesat. Kabulkanlah doa kami.",
    },
    {
      'header': 'Langkah 3',
      'title': 'Takbir Kedua',
      'desc':
          'Mengangkat kedua belah tangan sejajar daun telinga seraya mengucapkan takbir kedua, kemudian bersedekap kembali.',
      'hasRead': false,
    },
    {
      'header': 'Langkah 4',
      'title': 'Membaca Shalawat Nabi',
      'desc':
          'Selesai melakukan takbir kedua, dilanjutkan membaca bacaan kalimat Shalawat Ibrahimiyah:',
      'hasRead': true,
      'arabic':
          "اللَّهُمَّ صَلِّ عَلَىٰ سَيِّدِنَا مُحَمَّدٍ وَعَلَىٰ آلِ سَيِّدِنَا مُحَمَّدٍ كَمَا صَلَّيْتَ عَلَىٰ سَيِّدِنَا إِبْرَاهِيمَ وَعَلَىٰ آلِ سَيِّدِنَا إِبْرَاهِيمَ وَبَارِك| عَلَىٰ سَيِّدِنَا مُحَمَّدٍ وَعَلَىٰ آلِ سَيِّدِنَا مُحَمَّدٍ كَمَا بَارَكْتَ عَلَىٰ سَيِّدِنَا إِبْرَاهِيمَ وَعَلَىٰ آلِ سَيِّدِنَا إِبْرَاهِيمَ فِي الْعَالَمِينَ إِنَّكَ حَمِيدٌ مَجِيدٌ",
      'latin':
          "Allaahumma shalli 'alaa sayyidinaa Muhammad wa 'alaa aali sayyidinaa Muhammad, kamaa shallaita 'alaa sayyidinaa Ibraahiim wa 'alaa aali sayyidinaa Ibraahiim. Wa baarik 'alaa sayyidinaa Muhammad wa 'alaa aali sayyidinaa Muhammad, kamaa baarakta 'alaa sayyidinaa Ibraahiim wa 'alaa aali sayyidinaa Ibraahiim, fil-'aalamiina innaka chamiidum-majiid.",
      'arti':
          "Ya Allah, limpahkanlah rahmat kepada junjungan kami Nabi Muhammad dan kepada keluarganya, sebagaimana Engkau telah melimpahkan rahmat kepada junjungan kami Nabi Ibrahim dan keluarganya. Dan berilah berkah kepada junjungan kami Nabi Muhammad dan keluarganya, sebagaimana Engkau telah memberikan berkah kepada junjungan kami Nabi Ibrahim dan keluarganya, di seluruh alam semesta, sesungguhnya Engkau Maha Terpuji lagi Maha Mulia.",
    },
    {
      'header': 'Langkah 5',
      'title': 'Takbir Ketiga',
      'desc':
          'Mengangkat kedua belah tangan kembali sejajar daun telinga seraya mengucapkan takbir ketiga, kemudian bersedekap kembali.',
      'hasRead': false,
    },
    {
      'header': 'Langkah 6',
      'title': 'Membaca Doa untuk Jenazah Ghaib',
      'desc':
          'Membacakan doa untuk si Jenazah, seperti yang dicontohkan Rasulullah SAW pada hadis berikut :',
      'hasRead': true,
      'arabic':
          "اَللهُمَّ اغْفِرْلَهُ وَارْحَمْهُ وَعَافِهِ وَاعْفُ عَنْهُ وَاَكْرِمْ نُزُلَهُ وَوَسِّعْ مَدْخَلَهُ وَاغْسِلْهُ بِالْمَاءِ وَالثَّلْجِ وَالْبَرْدِ وَنَقِّهِ مِنَ الْخَطَايَا كَمَا يُنَقَّى الثَّوْبُ اْلاَبْيَضُ مِنَ الدَّنَسِ وَاَبْدِلْهُ دَارًاخَيْرًا مِنْ دَارِهِ وَاَهْلاً خَيْرًا مِنْ اَهْلِهِ وَزَوْجًا خَيْرًا مِنْ زَوْجِهِ وَاَدْخِلْهُ الْجَنَّةَ وَاَعِذْهُ مِنْ عَذَابِ الْقَبْرِ وَفِتْنَتِهِ وَمِنْ عَذَابِ النَّارِ",
      'latin':
          "Allahummaghfir lahu, war hamhu, wa ‘aafihi wa’fu ‘anhu, wa akrim nuzuulahu, wa wasi’ mad khalahu, waghsilhu bil maa’i watsalji wal baradi, wa naqihi minal khathaa ya, kamaa yunaqaa ats-tsaubu al-abyadhu minad danatsi, wa abdilhu daa ran khairan min daa rihi, wa ahlan khairan min ahlihi, wa zaujan khairan min zaujihi, wa adkhilhu al-jannata wa a’idhu min ‘adzabil qabri wa ‘adzabin naar.",
      'arti':
          "Ya Allah, ampunilah dia (mayat), berilah rahmat kepadanya, selamatkanlah dia (dari beberapa hal yang tidak disukai), maafkanlah dia dan tempatkanlah dia di tempat yang mulia, luaskanlah kuburannya, mandikan dia dengan air salju dan air es. Bersihkanlah dia dari segala kesalahan, sebagaimana Engkau mebersihkan baju putih dari kotoran. Berilah dia rumah yang lebih baik dari rumahnya (di dunia), berilah keluarga yang lebih baik daripada keluarganya di dunia, istri yang lebih baik dari istrinya (atau suaminya) dan masukkan dia ke surga, jagalah dia dari siksa kubur dan neraka.",
    },
    {
      'header': 'Langkah 7',
      'title': 'Takbir Keempat',
      'desc':
          'Mengangkat kedua belah tangan kembali sejajar daun telinga seraya mengucapkan takbir keempat, kemudian bersedekap kembali.',
      'hasRead': false,
    },
    {
      'header': 'Langkah 8',
      'title': 'Membaca Doa Permohonan Keselamatan',
      'desc':
          'Selesai takbir keempat, disunnahkan melafalkan doa penutup berikut sebelum mengakhiri shalat dengan salam:',
      'hasRead': true,
      'arabic':
          "اللّـٰهُمَّ لاَ تَحْرِمْنَا أَجْرَهُ وَلاَ تَفْتِنَّا بَعْدَهُ وَاغْفِرْ لَنَا وَلَهُ وَلِإِخْوَانِنَا الَّذِيْنَ سَبَقُوْنَ بِااْلإِيْمَانِ وَلاَ تَجْعَلْ فىِ قُلُوْبِنَا غِلاَّ لِّـلَّذِيْنَ آمَنُوْا رَبَّناَ اِنَّكَ رَؤُفٌ الّرَحِيْمٌ",
      'latin':
          "Allahumma laa tahrimnaa ajrahu, walaa taftinna ba’dahu, waghfir lanaa wa lahu, wa li ikhwanina alladzina sabaquuna bil iimaan walaa taj’al fii quluubina ghillalli ladziina aamanuu rabbana innaka ra uufurahiim.",
      'arti':
          "Ya Allah janganlah kami tidak Engkau beri pahalanya, dan janganlah Engkau beri fitnah kepada kami sesudahnya, dan berilah ampunan kepada kami dan kepadanya.",
    },
    {
      'header': 'Langkah 9',
      'title': 'Salam',
      'desc':
          'Mengakhiri shalat dengan memalingkan wajah ke kanan terlebih dahulu, baru memalingkan wajah ke kiri seraya mengucapkan kalimat salam:',
      'hasRead': true,
      'arabic': "السَّلَامُ عَلَيْكُمْ وَرَحْمَةُ اللهِ",
      'latin': "As-salaamu 'alaikum wa rachmatullaah.",
      'arti': "Semoga keselamatan dan rahmat Allah tercurah kepadamu.",
    },
  ];

  final List<String> _dropdownOptions = [
    'Shalat Ghaib Sendirian',
    'Shalat Ghaib Sebagai Imam',
    'Shalat Ghaib Sebagai Makmum',
    'Tata Cara Shalat Ghaib Lengkap',
  ];

  @override
  Widget build(BuildContext context) {
    // Deteksi Mode Terang atau Mode Gelap
    final bool isLightMode = Theme.of(context).brightness == Brightness.light;

    // Palet warna adaptif fardhu kifayah
    final Color bgColor = isLightMode
        ? const Color(0xfff5f7fa)
        : const Color(0xff090f16);
    final Color cardColor = isLightMode
        ? Colors.white
        : const Color(0xff111a24);
    final Color mainTextColor = isLightMode
        ? const Color(0xff1e293b)
        : Colors.white;
    final Color subTextColor = isLightMode
        ? const Color(0xff475569)
        : Colors.white70;
    final Color tagBgColor = isLightMode
        ? const Color(0xffe2e8f0)
        : Colors.white10;
    final Color tagTextColor = isLightMode
        ? const Color(0xff64748b)
        : Colors.white70;
    final Color accentColor = isLightMode
        ? const Color(0xff0f766e)
        : Colors.tealAccent;
    final Color borderColor = isLightMode
        ? const Color(0xffe2e8f0)
        : Colors.teal.withValues(alpha: 0.2);

    // Mandat: Ketika light mode warna arab harus HITAM pekat
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
          "Niat & Tata Cara Shalat Ghaib",
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
                  color: tagBgColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "Fardhu Kifayah",
                  style: TextStyle(color: tagTextColor, fontSize: 11),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: tagBgColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "Shalat Ghaib",
                  style: TextStyle(color: tagTextColor, fontSize: 11),
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),

          // FITUR DROPDOWN
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

          if (_selectedOption != 'Tata Cara Shalat Ghaib Lengkap') ...[
            // === TAMPILAN NIAT ===
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
                border: isLightMode ? Border.all(color: borderColor) : null,
              ),
              child: Text(
                _niatData[_selectedOption]!['arabic']!,
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
                border: isLightMode ? Border.all(color: borderColor) : null,
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
                      ? borderColor
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
            // === TAMPILAN TATA CARA LENGKAP ===
            Row(
              children: [
                Icon(Icons.format_list_numbered, color: accentColor, size: 18),
                const SizedBox(width: 8),
                Text(
                  "Urutan Panduan Shalat Ghaib Lengkap",
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
                  border: Border.all(
                    color: isLightMode ? borderColor : Colors.white12,
                  ),
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
                          color: isLightMode
                              ? const Color(0xfff8fafc)
                              : const Color(0xff090f16),
                          borderRadius: BorderRadius.circular(8),
                          border: isLightMode
                              ? Border.all(color: borderColor)
                              : null,
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
                                      arabicTextColor, // Diubah ke Hitam di Mode Terang
                                  fontSize: 20,
                                  height: 2.0,
                                ),
                              ),
                            ),
                            const SizedBox(height: 12),
                            Text(
                              tataCara['latin']!,
                              style: TextStyle(
                                color: subTextColor,
                                fontSize: 13,
                                fontStyle: FontStyle.italic,
                                height: 1.4,
                              ),
                            ),
                            Divider(
                              color: isLightMode ? borderColor : Colors.white10,
                              height: 16,
                            ),
                            Text(
                              tataCara['arti']!,
                              style: TextStyle(
                                color: isLightMode
                                    ? const Color(0xff64748b)
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
                    ? borderColor
                    : Colors.teal.withValues(alpha: 0.2),
              ),
            ),
            child: Text(
              "Shalat Ghaib sah dilakukan apabila jenazah berada di wilayah/daerah yang jauh dan sulit dijangkau untuk dishalati secara langsung, atau setelah mendapat kabar duka wafatnya seseorang di tempat lain. Seluruh urutan gerakan dan rukunnya sama persis dengan shalat jenazah langsung.",
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
