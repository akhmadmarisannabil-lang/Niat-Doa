import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SetelahSholatWitirPage extends StatelessWidget {
  const SetelahSholatWitirPage({super.key});

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
          "Doa Setelah Sholat Witir'",
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
            children: [_buildTag("Doa Ibadah", chipBgColor, chipTextColor)],
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
              "اَللّٰهُمَّ إِنَّا نَسْاَلُكَ إِيْمَانًا دَاِئمًا وَنَسْأَلُكَ قَلْبًا خَاشِعًا وَنَسْأَلُكَ عِلْمًا نَافِعًا وَنَسْأَلُكَ يَقِيْنًا صَــــادِقًا وَنَسْأَلُكَ عَمَلًا صَالِحًا وَنَسْأَلُكَ دِيْنًا قَيِّمًا وَنَسْأَلُكَ خَيْرًا كَثِيْرًا وَنَسْأَلُكَ الْعَفْوَ وَالْعَافِيَةَ وَنَسْأَلُكَ تَمَامَ الْعَافِيَةِ وَنَسْأَلُكَ الشُّكْرَ عَلَى الْعَافِيَةِ وَنَسْأَلُكَ الْغِنَى عَنِ النَّــــاسِ. اَللّٰهُمَّ رَبَّنَا تَقَبَّلْ مِنَّا صَلَاتَنَا وَصِيَامَنَا وَقِيَامَنَا وَتَخَشُّعَنَا وَتَضَرُّعَنَا وَتَعَبُّدَنَا وَتَمِّمْ تَقْصِيْرَنَا يَــــــا اَللهُ يَاأَرْحَمَ الرَّاحِمِيْنَ وَصَلَّى اللهُ عَلَى خَيْرِ خَلْقِهِ سَيِّدِنَا مُحَمَّدٍ وَعَلَى اٰلِهِ وَأَصْحَابِهِ أَجْمَعِيْنَ وَالْحَمْدُ لِلّٰهِ رَبِّ الْعَالَمِيْنَ",
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
              "Allâhumma innâ nasaluka îmânan dâiman wa nas-aluka qalban khâsyi‘an wan as-aluka ‘ilman nâfi‘an wan as-aluka yaqînan shâdiqan wan as-aluka ‘amalan shâliḫan wan as-aluka dînan qayyiman wan as-aluka khairan katsîran wan as-aluka-l-‘afwa wal ‘âfiyata wan as-aluka tamâmal ‘âfiyati wan as-aluka-sy-syukra ‘alal ‘âfiyati wan as-aluka-l-ghinâ ‘anin nâs. Allâhumma rabbanâ taqabbal minnâ shalâtanâ wa shiyâmanâ wa qiyâmanâ wa takhasyu‘anâ wa tadlarru‘anâ wa ta‘abbudanâ wa tammim taqshîranâ. Yâ Allâh yâ arḫamar râḫimîn wa shallallâhu ‘alâ khairi khalqihi sayyidinâ Muḫammadin wa ‘alâ âlihî wa ash-ḫâbihî ajma‘în wal ḫamdulillâhi rabbil ‘âlamîn",

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
              "Ya Allah, kami mohon pada-Mu, iman yang langgeng, hati yang khusyuk, ilmu yang bermanfaat, keyakinan yang benar,amal yang saleh, agama yang lurus, kebaikan yang banyak.kami mohon kepada-Mu ampunan dan kesehatan, kesehatan yang sempurna, kami mohon kepada-Mu bersyukur atas karunia kesehatan, kami mohon kepada-Mu kecukupan terhadap sesama manusia. Ya Allah, tuhan kami terimalah dari kami: shalat, puasa, ibadah, kekhusyukan, rendah diri dan ibadah kami, dan sempurnakanlah segala kekurangan kami. Ya Allah, Tuhan yang Maha Pengasih dari segala yang pengasih. Dan semoga kesejahteraan dilimpahkan kepada makhluk-Nya yang terbaik, Nabi Muhammad, demikian pula keluarga dan para sahabatnya secara keseluruhan. Serta segala puji milik Allah Tuhan semesta alam.",
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
