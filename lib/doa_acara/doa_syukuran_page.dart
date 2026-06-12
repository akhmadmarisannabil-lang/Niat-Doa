import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoaSyukuranPage extends StatelessWidget {
  const DoaSyukuranPage({super.key});

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
          "Doa Syukuran / Walimah",
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
              "اَللّٰهُمَّ صَلِّ عَلَى سَيِّدِنَا مُحَمَّدٍ وَعَلَى آلِ سَيِّدِنَا مُحَمَّدٍ. اَللّٰهُمَّ سَلِّمْنَا وَسَلِّمْ دِيْنَنَا وَسَلِّمْ أَجْسَادَنَا وَسَلِّمْ أَمْوَالَنَا مِنْ بَلَاءِ الدُّنْيَا وَعَذَابِ الْآخِرَةِ. رَبَّنَا أَدْخِلْنَا مُدْخَلَ صِدْقٍ وَأَخْرِجْنَا مُخْرَجَ صِدْقٍ وَاجْعَلْ لَنَا مِنْ لَدُنْكَ سُلْطَانًا نَصِيْرًا. اَللّٰهُمَّ بَارِكْ لَنَا فِيْمَا رَزَقْتَنَا وَقِنَا عَذَابَ النَّارِ. سُبْحَانَ رَبِّكَ رَبِّ الْعِزَّةِ عَمَّا يَصِفُوْنَ، وَسَلَامٌ عَلَى الْمُرْسَلِيْنَ، وَالْحَمْدُ لِلّٰهِ رَبِّ الْعَالَمِيْنَ",
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
              "Allahumma shalli 'ala sayyidina muhammadin wa 'ala aali sayyidina muhammadin. Allahumma sallimna wa sallim diinana wa sallim ajsadana wa sallim amwalana min balaa'id dun-yaa wa 'adzaabil aakhirah. Rabbana adkhilna mudkhala shidqin wa akhrijna mukhraja shidqin waj'al lana min ladunka sulthaanan nashiira. Allahumma baarik lanaa fiimaa razaqtana wa qinaa 'adzaaban naar. Subhaana rabbika rabbil 'izzati 'ammaa yashifuun, wa salaamun 'alal mursaliin, wal-hamdu lillahi rabbil 'alamiin.",
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
              "Ya Allah, limpahkanlah rahmat kepada junjungan kami Nabi Muhammad SAW dan keluarganya. Ya Allah, selamatkanlah kami, agama kami, fisik kami, dan harta kami dari bala bencana dunia dan siksa akhirat. Ya Tuhan kami, masukkanlah kami dengan cara yang benar, keluarkanlah kami dengan cara yang benar, dan berikanlah kepada kami dari sisi-Mu kekuasaan yang menolong. Ya Allah, berkahilah kami pada apa yang Engkau rezekikan kepada kami, dan peliharalah kami dari siksa api neraka. Maha Suci Tuhanmu, Tuhan pemilik kemuliaan, dari apa yang mereka sifatkan. Keselamatan semoga dilimpahkan kepada para rasul, dan segala puji bagi Allah, Tuhan sekalian alam.",
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
