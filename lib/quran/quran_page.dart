import 'package:flutter/material.dart';
import '../surah_quran/alfatihah_page.dart';
import '../surah_quran/annaba_page.dart';
import '../surah_quran/annaziat_page.dart';
import '../surah_quran/abasa_page.dart';
import '../surah_quran/attakwir_page.dart';
import '../surah_quran/alinfitar_page.dart';
import '../surah_quran/almutaffifin_page.dart';
import '../surah_quran/alinsyiqaq_page.dart';
import '../surah_quran/alburuj_page.dart';
import '../surah_quran/attariq_page.dart';
import '../surah_quran/al_ala_page.dart';
import '../surah_quran/al_ghasyiyah_page.dart';
import '../surah_quran/al_fajr_page.dart';
import '../surah_quran/al_balad_page.dart';
import '../surah_quran/asy_syams_page.dart';
import '../surah_quran/al_lail_page.dart';
import '../surah_quran/ad_duha_page.dart';
import '../surah_quran/asy_syarh_page.dart';
import '../surah_quran/at_tin_page.dart';
import '../surah_quran/al_alaq_page.dart';
import '../surah_quran/al_qadr_page.dart';
import '../surah_quran/al_bayyinah_page.dart';
import '../surah_quran/az_zalzalah_page.dart';
import '../surah_quran/al_adiyat_page.dart';
import '../surah_quran/al_qariah_page.dart';
import '../surah_quran/at_takasur_page.dart';
import '../surah_quran/al_asr_page.dart';
import '../surah_quran/al_humazah_page.dart';
import '../surah_quran/al_fil_page.dart';
import '../surah_quran/quraisyi_page.dart';
import '../surah_quran/al_maun_page.dart';
import '../surah_quran/al_kausar_page.dart';
import '../surah_quran/al_kafirun_page.dart';
import '../surah_quran/an_nasr_page.dart';
import '../surah_quran/al_lahab_page.dart';
import '../surah_quran/al_ikhlas_page.dart';
import '../surah_quran/al_falaq_page.dart';
import '../surah_quran/an_nas_page.dart';

class QuranPage extends StatefulWidget {
  const QuranPage({super.key});

  @override
  State<QuranPage> createState() => _QuranPageState();
}

class _QuranPageState extends State<QuranPage> {
  final TextEditingController _searchController = TextEditingController();

  final List<Map<String, dynamic>> _allSurah = const [
    {
      'no': '1',
      'name': 'Al-Fatihah',
      'type': 'MAKKIYAH',
      'verses': 7,
      'arabic': 'الفاتحة',
    },
    {
      'no': '78',
      'name': 'An-Naba\'',
      'type': 'MAKKIYAH',
      'verses': 40,
      'arabic': 'النبأ',
    },
    {
      'no': '79',
      'name': 'An-Nazi\'at',
      'type': 'MAKKIYAH',
      'verses': 46,
      'arabic': 'النازعات',
    },
    {
      'no': '80',
      'name': "'Abasa",
      'type': 'MAKKIYAH',
      'verses': 42,
      'arabic': 'عبs',
    },
    {
      'no': '81',
      'name': 'At-Takwir',
      'type': 'MAKKIYAH',
      'verses': 29,
      'arabic': 'التكوير',
    },
    {
      'no': '82',
      'name': 'Al-Infitar',
      'type': 'MAKKIYAH',
      'verses': 19,
      'arabic': 'الانفطار',
    },
    {
      'no': '83',
      'name': 'Al-Mutaffifin',
      'type': 'MAKKIYAH',
      'verses': 36,
      'arabic': 'المطففين',
    },
    {
      'no': '84',
      'name': 'Al-Insyiqaq',
      'type': 'MAKKIYAH',
      'verses': 25,
      'arabic': 'الانشقاق',
    },
    {
      'no': '85',
      'name': 'Al-Buruj',
      'type': 'MAKKIYAH',
      'verses': 22,
      'arabic': 'البروج',
    },
    {
      'no': '86',
      'name': 'At-Tariq',
      'type': 'MAKKIYAH',
      'verses': 17,
      'arabic': 'الطارق',
    },
    {
      'no': '87',
      'name': 'Al-A\'la',
      'type': 'MAKKIYAH',
      'verses': 19,
      'arabic': 'الأعلى',
    },
    {
      'no': '88',
      'name': 'Al-Ghasyiyah',
      'type': 'MAKKIYAH',
      'verses': 26,
      'arabic': 'الغاشية',
    },
    {
      'no': '89',
      'name': 'Al-Fajr',
      'type': 'MAKKIYAH',
      'verses': 30,
      'arabic': 'الفجر',
    },
    {
      'no': '90',
      'name': 'Al-Balad',
      'type': 'MAKKIYAH',
      'verses': 20,
      'arabic': 'البلد',
    },
    {
      'no': '91',
      'name': 'Asy-Syams',
      'type': 'MAKKIYAH',
      'verses': 15,
      'arabic': 'الشمس',
    },
    {
      'no': '92',
      'name': 'Al-Lail',
      'type': 'MAKKIYAH',
      'verses': 21,
      'arabic': 'الليل',
    },
    {
      'no': '93',
      'name': 'Ad-Duha',
      'type': 'MAKKIYAH',
      'verses': 11,
      'arabic': 'الضحى',
    },
    {
      'no': '94',
      'name': 'Asy-Syarh',
      'type': 'MAKKIYAH',
      'verses': 8,
      'arabic': 'الشرح',
    },
    {
      'no': '95',
      'name': 'At-Tin',
      'type': 'MAKKIYAH',
      'verses': 8,
      'arabic': 'التين',
    },
    {
      'no': '96',
      'name': 'Al-Alaq',
      'type': 'MAKKIYAH',
      'verses': 19,
      'arabic': 'العلق',
    },
    {
      'no': '97',
      'name': 'Al-Qadr',
      'type': 'MAKKIYAH',
      'verses': 5,
      'arabic': 'القدر',
    },
    {
      'no': '98',
      'name': 'Al-Bayyinah',
      'type': 'MADANIYAH',
      'verses': 8,
      'arabic': 'البينة',
    },
    {
      'no': '99',
      'name': 'Az-Zalzalah',
      'type': 'MADANIYAH',
      'verses': 8,
      'arabic': 'الزلزلة',
    },
    {
      'no': '100',
      'name': 'Al-Adiyat',
      'type': 'MAKKIYAH',
      'verses': 11,
      'arabic': 'العاديات',
    },
    {
      'no': '101',
      'name': 'Al-Qari\'ah',
      'type': 'MAKKIYAH',
      'verses': 11,
      'arabic': 'القارعة',
    },
    {
      'no': '102',
      'name': 'At-Takasur',
      'type': 'MAKKIYAH',
      'verses': 8,
      'arabic': 'التكاثر',
    },
    {
      'no': '103',
      'name': 'Al-Asr',
      'type': 'MAKKIYAH',
      'verses': 3,
      'arabic': 'العصر',
    },
    {
      'no': '104',
      'name': 'Al-Humazah',
      'type': 'MAKKIYAH',
      'verses': 9,
      'arabic': 'الهمزة',
    },
    {
      'no': '105',
      'name': 'Al-Fil',
      'type': 'MAKKIYAH',
      'verses': 5,
      'arabic': 'الفيل',
    },
    {
      'no': '106',
      'name': 'Quraisyi',
      'type': 'MAKKIYAH',
      'verses': 4,
      'arabic': 'قريش',
    },
    {
      'no': '107',
      'name': 'Al-Ma\'un',
      'type': 'MAKKIYAH',
      'verses': 7,
      'arabic': 'الماعون',
    },
    {
      'no': '108',
      'name': 'Al-Kausar',
      'type': 'MAKKIYAH',
      'verses': 3,
      'arabic': 'الكوثر',
    },
    {
      'no': '109',
      'name': 'Al-Kafirun',
      'type': 'MAKKIYAH',
      'verses': 6,
      'arabic': 'الكافرون',
    },
    {
      'no': '110',
      'name': 'An-Nasr',
      'type': 'MADANIYAH',
      'verses': 3,
      'arabic': 'النصر',
    },
    {
      'no': '111',
      'name': 'Al-Lahab',
      'type': 'MAKKIYAH',
      'verses': 5,
      'arabic': 'المسد',
    },
    {
      'no': '112',
      'name': 'Al-Ikhlas',
      'type': 'MAKKIYAH',
      'verses': 4,
      'arabic': 'الإخلاص',
    },
    {
      'no': '113',
      'name': 'Al-Falaq',
      'type': 'MAKKIYAH',
      'verses': 5,
      'arabic': 'الفلق',
    },
    {
      'no': '114',
      'name': 'An-Nas',
      'type': 'MAKKIYAH',
      'verses': 6,
      'arabic': 'الناس',
    },
  ];

  List<Map<String, dynamic>> _filteredSurah = [];

  @override
  void initState() {
    super.initState();
    _filteredSurah = _allSurah;
    _searchController.addListener(_filterSurahList);
  }

  void _filterSurahList() {
    final query = _searchController.text.toLowerCase();
    if (query.isEmpty) {
      setState(() => _filteredSurah = _allSurah);
    } else {
      setState(() {
        _filteredSurah = _allSurah.where((surah) {
          final name = surah['name'].toString().toLowerCase();
          final no = surah['no'].toString();
          return name.contains(query) || no.contains(query);
        }).toList();
      });
    }
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff121212),
      body: Container(
        constraints: const BoxConstraints(maxWidth: 1200),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
              child: Column(
                children: [
                  Container(
                    height: 52,
                    decoration: BoxDecoration(
                      color: const Color(0xff222222),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextField(
                      controller: _searchController,
                      style: const TextStyle(color: Colors.white, fontSize: 14),
                      decoration: const InputDecoration(
                        hintText: "Cari Surah...",
                        hintStyle: TextStyle(
                          color: Colors.white38,
                          fontSize: 14,
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.white38,
                          size: 20,
                        ),
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(vertical: 15),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: const Color(0xff1a2e40),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          " Al-fatihah & Juz 30",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            height: 1.2,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "Surah Pembuka & Juz Amma",
                          style: TextStyle(fontSize: 13, color: Colors.white70),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 4.0,
                ),
                itemCount: _filteredSurah.length,
                itemBuilder: (context, index) {
                  final surah = _filteredSurah[index];

                  return GestureDetector(
                    onTap: () {
                      if (surah['name'] == 'Al-Fatihah') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                AlFatihahPage(surahData: surah),
                          ),
                        );
                      } else if (surah['name'] == 'An-Naba\'') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AnNabaPage(surahData: surah),
                          ),
                        );
                      } else if (surah['name'] == 'An-Nazi\'at') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                AnNaziatPage(surahData: surah),
                          ),
                        );
                      } else if (surah['name'] == "'Abasa") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AbasaPage(surahData: surah),
                          ),
                        );
                      } else if (surah['name'] == "At-Takwir") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                AtTakwirPage(surahData: surah),
                          ),
                        );
                      } else if (surah['name'] == "Al-Infitar") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                AlInfitarPage(surahData: surah),
                          ),
                        );
                      } else if (surah['name'] == "Al-Mutaffifin") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                AlMutaffifinPage(surahData: surah),
                          ),
                        );
                      } else if (surah['name'] == "Al-Insyiqaq") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                AlInsyiqaqPage(surahData: surah),
                          ),
                        );
                      } else if (surah['name'] == "Al-Buruj") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AlBurujPage(surahData: surah),
                          ),
                        );
                      } else if (surah['name'] == "At-Tariq") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AtTariqPage(surahData: surah),
                          ),
                        );
                      } else if (surah['name'] == "Al-A'la") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AlAlaPage(surahData: surah),
                          ),
                        );
                      } else if (surah['name'] == "Al-Ghasyiyah") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                AlGhasyiyahPage(surahData: surah),
                          ),
                        );
                      } else if (surah['name'] == "Al-Fajr") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AlFajrPage(surahData: surah),
                          ),
                        );
                      } else if (surah['name'] == "Al-Balad") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AlBaladPage(surahData: surah),
                          ),
                        );
                      } else if (surah['name'] == "Asy-Syams") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                AsySyamsPage(surahData: surah),
                          ),
                        );
                      } else if (surah['name'] == "Al-Lail") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AlLailPage(surahData: surah),
                          ),
                        );
                      } else if (surah['name'] == "Ad-Duha") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AdDuhaPage(surahData: surah),
                          ),
                        );
                      } else if (surah['name'] == "Asy-Syarh") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                AsySyarhPage(surahData: surah),
                          ),
                        );
                      } else if (surah['name'] == "At-Tin") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AtTinPage(surahData: surah),
                          ),
                        );
                      } else if (surah['name'] == "Al-Alaq") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AlAlaqPage(surahData: surah),
                          ),
                        );
                      } else if (surah['name'] == "Al-Qadr") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AlQadrPage(surahData: surah),
                          ),
                        );
                      } else if (surah['name'] == 'Al-Bayyinah') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                AlBayyinahPage(surahData: surah),
                          ),
                        );
                      } else if (surah['name'] == 'Az-Zalzalah') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                AzZalzalahPage(surahData: surah),
                          ),
                        );
                      } else if (surah['name'] == 'Al-Adiyat') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                AlAdiyatPage(surahData: surah),
                          ),
                        );
                      } else if (surah['name'] == 'Al-Qari\'ah') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                AlQariahPage(surahData: surah),
                          ),
                        );
                      } else if (surah['name'] == 'At-Takasur') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                AtTakasurPage(surahData: surah),
                          ),
                        );
                      } else if (surah['name'] == 'Al-Asr') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AlAsrPage(surahData: surah),
                          ),
                        );
                      }
                      // KONDISI NAVIGASI BARU:
                      else if (surah['name'] == 'Al-Humazah') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                AlHumazahPage(surahData: surah),
                          ),
                        );
                      } else if (surah['name'] == 'Al-Fil') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AlFilPage(surahData: surah),
                          ),
                        );
                      } else if (surah['name'] == 'Quraisyi') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                QuraisyiPage(surahData: surah),
                          ),
                        );
                      } else if (surah['name'] == "Al-Ma'un") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AlMaunPage(surahData: surah),
                          ),
                        );
                      } else if (surah['name'] == 'Al-Kausar') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                AlKausarPage(surahData: surah),
                          ),
                        );
                      } else if (surah['name'] == 'Al-Kafirun') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                AlKafirunPage(surahData: surah),
                          ),
                        );
                      } else if (surah['name'] == 'An-Nasr') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AnNasrPage(surahData: surah),
                          ),
                        );
                      } else if (surah['name'] == 'Al-Lahab') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AlLahabPage(surahData: surah),
                          ),
                        );
                      } else if (surah['name'] == 'Al-Ikhlas') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                AlIkhlasPage(surahData: surah),
                          ),
                        );
                      } else if (surah['name'] == 'Al-Falaq') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AlFalaqPage(surahData: surah),
                          ),
                        );
                      } else if (surah['name'] == 'An-Nas') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AnNasPage(surahData: surah),
                          ),
                        );
                      }
                    },
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 18,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(0xff222222),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              RotationTransition(
                                turns: const AlwaysStoppedAnimation(45 / 360),
                                child: Container(
                                  width: 28,
                                  height: 28,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.white24,
                                      width: 1.5,
                                    ),
                                    borderRadius: BorderRadius.circular(3),
                                  ),
                                ),
                              ),
                              Container(
                                width: 28,
                                height: 28,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white24,
                                    width: 1.5,
                                  ),
                                  borderRadius: BorderRadius.circular(3),
                                  color: const Color(0xff222222),
                                ),
                              ),
                              Text(
                                surah['no']!,
                                style: const TextStyle(
                                  color: Colors.amber,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  surah['name']!,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  "${surah['type']} • ${surah['verses']} AYAT",
                                  style: const TextStyle(
                                    color: Colors.white38,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            surah['arabic']!,
                            style: const TextStyle(
                              color: Colors.amber,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
