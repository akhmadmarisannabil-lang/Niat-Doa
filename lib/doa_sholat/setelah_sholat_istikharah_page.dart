import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SetelahSholatIstikharahPage extends StatelessWidget {
  const SetelahSholatIstikharahPage({super.key});

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
          "Doa Setelah Sholat Istikharah",
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
              "اَللّٰهُمَّ إِنِّيْ أَسْتَخِيْرُكَ بِعِلْمِكَ، وَأَسْتَقْدِرُكَ بِقُدْرَتِكَ، وَأَسْأَلُكَ مِنْ فَضْلِكَ الْعَظِيْمِ، فَإِنَّكَ تَقْدِرُ وَلَا أَقْدِرُ، وَتَعْلَمُ وَلَا أَعْلَمُ، وَأَنْتَ عَلَّامُ الْغُيُوْبِ، اَللّٰهُمَّ إِنْ كُنْتَ تَعْلَمُ أَنَّ هَذَا الْأَمْرَ ....... خَيْرٌ لِيْ فِيْ دِيْنِيْ وَمَعَاشِيْ وَعَاقِبَةِ أَمْرِيْ فَاقْدُرْهُ لِيْ وَيَسِّرْهُ لِيْ ثُمَّ بَارِكْ لِيْ فِيْهِ، وَإِنْ كُنْتَ تَعْلَمُ أَنَّ هَذَا الْأَمْرَ شَرٌّ لِيْ فِيْ دِيْنِيْ وَدُنْيَايَ وَمَعَاشِيْ وَعَاقِبَةِ أَمْرِيْ عَاجِلِهِ وَاٰجِلِهِ فَاصْرِفْهُ عَنِّيْ وَاصْرِفْنِيْ عَنْهُ وَاقْدُرْ لِيَ الْخَيْرَ حَيْثُ كَانَ ثُمَّ رَضِّنِيْ بِهِ",
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
              "Allâhumma innî astakhîruka bi’ilmika, wa astaqdiruka biqudratika, wa as’aluka min fadllikal ‘adhîmi, fainnaka taqdiru wa lâ aqdiru, wa ta’lamu wa lâ a’lamu, wa anta allâmul ghuyûb. Allâhumma in kunta ta’lamu anna hâdzal amra ...... khairun lî fî dînî wa ma’âsyî wa ‘âqibati amrî faqdurhû lî wa yassirhû lî tsumma bârik lî fîhi. Wa in kunta ta’lamu anna hâdzal amra syarrun lî fî dînî wa dunyâya wa ma’âsyî wa ‘âqibati amrî ‘âjilihî wa âjilihî fashrifhu ‘annî washrifnî ‘anhu waqdur liyal khaira ḫaitsu kâna tsuma radldlinî bihî.",
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
              "Ya Allah, sungguh aku meminta pilihan yang tepat kepada-Mu dengan ilmu pengetahuan-Mu dan aku mohon kuasa-Mu (atas masalahku) dengan kuasa-Mu. Aku mohon sebagian dari karunia-Mu yang agung karena sungguh Engkau Mahakuasa, sedang aku tidak kuasa, Engkau mengetahui, sedang aku tidak mengetahuinya. Engkau maha mengetahui hal yang gaib. Ya Allah, apabila Engkau mengetahui bahwa urusan ini (sebutkan masalah yang dihadapinya) lebih baik dalam agamaku, kehidupanku, dan akibatnya terhadap diriku, takdirkan ia untukku, mudahkan jalannya, dan berilah berkah. Sebaliknya, jika Engkau mengetahui bahwa persoalan ini lebih berbahaya bagiku dalam agama, dunia, kehidupan, dan akibatnya terhadap diriku baik seketika maupun suatu ketika nanti, maka singkirkan persoalan itu, dan jauhkan aku darinya. Takdirkanlah bagiku kebaikan di mana saja berada, dan berilah ridha-Mu untukku.",
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
