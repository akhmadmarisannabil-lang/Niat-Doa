import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NisfuSyabanPage extends StatelessWidget {
  const NisfuSyabanPage({super.key});

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
        : Colors.teal.withOpacity(0.2);

    final Color arabicTextColor = isLightMode
        ? Colors.black
        : Colors.white.withOpacity(0.9);

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
          "Doa Nisfu Sya'ban",
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
            children: [_buildTag("Doa Tertentu", chipBgColor, chipTextColor)],
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
              "اَللّٰهُمَّ يَا ذَا الْمَنِّ وَلَا يُمَنُّ عَلَيْكَ، يَا ذَا الْجَلَالِ وَالْإِكْرَامِ، يَا ذَا الطَّوْلِ وَالْإِنْعَامِ، لَا إِلَهَ إِلَّا أَنْتَ ظَهْرَ اللَّاجِيْنَ وَجَارَ الْمُسْتَجِيْرِينَ وَمَأْمَنَ الْخَائِفِيْنَ.اَللّٰهُمَّ إِنْ كُنْتَ كَتَبْتَنِيْ عِنْدَكَ فِيْ أُمِّ الْكِتَابِ شَقِيًّا أَوْ مَحْرُوْمًا أَوْ مُقَطَّرًا عَلَيَّ فِيْ الرِّزْقِ، فَامْحُ اللّٰهُمَّ بِفَضْلِكَ شَقَاوَتِيْ وَحِرْمَانِيْ وَاقْتِطَارَ رِزْقِيْ، وَأَثْبِتْنِيْ عِنْدَكَ فِيْ أُمِّ الْكِتَابِ سَعِيْدًا مَرْزُوْقًا مُوَفَّقًا لِلْخَيْرَاتِ، فَإِنَّكَ قُلْتَ وَقَوْلُكَ الْحَقُّ فِيْ كِتَابِكَ الْمُنَزَّلِ عَلَى لِسَانِ نَبِيِّكَ الْمُرْسَلِ: يَمْحُو اللّٰهُ مَا يَشَاءُ وَيُثْبِتُ وَعِنْدَهُ أُمُّ الْكِتَابِ.إِلٰهِيْ بِالتَّجَلِّي الْأَعْظَمِ فِيْ لَيْلَةِ النِّصْفِ مِنْ شَهْرِ شَعْبَانَ الْمُكَرَّمِ، الَّتِيْ يُفْرَقُ فِيْهَا كُلُّ أَمْرٍ حَكِيمٍ وَيُبْرَمُ، أَنْ تَكْشِفَ عَنَّا مِنَ الْبَلَاءِ مَا نَعْلَمُ وَمَا لَا نَعْلَمُ وَمَا أَنْتَ بِهِ أَعْلَمُ، إِنَّكَ أَنْتَ الْأَعَزُّ الْأَكْرَمُ، وَصَلَّى اللّٰهُ عَلَى سَيِّدِنَا مُحَمَّدٍ النَّبِيِّ الْأُمِّيِّ وَعَلَى آلِهِ وَصَحْبِهِ وَسَلَّمَ",
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
              "Allâhumma yâ dzal manni wa lâ yumannu 'alaik, yâ dzal jalâli wal ikrâm, yâ dzat thawli wal in'âm, lâ ilâha illâ anta zhahral lâjîn wa jâral mustajîrîn wa ma'manal khâ'ifîn.Allâhumma in kunta katabtanî 'indaka fî ummil kitâbi syaqiyyan aw mahrûman aw muqtarran 'alayya fir rizqi, famhullâhumma bi fadhlika syaqâwatî wa ḥirmânî wa iqtithâra rizqî, wa atsbitnî 'indaka fî ummil kitâbi sa'îdan marzûqan muwaffaqan lil khayrâti. Fa innaka qulta wa qawlukal ḥaqqu fî kitâbikal munazzali 'alâ lisâni nabiyyikal mursal: Yamḥullâhu mâ yasyâ'u wa yutsbit, wa 'indahû ummul kitâb.Ilâhî bit-tajallil a'zhami fî laylatin nishfi min syahris sya'bânil mukarram, allatî yufraqu fîhâ kullu amrin ḥakîmin wa yubram, an taksyifa 'annâ minal balâ'i mâ na'lamu wa mâ lâ na'lamu wa mâ anta bihî a'lam, innaka antal a'azzul akram. Wa shallallâhu 'alâ sayyidinâ Muḥammadin nabiyyil ummiyyi wa 'alâ âlihi wa shahbihi wa sallam.",
              style: TextStyle(
                color: subTextColor,
                fontSize: 14,
                fontStyle: FontStyle.italic,
                height: 1.4,
              ),
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
              "Wahai Allah, Tuhan yang memiliki anugerah dan tidak diberi anugerah atas-Mu. Wahai Tuhan yang memiliki keagungan dan kemuliaan. Wahai Tuhan yang memiliki kekuasaan dan kenikmatan. Tiada Tuhan yang berhak disembah selain Engkau, tempat bernaung para pencari perlindungan, tetangga bagi orang-orang yang meminta perlindungan, dan tempat aman bagi orang-orang yang takut.Ya Allah, jika Engkau telah mencatatku di sisi-Mu pada Ummul Kitab (Lauh Mahfuz) sebagai orang yang celaka, terhalang, atau sempit rezekinya, maka hapuskanlah ya Allah, dengan karunia-Mu, kecelakaan, keterhalangan, dan kesempitan rezekiku. Dan tetapkanlah aku di sisi-Mu dalam Ummul Kitab sebagai orang yang bahagia, mendapat rezeki, dan diberi kemudahan untuk melakukan berbagai kebaikan. Karena sesungguhnya Engkau telah berfirman dan firman-Mu adalah benar di dalam kitab-kitab-Mu yang diturunkan melalui lisan Nabi-Mu yang diutus: 'Allah menghapuskan apa yang Dia kehendaki dan menetapkan (apa yang Dia kehendaki), dan di sisi-Nya terdapat Ummul Kitab.'Wahai Tuhanku, dengan tajalli (penampakan cahaya) yang Maha Agung pada malam pertengahan bulan Sya'ban yang mulia, di mana pada malam itu dirinci dan ditetapkan segala urusan yang bijaksana, mohon singkirkanlah dari kami bala (bencana) baik yang kami ketahui maupun yang tidak kami ketahui, dan yang Engkau lebih mengetahuinya. Sesungguhnya Engkau Maha Perkasa lagi Maha Mulia. Semoga Allah melimpahkan rahmat dan keselamatan kepada junjungan kami Nabi Muhammad, keluarga, dan para sahabatnya.",
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
