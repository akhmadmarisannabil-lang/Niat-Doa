import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart'; // Sesuaikan path theme provider Anda
import '../menu_hadist/menuntut_ilmu.dart';
import '../menu_hadist/sabar_page.dart';
import '../menu_hadist/munafik_page.dart';
import '../menu_hadist/hijrah_page.dart';
import '../menu_hadist/ghibah_page.dart';
import '../menu_hadist/aqiqah_page.dart';
import '../menu_hadist/dajjal_page.dart';
import '../menu_hadist/hati_page.dart';
import '../menu_hadist/larangan_marah_page.dart';
import '../menu_hadist/riba_page.dart';
import '../menu_hadist/hutang_piutang_page.dart';
import '../menu_hadist/iman_page.dart';
import '../menu_hadist/orang_tua_page.dart';
import '../menu_hadist/sahabat_page.dart';
import '../menu_hadist/pendidikan_page.dart';
import '../menu_hadist/sakit_page.dart';
import '../menu_hadist/rezeki_page.dart';
import '../menu_hadist/fitnah_page.dart';
import '../menu_hadist/senyum_page.dart';
import '../menu_hadist/pemimpin_page.dart';
import '../menu_hadist/hari_kiamat_page.dart';
import '../menu_hadist/batasan_pakaian_wanita_page.dart';
import '../menu_hadist/wanita_page.dart';
import '../menu_hadist/qurban_page.dart';
import '../menu_hadist/silaturahmi_page.dart';
import '../menu_hadist/kejujuran_page.dart';
import '../menu_hadist/persaudaraan_page.dart';
import '../menu_hadist/niat_page.dart';
import '../menu_hadist/bersyukur_page.dart';
import '../menu_hadist/puasa_page.dart';
import '../menu_hadist/zakat_page.dart';
import '../menu_hadist/zina_page.dart';
import '../menu_hadist/jodoh_page.dart';
import '../menu_hadist/kematian_page.dart';
import '../menu_hadist/pernikahan_page.dart';
import '../menu_hadist/sombong_page.dart';
import '../menu_hadist/akhlak_page.dart';
import '../menu_hadist/keutamaan_sedekah_page.dart';
import '../menu_hadist/ikhlas_page.dart';
import '../menu_hadist/shalat_page.dart';
import '../menu_hadist/kebersihan_page.dart';
import '../menu_hadist/cinta_page.dart';
import '../menu_hadist/bulan_ramadhan_page.dart';
import '../menu_hadist/kikir_pelit_page.dart';
// TAMBAHAN: Impor halaman HatiPage

class HaditsPage extends StatefulWidget {
  const HaditsPage({super.key});

  @override
  State<HaditsPage> createState() => _HaditsPageState();
}

class _HaditsPageState extends State<HaditsPage> {
  final TextEditingController _searchController = TextEditingController();

  // Data 44 Menu Hadist Shahih berdasarkan urutan dari gambar yang Anda lampirkan
  final List<Map<String, dynamic>> _allHadits = const [
    {'no': '1', 'name': 'Menuntut Ilmu', 'arabic': 'طلب العلم'},
    {'no': '2', 'name': 'Sabar', 'arabic': 'صبور'},
    {'no': '3', 'name': 'Munafik', 'arabic': 'النفاق'},
    {'no': '4', 'name': 'Hijrah', 'arabic': 'الهجرة'},
    {'no': '5', 'name': 'Ghibah', 'arabic': 'الغيبة'},
    {'no': '6', 'name': 'Aqiqah', 'arabic': 'العقيقة'},
    {'no': '7', 'name': 'Tentang Dajjal', 'arabic': 'الدجال'},
    {
      'no': '8',
      'name': 'Hati (Qolbun)',
      'arabic': 'قلب',
    }, // Sesuai file image_07d362.png
    {'no': '9', 'name': 'Larangan Marah', 'arabic': 'الغضب'},
    {'no': '10', 'name': 'Riba\'', 'arabic': 'الربا'},
    {'no': '11', 'name': 'Hutang Piutang', 'arabic': 'دَيْن'},
    {'no': '12', 'name': 'Iman', 'arabic': 'الإيمان'},
    {
      'no': '13',
      'name': 'Berbakti Kepada Kedua Orang Tua',
      'arabic': 'بر الوالدين',
    },
    {'no': '14', 'name': 'Sahabat', 'arabic': 'الصحابة'},
    {'no': '15', 'name': 'Pendidikan', 'arabic': 'التربية'},
    {'no': '16', 'name': 'Sakit', 'arabic': 'المرض'},
    {'no': '17', 'name': 'Rezeki', 'arabic': 'الرزق'},
    {'no': '18', 'name': 'Fitnah', 'arabic': 'الفتنة'},
    {'no': '19', 'name': 'Senyum', 'arabic': 'التبسم'},
    {'no': '20', 'name': 'Pemimpin', 'arabic': 'الإمام'},
    {'no': '21', 'name': 'Hari Kiamat', 'arabic': 'القيامة'},
    {
      'no': '22',
      'name': 'Batasan Pakaian Wanita',
      'arabic': 'قيود على ملابس النساء',
    },
    {'no': '23', 'name': 'Wanita', 'arabic': 'النساء'},
    {'no': '24', 'name': 'Qurban', 'arabic': 'الأضحية'},
    {'no': '25', 'name': 'Silaturahmi', 'arabic': 'صلة الرحم'},
    {'no': '26', 'name': 'Kejujuran', 'arabic': 'الصدق'},
    {
      'no': '27',
      'name': 'Persaudaraan - Ukhuwah Islamiyah',
      'arabic': 'الأخوة',
    },
    {'no': '28', 'name': 'Niat', 'arabic': 'النية'},
    {'no': '29', 'name': 'Bersyukur', 'arabic': 'الشكر'},
    {'no': '30', 'name': 'Puasa', 'arabic': 'الصيام'},
    {'no': '31', 'name': 'Zakat', 'arabic': 'الزكاة'},
    {'no': '32', 'name': 'Zina', 'arabic': 'الزنا'},
    {'no': '33', 'name': 'Jodoh', 'arabic': 'الزواج'},
    {'no': '34', 'name': 'Kematian', 'arabic': 'موت'},
    {'no': '35', 'name': 'Pernikahan', 'arabic': 'النكاح'},
    {'no': '36', 'name': 'Sombong', 'arabic': 'الكبر'},
    {'no': '37', 'name': 'Akhlak', 'arabic': 'الأخلاق'},
    {'no': '38', 'name': 'Keutamaan Sedekah', 'arabic': 'الصدقة'},
    {'no': '39', 'name': 'Ikhlas', 'arabic': 'الإخلاص'},
    {'no': '40', 'name': 'Shalat', 'arabic': 'الصلاة'},
    {'no': '41', 'name': 'Kebersihan', 'arabic': 'النظافة'},
    {'no': '42', 'name': 'Cinta', 'arabic': 'المحبة'},
    {'no': '43', 'name': 'Bulan Ramadhan', 'arabic': 'رمضان'},
    {'no': '44', 'name': 'Kikir / Pelit', 'arabic': 'البخل'},
  ];

  List<Map<String, dynamic>> _filteredHadits = [];

  @override
  void initState() {
    super.initState();
    _filteredHadits = _allHadits;
    _searchController.addListener(_filterHaditsList);
  }

  void _filterHaditsList() {
    final query = _searchController.text.toLowerCase();
    if (query.isEmpty) {
      setState(() => _filteredHadits = _allHadits);
    } else {
      setState(() {
        _filteredHadits = _allHadits.where((hadits) {
          final name = hadits['name'].toString().toLowerCase();
          final no = hadits['no'].toString();
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
    final isLightTheme = Provider.of<ThemeProvider>(context).isLightTheme;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Container(
        constraints: const BoxConstraints(maxWidth: 1200),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
              child: Column(
                children: [
                  // Search Bar
                  Container(
                    height: 52,
                    decoration: BoxDecoration(
                      color: isLightTheme
                          ? Colors.grey[200]
                          : const Color(0xff222222),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextField(
                      controller: _searchController,
                      style: TextStyle(
                        color: isLightTheme ? Colors.black87 : Colors.white,
                        fontSize: 14,
                      ),
                      decoration: InputDecoration(
                        hintText: "Cari Tema Hadits...",
                        hintStyle: TextStyle(
                          color: isLightTheme ? Colors.black38 : Colors.white38,
                          fontSize: 14,
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: isLightTheme ? Colors.black38 : Colors.white38,
                          size: 20,
                        ),
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 15,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Banner Header
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: isLightTheme
                          ? Colors.blue.withValues(alpha: 0.15)
                          : const Color(0xff1a2e40),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Kumpulan Hadits Shahih",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: isLightTheme
                                ? Colors.blue[900]
                                : Colors.white,
                            height: 1.2,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          "Daftar petunjuk dan tuntunan hadits pilihan",
                          style: TextStyle(
                            fontSize: 13,
                            color: isLightTheme
                                ? Colors.black54
                                : Colors.white70,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                ],
              ),
            ),

            // List Item
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 4.0,
                ),
                itemCount: _filteredHadits.length,
                itemBuilder: (context, index) {
                  final hadits = _filteredHadits[index];

                  return GestureDetector(
                    onTap: () {
                      if (hadits['no'] == '1') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MenuntutIlmuPage(),
                          ),
                        );
                      } else if (hadits['no'] == '2') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SabarPage(),
                          ),
                        );
                      } else if (hadits['no'] == '3') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MunafikPage(),
                          ),
                        );
                      } else if (hadits['no'] == '4') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HijrahPage(),
                          ),
                        );
                      } else if (hadits['no'] == '5') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const GhibahPage(),
                          ),
                        );
                      } else if (hadits['no'] == '6') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AqiqahPage(),
                          ),
                        );
                      } else if (hadits['no'] == '7') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DajjalPage(),
                          ),
                        );
                      } else if (hadits['no'] == '8') {
                        // TAMBAHAN: Navigasi Hati (Qolbun)
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HatiPage(),
                          ),
                        );
                      } else if (hadits['no'] == '9') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LaranganMarahPage(),
                          ),
                        );
                      } else if (hadits['no'] == '10') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RibaPage(),
                          ),
                        );
                      } else if (hadits['no'] == '11') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HutangPiutangPage(),
                          ),
                        );
                      } else if (hadits['no'] == '12') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ImanPage(),
                          ),
                        );
                      } else if (hadits['no'] == '13') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const OrangTuaPage(),
                          ),
                        );
                      } else if (hadits['no'] == '14') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SahabatPage(),
                          ),
                        );
                      } else if (hadits['no'] == '15') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PendidikanPage(),
                          ),
                        );
                      } else if (hadits['no'] == '16') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SakitPage(),
                          ),
                        );
                      } else if (hadits['no'] == '17') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RezekiPage(),
                          ),
                        );
                      } else if (hadits['no'] == '18') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FitnahPage(),
                          ),
                        );
                      } else if (hadits['no'] == '19') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SenyumPage(),
                          ),
                        );
                      } else if (hadits['no'] == '20') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PemimpinPage(),
                          ),
                        );
                      } else if (hadits['no'] == '21') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HariKiamatPage(),
                          ),
                        );
                      } else if (hadits['no'] == '22') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const BatasanPakaianWanitaPage(),
                          ),
                        );
                      } else if (hadits['no'] == '23') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const WanitaPage(),
                          ),
                        );
                      } else if (hadits['no'] == '24') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const QurbanPage(),
                          ),
                        );
                      } else if (hadits['no'] == '25') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SilaturahmiPage(),
                          ),
                        );
                      } else if (hadits['no'] == '26') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const KejujuranPage(),
                          ),
                        );
                      } else if (hadits['no'] == '27') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PersaudaraanPage(),
                          ),
                        );
                      } else if (hadits['no'] == '28') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NiatPage(),
                          ),
                        );
                      } else if (hadits['no'] == '29') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const BersyukurPage(),
                          ),
                        );
                      } else if (hadits['no'] == '30') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PuasaPage(),
                          ),
                        );
                      } else if (hadits['no'] == '31') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ZakatPage(),
                          ),
                        );
                      } else if (hadits['no'] == '32') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ZinaPage(),
                          ),
                        );
                      } else if (hadits['no'] == '33') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const JodohPage(),
                          ),
                        );
                      } else if (hadits['no'] == '34') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const KematianPage(),
                          ),
                        );
                      } else if (hadits['no'] == '35') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PernikahanPage(),
                          ),
                        );
                      } else if (hadits['no'] == '36') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SombongPage(),
                          ),
                        );
                      } else if (hadits['no'] == '37') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AkhlakPage(),
                          ),
                        );
                      } else if (hadits['no'] == '38') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const KeutamaanSedekahPage(),
                          ),
                        );
                      } else if (hadits['no'] == '39') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const IkhlasPage(),
                          ),
                        );
                      } else if (hadits['no'] == '40') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ShalatPage(),
                          ),
                        );
                      } else if (hadits['no'] == '41') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const KebersihanPage(),
                          ),
                        );
                      } else if (hadits['no'] == '42') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CintaPage(),
                          ),
                        );
                      } else if (hadits['no'] == '43') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const BulanRamadhanPage(),
                          ),
                        );
                      } else if (hadits['no'] == '44') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const KikirPelitPage(),
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
                        color: isLightTheme
                            ? Colors.white
                            : const Color(0xff222222),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: isLightTheme
                            ? [
                                BoxShadow(
                                  color: Colors.black.withValues(alpha: 0.05),
                                  blurRadius: 4,
                                  offset: const Offset(0, 2),
                                ),
                              ]
                            : null,
                      ),
                      child: Row(
                        children: [
                          // Custom Icon Frame Nomor
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
                                      color: isLightTheme
                                          ? Colors.blue.withValues(alpha: 0.3)
                                          : Colors.white24,
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
                                    color: isLightTheme
                                        ? Colors.blue.withValues(alpha: 0.3)
                                        : Colors.white24,
                                    width: 1.5,
                                  ),
                                  borderRadius: BorderRadius.circular(3),
                                  color: isLightTheme
                                      ? Colors.white
                                      : const Color(0xff222222),
                                ),
                              ),
                              Text(
                                hadits['no']!,
                                style: TextStyle(
                                  color: isLightTheme
                                      ? Colors.blue[800]
                                      : Colors.amber,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 16),

                          // Judul Tema Hadits
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  hadits['name']!,
                                  style: TextStyle(
                                    color: isLightTheme
                                        ? Colors.black87
                                        : Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  "HADITS SHAHIH • PILIHAN",
                                  style: TextStyle(
                                    color: isLightTheme
                                        ? Colors.black45
                                        : Colors.white38,
                                    fontSize: 11,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Tulisan Arab di sebelah kanan
                          Text(
                            hadits['arabic']!,
                            style: GoogleFonts.amiri(
                              color: isLightTheme
                                  ? Colors.blue[900]
                                  : Colors.amber,
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
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
