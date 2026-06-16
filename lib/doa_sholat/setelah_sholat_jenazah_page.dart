import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SetelahSholatJenazahPage extends StatelessWidget {
  const SetelahSholatJenazahPage({super.key});

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
          "Doa Setelah Shalat Jenazah",
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
              "بِسْمِ اللّٰهِ الرَّحْمٰنِ الرَّحِيْمِ اَللّٰهُمَّ صَلِّى عَلٰى سَيِّدِنَامُحَمَّدٍوَعَلٰى اٰلِ سَيِّدِنَامُحَمَّدٍ. اَللّٰهُمَّ بِحَقِّ الْفَتِحَةِ.اِعْتِقْ رِقَابَنَاوَرِقَابَ هٰذَاالْمَيِّتِ (هٰذِهِ الْمَيِّتَتِ) مِنَ النَّارِ٣× اَللّٰهُمَّ اَنْزِلِ الرَّحْمَةَ وَالْمَغْفِرَةَعَلٰى هٰذَالْمَيِّتِ (هٰذِهِ الْمَيِّتَتِ) وَاجْعَلْ قَبْرَهٗ(هَا)رَوْضَةًمِنَ الْجَنَّةِ.وَلاَتَجْعَلْهُ لَهٗ (لَهَا) حُفْرَةًمِنَ النِّيْرَانِ.وَصَلَّى اللّٰهُ عَلٰى خَيْرِخَلْقِهٖ سَيِّدِنَامُحَمَّدٍوَاٰلِهٖ وَصَحْبِهٖ اَجْمَعِيْنَ وَالْحَمْدُلِلّٰهِ رَبِّ الْعَالَمِيْنَ",
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
              "Bismillaahirrahmaanirrahiim, Allaahumma sholli 'alaa sayyidinaa Muhammadin wa'alaa aali sayyidinaa Muhammadin Allaahumma bihaqqil fatihati i'tiq riqaa banaa wariqaaba haadzal mayyiti (haadzihil mayyitati) waj'al qabrahuu (haa) roudhotan minal jannati. Walaa taj'alhu lahuu (lahaa) hufratan minanniiraani. Washollallaahu 'alaa khoiri kholqihi sayyidinaa Muhammadin wa aalihii washohbihii ajma'iina walhamdulillaahi rabbil 'aalamiina.",
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
              "Ya Allah, curahkanlah rahmat atas junjungan kami Nabi Muhammad dan kepada keluarga Nabi Muhammad. Ya Allah, dengan berkahnya surat Al Fatihah, bebaskanlah dosa kami dan dosa mayat ini dari siksaan api neraka (3 x). Ya Allah, curahkanlah rahmat dan berilah ampunan kepada mayat ini. Dan jadikan lah tempat kuburnya taman nyaman dari surga dan janganlah Engkau menjadikan kuburnya itu lubang jurang neraka. Semoga Allah memberi rahmat kepada semulia-mulia makhluk-Nya yaitu junjungan kami Nabi Muhammad dan keluarganya serta sahabat-sahabatnya sekalian. Segala puji bagi Allah Tuhan seluruh alam.",
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
