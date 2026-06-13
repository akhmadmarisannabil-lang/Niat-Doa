import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../theme_provider.dart';

class KeutamaanSedekahPage extends StatelessWidget {
  const KeutamaanSedekahPage({super.key});

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
        'arabic': '',
        'indo':
            'Dari Uqbah bin Harits r.a., ia berkata, Saya pernah shalat Ashar di belakang Nabi saw., di Madinah Munawwarah. Setelah salam, beliau berdiri dan berjalan dengan cepat melewati bahu orang-orang, kemudian beliau masuk ke kamar salah seorang istri beliau, sehingga orang-orang terkejut melihat perilaku beliau saw. Ketika Rasulullah saw. keluar, beliau merasakan bahwa orang-orang merasa heran atas perilakunya, lalu beliau bersabda, \'Aku teringat sekeping emas yang tertinggal di rumahku. Aku tidak suka kalau ajalku tiba nanti, emas tersebut masih ada padaku sehingga menjadi penghalang bagiku ketika aku ditanya pada hari Hisab nanti. Oleh karena itu, aku memerintahkan agar emas itu segera dibagi-bagikan.\' (HR.Bukhari).',
      },
      {
        'arabic': '',
        'indo':
            'Perumpamaan orang yang pelit dengan orang yang bersedekah seperti dua orang yang memiliki baju besi, yang bila dipakai menutupi dada hingga selangkangannya. Orang yang bersedekah, dikarenakan sedekahnya ia merasa bajunya lapang dan longgar di kulitnya. Sampai-sampai ujung jarinya tidak terlihat dan baju besinya tidak meninggalkan bekas pada kulitnya. Sedangkan orang yang pelit, dikarenakan pelitnya ia merasakan setiap lingkar baju besinya merekat erat di kulitnya. Ia berusaha melonggarkannya namun tidak bisa. (HR. Bukhari no. 1443)',
      },
      {
        'arabic': '',
        'indo':
            'Ada 3 hal yang termasuk pusaka kebajikan, yaitu merahasiakan keluhan, merahasiakan musibah dan merahasiakan shodaqah (yang kita keluarkan).(HR. Ath-Thabrani)',
      },
      {
        'arabic': '',
        'indo':
            'Bersodaqoh pahalanya sepuluh, memberi hutang (tanpa bunga) pahalanya delapan belas, menghubungkan diri dengan kawan-kawan pahalanya dua puluh dan silaturrahmi (dengan keluarga) pahalanya dua puluh empat. (HR. Al Hakim)',
      },
      {
        'arabic': '',
        'indo':
            'Yang dapat menolak takdir ialah doa dan yang dapat memperpanjang umur yakni kebajikan (amal bakti). (HR. Ath-Thahawi)',
      },
      {
        'arabic': '',
        'indo':
            'Apabila anak Adam wafat putuslah amalnya kecuali tiga hal yaitu sodaqoh jariyah, pengajaran dan penyebaran ilmu yang dimanfaatkannya untuk orang lain, dan anak (baik laki-laki maupun perempuan) yang mendoakannya. (HR. Muslim)',
      },
      {
        'arabic': '',
        'indo':
            'Rasulullah (S.A.W.) pernah bersabda, Satu dirham memacu dan mendahului seratus ribu dirham. Para sahabat bertanya, Bagaimana itu? Nabi (S.A.W.) menjawab, Seorang memiliki (hanya) dua dirham. Dia mengambil satu dirham dan bersedekah dengannya, dan seorang lagi memiliki harta-benda yang banyak, dia mengambil seratus ribu dirham untuk disedekahkannya. (HR. An-Nasaa\'i)',
      },
      {
        'arabic': '',
        'indo':
            'Sedekah meredakan kemarahan Allah dan menangkal (mengurangi) kepedihan saat maut (Sakratulmaut).',
      },
      {
        'arabic': '',
        'indo':
            'Tidaklah ada satu pekerjaan yang paling mulia yang dilakukan oleh seseorang daripada pekerjaan yang dilakukan dari tangannya sendiri. Dan tidaklah seseorang menafkahkan hartanya terhadap diri, keluarga, anak dan pembantunya melainkan akan menjadi sedekah.( HR. Ibnu Majah )',
      },
      {
        'arabic': '',
        'indo':
            'Tidak ada hari yang disambut oleh para hamba melainkan di sana ada dua malaikat yang turun, sala satunya berkata: Ya Allah, berikanlah ganti kepada orang-orang yang berinfaq. Sedangkan (malaikat) yang lainnya berkata: Ya Allah berikanlah kehancuran kepada orang-orang yang menahan (hartanya). (H.R. Bukhari - Muslim)',
      },
      {
        'arabic': '',
        'indo':
            'Tidak boleh hasad/iri kecuali pada dua orang: seseorang yang diberikan harta oleh Allah, kemudia ia belanjakan di jalan yang haq, dan seseorang yang diberikan oleh Allah ilmu dan ia mengamalkannya dan mengajarkannya (HR. Al Bukhari 73, Muslim 816)',
      },
      {
        'arabic': '',
        'indo':
            'Allah Tabaraka wata’ala berfirman (di dalam hadits Qudsi): Hai anak Adam, infaklah (nafkahkanlah hartamu), niscaya Aku memberikan nafkah kepadamu. (HR. Muslim)',
      },
      {
        'arabic': '',
        'indo':
            'Orang yang mengusahakan bantuan (pertolongan) bagi janda dan orang miskin ibarat berjihad di jalan Allah dan ibarat orang shalat malam. Ia tidak merasa lelah dan ia juga ibarat orang berpuasa yang tidak pernah berbuka. (HR. Bukhari)',
      },
      {
        'arabic': '',
        'indo':
            'Dari Abu Hurairah r.a., Rasulullah saw. bersabda, Sedekah itu tidak akan mengurangi harta. Allah swt. akan menambah kemuliaan kepada hamba-Nya yang pemaaf. Dan bagi hamba yang tawadhu’ karena Allah swt., Allah swt. akan mengangkat (derajatnya). (HR. Muslim)',
      },
      {
        'arabic': '',
        'indo':
            'Barangsiapa ingin doanya terkabul dan dibebaskan dari kesulitannya hendaklah dia mengatasi (menyelesaikan) kesulitan orang lain. (HR. Ahmad)',
      },
      {
        'arabic': '',
        'indo':
            'Barangsiapa yang menginfaqkan kelebihan hartanya di jalan Allah SWT maka Allah akan melipatgandakan dengan tujuh ratus (kali lipat). Dan barangsiapa yang berinfaq untuk dirinya dan keluarganya, atau menjenguk orang sakit, atau menyingkirkan duri, maka mendapatkan kebbaikan dan kebaikan dengan sepuluh kali lipatnya. Puasa itu tameng selama ia tidak merusaknya. Dan barangsiapa yang Allah uji dengan satu ujian pada fisiknya, maka itu akan menjadi penggugur (dosa-dosanya).( HR. Ahmad )',
      },
      {
        'arabic': '',
        'indo':
            'Seorang sahabat bertanya kepada Rasulullah Saw, Sodaqoh yang bagaimana yang paling besar pahalanya? Nabi Saw menjawab, Saat kamu bersodaqoh hendaklah kamu sehat dan dalam kondisi pelit (mengekang) dan saat kamu takut melarat tetapi mengharap kaya. Jangan ditunda sehingga rohmu di tenggorokan baru kamu berkata untuk Fulan sekian dan untuk Fulan sekian. (HR. Bukhari)',
      },
      {
        'arabic': '',
        'indo':
            'Dari Abu Umamah r.a., Nabi saw. bersabda, Wahai anak Adam, seandainya engkau berikan kelebihan dari hartamu, yang demikian itu lebih baik bagimu. Dan seandainya engkau kikir, yang demikian itu buruk bagimu. Menyimpan sekadar untuk keperluan tidaklah dicela, dan dahulukanlah orang yang menjadi tanggung jawabmu. (HR. Muslim)',
      },
      {
        'arabic': '',
        'indo':
            'Barangsiapa ingin doanya terkabul dan dibebaskan dari kesulitannya hendaklah dia mengatasi (menyelesaikan) kesulitan orang lain. (HR. Ahmad)',
      },
      {
        'arabic': '',
        'indo':
            'Turunkanlah (datangkanlah) rezekimu (dari Allah) dengan mengeluarkan sodaqoh. (HR. Al-Baihaqi)',
      },
      {
        'arabic': '',
        'indo':
            'Pada tiap hari di kala matahari terbit, tiap jiwa diwajibkan bersedekah. Bertanya Abu Dzar: Bagaimana kami bersedekah sedang kami tidak mempunyai harta? Rasulullah menjawab: Di antara pintu-pintu sedekah, ialah bertakbir, bertasbih, bertahmid, bertasyahud, beristighfar, beramal ma’ruf bernahi mungkar, menyingkirkan rintangan-rintangan di jalan yang dilalui orang seperti duri, tulang dan batu dan menuntun orang buta, memberi pengertian kepada orang yang tuli dan bisu sampai mengerti, memberi petunjuk kepada orang yang mencari sesuatu yang engkau tahu tempatnya, mendatangi orang yang mminta tolong yang susah, payah dan lemah dengan menyingsing baju dan betis, semuanya itu adalah merupakan sedekah bagi dirimu.',
      },
      {
        'arabic': '',
        'indo':
            'Bentengilah hartamu dengan zakat, obati orang-orang sakit (dari kalanganmu) dengan bersodaqoh dan persiapkan doa untuk menghadapi datangnya bencana.(HR. Ath-Thabrani)',
      },
      {
        'arabic': '',
        'indo':
            'Seorang sahabat bertanya kepada Rasulullah (S.A.W.), Sedekah yang bagaimana yang paling besar pahalanya? Nabi (S.A.W.) menjawab, Saat kamu bersedekah hendaklah kamu sehat dan dalam kondisi pelit (mengekang) dan saat kamu takut melarat tetapi mengharap kaya. Jangan ditunda sehingga ruhmu di tenggorokan baru kamu berkata untuk Fulan sekian dan untuk Fulan sekian. (HR. Bukhari)',
      },
      {
        'arabic': '',
        'indo':
            'Tiada seorang bersodaqoh dengan baik kecuali Allah memelihara kelangsungan warisannya. (HR. Ahmad)',
      },
      {
        'arabic': '',
        'indo':
            'Senyum kalian bagi saudaranya adalah sedekah, beramar ma’ruf dan nahi munkar yang kalian lakukan untuk saudaranya juga sedekah, dan kalian menunjukkan jalan bagi seseorang yang tersesat juga sedekah. (HR. Tirmizi dan Abu Dzar)',
      },
      {
        'arabic': '',
        'indo':
            'Tidak seorangpun yang menyedekahkan hartanya yang halal dimana Allah menerimanya dengan kananNya (dengan baik), walaupun sedekahnya itu hanya sebutir kurma. Maka kurma tersebut akan bertambah besar di tangan Allah Yang Maha Pengasih, sehingga menjadi lebih besar daripada gunung. Demikian Allah memelihara sedekahmu, sebagaimana halnya kamu memelihara anak kambing dan unta (semakin hari semakin besar). ( HR. Muslim )',
      },
      {
        'arabic': '',
        'indo':
            'Ada tiga perkara yang saya bersumpah atasnya dan saya memberitahukan kepadamu semua akan suatu Hadits, maka peliharalah itu: Tidaklah harta seseorang itu akan menjadi berkurang sebab disedekahkan, tidaklah seseorang hamba dianiaya dengan suatu penganiayaan dan ia bersabar dalam menderitanya, melainkan Allah menambahkan kemuliaan padanya, juga tidaklah seseorang hamba itu membuka pintu permintaan, melainkan Allah membuka untuknya pintu kemiskinan, (H.R. Tirmidzi, dari Abu Kabsyah, yaitu Umar bin Sa\'ad al-Anmari r.a.)',
      },
      {
        'arabic': '',
        'indo':
            'Tiap-tiap amalan makruf (kebajikan) adalah sodaqoh. Sesungguhnya di antara amalan makruf ialah berjumpa kawan dengan wajah ceria (senyum) dan mengurangi isi embermu untuk diisikan ke mangkuk kawanmu. (HR. Ahmad)',
      },
      {
        'arabic': '',
        'indo':
            'Naungan bagi seorang mukmin pada hari kiamat adalah sodaqohnya. (HR. Ahmad)',
      },
      {
        'arabic': '',
        'indo':
            'Tiap muslim wajib bersodaqoh. Para sahabat bertanya, Bagaimana kalau dia tidak memiliki sesuatu? Nabi Saw menjawab, Bekerja dengan ketrampilan tangannya untuk kemanfaatan bagi dirinya lalu bersodaqoh. Mereka bertanya lagi. Bagaimana kalau dia tidak mampu? Nabi menjawab: Menolong orang yang membutuhkan yang sedang teraniaya Mereka bertanya: Bagaimana kalau dia tidak melakukannya? Nabi menjawab: Menyuruh berbuat ma’ruf. Mereka bertanya: Bagaimana kalau dia tidak melakukannya? Nabi Saw menjawab, Mencegah diri dari berbuat kejahatan itulah sodaqoh. (HR. Bukhari dan Muslim)',
      },
      {
        'arabic': '',
        'indo':
            'Apa yang kamu nafkahkan dengan tujuan keridhoan Allah akan diberi pahala walaupun hanya sesuap makanan ke mulut isterimu. (HR. Bukhari)',
      },
      {
        'arabic': '',
        'indo':
            'Ada satu kisah pada zaman Nabi (S.A.W.) yang mana seseorang yang banyak hutang berdiam di masjid di saat orang-orang bekerja. Ketika ditanya oleh Nabi (S.A.W.), orang tersebut menjawab bahwa ia sedang banyak hutang. Yang menarik adalah Nabi (S.A.W.) mengajarkan beliau sebuah doa, yang mana doa tersebut tidak menyebut sama sekali Bukakanlah pintu rezeki atau Perbanyaklah rezeki saya sehingga bisa membayar hutang. Tetapi doa yang diajarkan oleh Nabi (S.A.W.) adalah meminta perlindungan dari rasa malas dan bakhil (pelit). Hadits-hadits di atas menjelaskan tentang doa ini, bahwa ke-tidak-pelitan seseorang untuk bersedekah membuka pintu rezeki orang tersebut. Doa tersebut adalah: Ya Allah! Aku berlindung kepada-Mu daripada kegundahan dan kesedihan, daripada kelemahan dan kemalasan, daripada sifat pengecut dan bakhil (pelit), daripada kesempitan hutang dan penindasan orang.',
      },
      {
        'arabic': '',
        'indo':
            'Sodaqoh paling afdhol ialah yang diberikan kepada keluarga dekat yang bersikap memusuhi. (HR. Ath-Thabrani dan Abu Dawud)',
      },
      {
        'arabic': '',
        'indo':
            'Satu dirham memacu dan mendahului seratus ribu dirham. Para sahabat bertanya, Bagaimana itu? Nabi Saw menjawab, Seorang memiliki (hanya) dua dirham. Dia mengambil satu dirham dan bersodaqoh dengannya, dan seorang lagi memiliki harta-benda yang banyak, dia mengambil seratus ribu dirham untuk disodaqohkannya. (HR. An-Nasaa’i)',
      },
      {
        'arabic': '',
        'indo':
            'Orang yang membatalkan pemberian (atau meminta kembali) sodaqohnya seperti anjing yang makan kembali muntahannya. (HR. Bukhari)',
      },
      {
        'arabic': '',
        'indo':
            'Hendaklah tiap muslim bersedekah, bertanya para sahabat: Hai Nabi Allah, jika tidak ada yang disedekahkan? Bersabda Rasulullah saw.: Bekkerja dengan tangannya memanfaatkan dirinya dan bersedekah. Jika tidak dapat? bertanya lagi para sahabat. Menolong orang yang berkebutuhan yang sedang payah, jawab Rasulullah.. Jika tidak dapat?, tanya lagi parasahabat, yang dijawab oleh Rasulullah dengan sabdanya: Hendaklah beramal kebajikan, menahan diri dari perbuatan yang buruk dan itulah sudah merupakan sedekah.',
      },
      {
        'arabic': '',
        'indo':
            'Sedekah dari seorang Muslim menigkatkan (hartanya) dimasa kehidupannya. Dan juga meringankan kepedihan saat maut (Sakratulmaut), dan melauinya (sedekah) Allah menghilangkan perasaan sombong dan egois',
      },
      {
        'arabic': '',
        'indo':
            'Barangsiapa diberi Allah harta dan tidak menunaikan zakatnya kelak pada hari kiamat dia akan dibayang-bayangi dengan seekor ular bermata satu di tengah dan punya dua lidah yang melilitnya. Ular itu mencengkeram kedua rahangnya seraya berkata, Aku hartamu, aku pusaka simpananmu. Kemudian nabi Saw membaca firman Allah surat Ali Imran ayat 180: Dan janganlah orang-orang yang bakhil dengan harta yang Allah berikan kepada mereka dari karuniaNya menyangka bahwa kebakhilan itu baik bagi mereka. Sebenarnya kebakhilan itu buruk bagi mereka. Harta yang mereka bakhilkan itu akan dikalungkan kelak di lehernya di hari kiamat. Dan kepunyaan Allah lah segala warisan (yang ada) di langit dan di bumi. (HR. Bukhari)',
      },
      {
        'arabic': '',
        'indo':
            'Tiada suatu kaum menolak mengeluarkan zakat melainkan Allah menimpa mereka dengan paceklik (kemarau panjang dan kegagalan panen). (HR. Ath-Thabrani)',
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
          'Hadist Tentang Keutamaan Sedekah',
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
