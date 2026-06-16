import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KhitananPage extends StatelessWidget {
  const KhitananPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isLightMode = Theme.of(context).brightness == Brightness.light;

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
          "Doa Acara khitanan",
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
            children: [_buildTag("Doa Acara", chipBgColor, chipTextColor)],
          ),
          const SizedBox(height: 32),

          Center(
            child: Text(
              "Teks Arab",
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
              "اللَّهُمَّ وَفِّقْنَا لِاجْتِلَابِ الْفَضَائِلِ وَجَنِّبْنَا عَنِ اقْتِرَاحِ الرَّذَائِلِ. رَبَّنَا تَقَبَّلْ مِنَّا إِعْذَارَنَا وَسَلَّمْ أُمُوْرَنَا وَصَحِحْ مَخْتُوْنَنَا وَاقْضِ دُيُونَنَا وَبَلِّغْ آمَالَنَا وَوَسِعْ أَرْزَاقَنَا بِجُودِكَ يَا جَوَّادُ. اَللَّهُمَّ إِنَّا نَسْأَلُكَ السَّلَامَةَ وَالْعَافِيَةَ عَلَيْنَا وَعَلَى الْحُجَّاجِ وَالْغُزَاةِ وَالْمُسَافِرِيْنَ مِنْ أُمَّةِ سَيِّدِنَا مُحَمَّدٍ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ أَجْمَعِينَ فِي بَرِكَ وَبَحْرِكَ إِنَّكَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ يَا نِعْمَ الْمَوْلَى وَنِعْمَ النَّصِيرُ سُبْحَانَ رَبِّكَ رَبِّ الْعِزَّةِ عَمَّا يَصِفُوْنَ. وَسَلَامٌ عَلَى الْمُرْسَلِينَ وَالْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ",
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
              "Allaahumma waffiqnaa lijtilaabil fadhaaili wajan- nibna 'aniqtiraahir radzaail. Rabbanaa taqabbal minnaa I'dzaaranaa wa sallim umuuranaa wa shahhih makhtuuna- naa waqdhi duyuunanaa waballigh aamaalanaa wawassi' arzaaqanaa bijuudika yaa jawwaad. Allaahumma innan nas alukas salaamata wal 'aafiyata 'alainaa wa 'alal hujjaaji wal- ghuzaati wal musaafiriina min ummati sayyidinaa Muham- madin Shallallaahu 'alaihi wa sallama ajma'iina fii barrika wabahrika innaka 'alaa kulli syai in qadiir. Yaa ni'mal mau- laa wa ni'man nashiir. Subhaanaka rabbika rabbil 'izzati 'am- maa yashifuun. Wasalaamun 'alal mursaliin walhamdulillahi rabbil 'aalamiin.",
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
              border: isLightMode ? Border.all(color: borderColor) : null,
            ),
            child: Text(
              "Ya Allah, berilah kami pertolongan untuk meraih nilai-nilai keutamaan, dan hindarkanlah kami dari melakukan perilaku-perilaku yang hina. Wahai Tuhan kami, terimalah walimah khitan (I'dzar) kami ini, selamatkanlah urusan- urusan kami, capaikanlah harapan-harapan kami, dan lapangkanlah rezeki-rezeki kami, dengan kemurahan-Mu wahai Tuhan Yang Maha Pemurah. Ya Allah, sungguh kami memohon kepadaMu kesejahteraan dan keselamatan untuk kami, untuk para jamaah haji, untuk prajurit di medan perang, dan untuk para musafir dari umat Muhammad pemimpin kami Rasulullah SAW, semuanya, baik yang berada di daratan maupun dilautan. Sungguh Engkau Maha Kuasa atas segala sesuatu. Wahai yang mempunyai keagungan dari sifat yang mereka (orang-orang kafir) tuduhkan. Keselamatan atas para utusan dan segala puji bagi Allah, Tuhan segala alam.",
              style: TextStyle(color: subTextColor, fontSize: 14, height: 1.4),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTag(String label, Color bg, Color textCol) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(label, style: TextStyle(color: textCol, fontSize: 11)),
    );
  }
}
