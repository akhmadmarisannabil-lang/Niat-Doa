import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BulanSafarPage extends StatelessWidget {
  const BulanSafarPage({super.key});

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
          "Doa Bulan Rafar",
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
              _buildTag("Doa Tertentu", chipBgColor, chipTextColor),
              _buildTag("duduk", chipBgColor, chipTextColor),
              _buildTag("sholat", chipBgColor, chipTextColor),
            ],
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
              "بِسْمِ اللهِ الرَّحْمنِ الرَّحِيْمِ، وَصَلَّى اللهُ تَعَالَى عَلَى سَيِّدِنَا مُحَمَّدٍ وَعَلَى اٰلِهِ وَصَحْبِهِ أَجْمَعِيْنَ، أَعُوْذُ بِاللهِ مِنْ شَرِّ هٰذَا الزَّمَانِ وَأَهْلِهِ، وَأَسْأَلُكَ بِجَلَالِكَ وَجَلَالِ وَجْهِكَ وَكَمَالِ جَلَالِ قُدْسِكَ أَنْ تُجِيْرَنِيْ وَوَالِدَيَّ وَأَوْلَادِيْ وَأَهْلِيْ وَأَحْبَابِيْ وَمَا تُحِيْطُهُ شَفَقَةُ قَلْبِيْ مِنْ شَرِّ هٰذِهِ السَّنَةِ، وَقِنِيْ شَرَّ مَا قَضَيْتَ فِيْهَا، وَاصْرِفْ عَنِّيْ شَرَّ شَهْرِ صَفَرَ، يَا كَرِيْمَ النَّظَرِ، وَاخْتِمْ لِيْ فِيْ هٰذَا الشَّهْرِ وَالدَّهْرِ بِالسَّلَامَةِ وَالْعَافِيَةِ لِي وَلِوَالِدَيَّ وَأَوْلَادِيْ وَلِأَهْلِيْ وَمَا تَحُوْطُهُ شَفَقَةُ قَلْبِيْ وَجَمِيْعِ الْمُسْلِمِيْنَ. وَصَلَّى اللهُ تَعَالَى عَلَى سَيِّدِنَا مُحَمَّدٍ وَعَلَى اٰلِهِ وَصَحْبِهِ وَسَلَّمَ",
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
              "Bismilâhirraḫmanirraḫim, wa shallallâhu ta’âla ‘alâ sayyidinâ Muḫammadin wa ‘alalâ âlihi wa shaḫbihi ajma‘în. A‘ûdzu billâhi min syarri hâdzaz zamân wa ahlihi, wa as'aluka bi jalâlika wa jalâli wajhika wa kamâli jalâli qudsika an tujîrani wa wâlidayya wa ahlî wa aḫbâbi wa mâ tuḫîthuhu syafaqatu qalbî min syarri hâdzihis sanati, wa qinî syarra mâ qadlaita fîha, washrif ‘annî syarra syahri shafar(a), yâ Karîman nadhar, wakhtim lî fî hâdzas syahri wad dahri bis salâmati wal ‘âfiyati lî wa li wâlidayya wa aulâdî wa li ahlî wa mâ taḫûthuhu syafaqatu qalbi wa jamî‘il muslimîn(a), wa shallallâhu ta‘âla ‘alâ sayyidinâ Muḫammadin wa ‘alâ âlihi wa shaḫbihi wa sallam(a).",
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
              "Dengan nama Allah yang Maha Pengasih lagi Maha Penyayang. Semoga Allah selalu memberi rahmat kepada Tuan kami, Muhammad SAW dan keluarganya serta sahabatnya semuanya. Aku berlindung dari keburukan zaman ini dan orang-orang yang memiliki keburukan itu, dan aku memohon dengan wasilah keagungan-Mu dan keagungan keridhaan-Mu serta keagungan kesucian-Mu, supaya Engkau melindungiku, kedua orang tuaku, keluargaku, orang-orang yang aku cintai dan sesuatu yang diliputi kasih sayangku, dari keburukan tahun ini, dan cegahlah aku dari keburukan yang telah Engkau tetapkan di dalamnya. Palingkanlah dariku keburukan di bulan Safar, wahai Dzat Yang Memiliki Pandangan Yang Mulia. Akhirilah aku di bulan ini, di waktu ini dengan keselamatan dan sejahtera bagi kedua orang tuaku, anak-anakku, keluargaku, dan sesuatu yang diliputi kasih sayangku seluruhnya. Semoga Allah selalu memberi rahmat dan keselamatan kepada tuan kami Muhammad ﷺ, dan keluarganya serta sahabatnya.",
              style: TextStyle(color: subTextColor, fontSize: 14, height: 1.4),
            ),
          ),
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
                color: isLightMode ? borderColor : Colors.teal.withOpacity(0.1),
              ),
            ),
            child: Text(
              "Amalan memohon perlindungan mutlak kepada Allah SWT dari berbagai cobaan, fitnah, mara bahaya, dan hal buruk lainnya di bulan Safar.",
              style: TextStyle(
                color: isLightMode ? const Color(0xff475569) : Colors.white60,
                fontSize: 13,
                height: 1.5,
              ),
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
