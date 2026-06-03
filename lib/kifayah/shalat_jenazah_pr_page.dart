import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShalatJenazahPrPage extends StatefulWidget {
  const ShalatJenazahPrPage({super.key});

  @override
  State<ShalatJenazahPrPage> createState() => _ShalatJenazahPrPageState();
}

class _ShalatJenazahPrPageState extends State<ShalatJenazahPrPage> {
  // Opsi default yang terpilih
  String _selectedOption = 'Shalat Jenazah Sebagai Makmum';

  // 1. Data Niat Shalat Jenazah Perempuan
  final Map<String, Map<String, String>> _niatData = {
    'Shalat Jenazah Sendirian': {
      'title': 'Niat (Sendirian)',
      'arabic':
          "أُصَلِّى عَلَى هٰذِهِ الْمَيِّتَةِ أَرْبَعَ تَكْبِيْرَاتٍ فَرْضَ كِفَايَةٍ لِلّٰهِ تَعَالَىٰ",
      'transliteration':
          "Ushallii 'alaa haadzihil mayyitati arba'a takbiiraatin fardha kifaayatin lillaahi ta'aalaa.",
      'translation':
          "Aku berniat shalat atas jenazah perempuan ini empat takbir fardhu kifayah karena Allah Ta'ala.",
    },
    'Shalat Jenazah Sebagai Imam': {
      'title': 'Niat (Imam)',
      'arabic':
          "أُصَلِّى عَلَى هٰذِهِ الْمَيِّتَةِ أَرْبَعَ تَكْبِيْرَاتٍ فَرْضَ كِفَايَةٍ اِمَامًا لِلّٰهِ تَعَالَىٰ",
      'transliteration':
          "Ushallii 'alaa haadzihil mayyitati arba'a takbiiraatin fardha kifaayatin imaaman lillaahi ta'aalaa.",
      'translation':
          "Aku berniat shalat atas jenazah perempuan ini empat takbir fardhu kifayah sebagai imam karena Allah Ta'ala.",
    },
    'Shalat Jenazah Sebagai Makmum': {
      'title': 'Niat (Makmum)',
      'arabic':
          "أُصَلِّى عَلَى هٰذِهِ الْمَيِّتَةِ أَرْبَعَ تَكْبِيْرَاتٍ فَرْضَ كِفَايَةٍ مَأْمُوْمًا لِلّٰهِ تَعَالَىٰ",
      'transliteration':
          "Ushallii 'alaa haadzihil mayyitati arba'a takbiiraatin fardha kifaayatin ma'muuman lillaahi ta'aalaa.",
      'translation':
          "Aku berniat shalat atas jenazah perempuan ini empat takbir fardhu kifayah sebagai makmum karena Allah Ta'ala.",
    },
  };

  // 2. Data Tata Cara Shalat Jenazah Perempuan Berurutan Beserta Bacaannya
  final List<Map<String, dynamic>> _tataCaraUrutanData = [
    {
      'header': 'Langkah 1',
      'title': 'Berdiri Tegak & Takbiratul Ihram (Takbir Ke-1)',
      'desc':
          'Shalat jenazah dilakukan dalam posisi berdiri tegak tanpa rukuk maupun sujud. Berniat di dalam hati bersamaan dengan mengangkat tangan saat takbiratul ihram membaca:',
      'hasRead': true,
      'arabic': "اللهُ أَكْبَرُ",
      'latin': "Allahu Akbar.",
      'arti': "Allah Maha Besar.",
    },
    {
      'header': 'Langkah 2',
      'title': 'Membaca Surat Al-Fatihah',
      'desc':
          'Setelah takbir pertama, letakkan tangan bersedekap di dada lalu membaca Surat Al-Fatihah:',
      'hasRead': true,
      'arabic':
          "بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ ﴿١﴾ الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ ﴿٢﴾ الرَّحْمَٰنِ الرَّحِيمِ ﴿٣﴾ مَالِكِ يَوْمِ الدِّينِ ﴿٤﴾ إِيَّاكَ نَعْبُدُ وَإِيَّاكَ نَسْتَعِينُ ﴿٥﴾ اهْدِنَا الصِّرَاطَ الْمُسْتَقِيمَ ﴿٦﴾ صِرَاطَ الَّذِينَ أَنْعَمْتَ عَلَيْهِمْ غَيْرِ الْمَغْضُوبِ عَلَيْهِمْ وَلَا الضَّالِّينَ ﴿٧﴾ آمينَ",
      'latin':
          "Bismillaahir-rachmaanir-rachiim. Al-hamdu lillaahi rabbil-'aalamiin. Ar-rachmaanir-rachiim. Maaliki yaumid-diin. Iyyaaka na'budu wa iyyaaka nasta'iin. Ihdinas-shiraathal-mustaqiim. Shiraathal-ladziina an'amta 'alaihim ghairil-maghghuubi 'alaihim waladh-dhaalliin. Aamiin.",
      'arti':
          "Dengan nama Allah Yang Maha Pengasih lagi Maha Penyayang. Segala puji bagi Allah, Tuhan seluruh alam. Yang Maha Pengasih lagi Maha Penyayang. Pemilik hari pembalasan. Hanya kepada Engkaulah kami menyembah dan hanya kepada Engkaulah kami memohon pertolongan. Tunjukkanlah kami jalan yang lurus. (yaitu) jalan orang-orang yang telah Engkau beri nikmat kepadanya; bukan (jalan) mereka yang dimurkai, dan bukan (pula jalan) mereka yang sesat. Kabulkanlah doa kami.",
    },
    {
      'header': 'Langkah 3',
      'title': 'Takbir Kedua',
      'desc':
          'Mengangkat kedua belah tangan sejajar daun telinga seraya mengucapkan takbir kedua, kemudian kembali bersedekap.',
      'hasRead': false,
    },
    {
      'header': 'Langkah 4',
      'title': 'Membaca Shalawat Nabi',
      'desc':
          'Setelah takbir kedua, dilanjutkan membaca shalawat kepada Nabi Muhammad SAW:',
      'hasRead': true,
      'arabic':
          "اللَّهُمَّ صَلِّ عَلَىٰ سَيِّدِنَا مُحَمَّدٍ وَعَلَىٰ آلِ سَيِّدِنَا مُحَمَّدٍ كَمَا صَلَّيْتَ عَلَىٰ سَيِّدِنَا إِبْرَاهِيمَ وَعَلَىٰ آلِ سَيِّدِنَا إِبْرَاهِيمَ وَبَارِكْ عَلَىٰ سَيِّدِنَا مُحَمَّدٍ وَعَلَىٰ آلِ سَيِّدِنَا مُحَمَّدٍ كَمَا بَارَكْتَ عَلَىٰ سَيِّدِنَا إِبْرَاهِيمَ وَعَلَىٰ آلِ سَيِّدِنَا إِبْرَاهِيمَ فِي الْعَالَمِينَ إِنَّكَ حَمِيدٌ مَجِيدٌ",
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
      'title': 'Membaca Doa untuk Jenazah Perempuan',
      'desc':
          'Setelah takbir ketiga, bacalah doa khusus permohonan ampunan untuk jenazah perempuan (menggunakan akhiran "-haa"):',
      'hasRead': true,
      'arabic':
          "اللَّهُمَّ اغْفِرْ لَهَا وَارْحَمْهَا وَعَافِهَا وَاعْفُ عَنْهَا",
      'latin': "Allahummaghfir lahaa warhamhaa wa 'aafiihaa wa'fu 'anhaa.",
      'arti':
          "Ya Allah, ampunilah dia (perempuan), berilah rahmat kepadanya, selamatkanlah dia, dan maafkanlah kesalahannya.",
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
      'title': 'Membaca Doa Penutup Jenazah Perempuan',
      'desc':
          'Selesai takbir keempat, disunnahkan membaca doa keselamatan bagi orang yang ditinggalkan berikut (menggunakan dhomir "-haa"):',
      'hasRead': true,
      'arabic':
          "اللَّهُمَّ لَا تَحْرِمْنَا أَجْرَهَا وَلَا تَفْتِنَّا بَعْدَهَا وَاغْفِر| لَنَا وَلَهَا",
      'latin':
          "Allahumma laa tahrimnaa ajrahaa wa laa taftinnaa ba'dahaa waghfir lanaa wa lahaa.",
      'arti':
          "Ya Allah, janganlah Engkau menghalangi kami dari pahalanya, dan janganlah Engkau memfitnah kami setelah kematiannya, serta ampunilah kami dan ampunilah dia.",
    },
    {
      'header': 'Langkah 9',
      'title': 'Salam',
      'desc':
          'Mengakhiri shalat dalam posisi tetap berdiri tegak dengan memalingkan wajah ke kanan terlebih dahulu, lalu memalingkan wajah ke kiri seraya mengucapkan:',
      'hasRead': true,
      'arabic': "السَّلَامُ عَلَيْكُمْ وَرَحْمَةُ اللهِ",
      'latin': "As-salaamu 'alaikum wa rachmatullaah.",
      'arti': "Semoga keselamatan dan rahmat Allah tercurah kepadamu.",
    },
  ];

  final List<String> _dropdownOptions = [
    'Shalat Jenazah Sendirian',
    'Shalat Jenazah Sebagai Imam',
    'Shalat Jenazah Sebagai Makmum',
    'Tata Cara Shalat Jenazah Perempuan',
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
          "Niat & Tata Cara Shalat Jenazah Pr",
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
          // Kategori Tag / Label Atas
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
                  "Fardhu Kifayah",
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
                  "Jenazah Perempuan",
                  style: TextStyle(color: Colors.white70, fontSize: 11),
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),

          // FITUR DROPDOWN (4 Pilihan Menu)
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

          // Tampilan Berdasarkan Opsi Terpilih
          if (_selectedOption != 'Tata Cara Shalat Jenazah Perempuan') ...[
            // === TAMPILAN NIAT ===
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
            // === TAMPILAN TATA CARA TERURUT DENGAN BACAAN ARAB & LATIN ===
            Row(
              children: const [
                Icon(
                  Icons.format_list_numbered,
                  color: Colors.tealAccent,
                  size: 18,
                ),
                SizedBox(width: 8),
                Text(
                  "Urutan Panduan Shalat Jenazah Lengkap",
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
                    // Penanda Langkah
                    Text(
                      tataCara['header']!,
                      style: const TextStyle(
                        color: Colors.tealAccent,
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 4),
                    // Nama Rukun Gerakan
                    Text(
                      tataCara['title']!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    // Deskripsi Panduan Rukun
                    Text(
                      tataCara['desc']!,
                      style: const TextStyle(
                        color: Colors.white70,
                        fontSize: 13,
                        height: 1.4,
                      ),
                    ),

                    // Jika rukun ini memiliki teks bacaan doa shalat jenazah
                    if (tataCara['hasRead'] == true) ...[
                      const SizedBox(height: 16),
                      // Box Bacaan Arab
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
                            // Latin / Transliterasi
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
                            // Arti / Terjemahan
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
                  ],
                ),
              );
            }).toList(),
          ],

          const SizedBox(height: 24),
          // Seksi Keterangan Khusus Posisi Imam Jenazah Perempuan (Statis paling bawah)
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
              "Pada jenazah perempuan, penunjukan menggunakan kata 'haadzihil mayyitati'[cite: 29]. Begitu pula saat takbir ketiga dan keempat, bacaan doa disesuaikan dengan menggunakan akhiran ganti perempuan (-haa)[cite: 29]. Bagi posisi Imam, disunnahkan berdiri lurus sejajar dengan bagian lambung/pinggang jenazah perempuan.",
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
