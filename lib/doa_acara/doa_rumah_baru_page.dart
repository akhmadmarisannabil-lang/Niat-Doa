import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoaRumahBaruPage extends StatelessWidget {
  const DoaRumahBaruPage({super.key});

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
          "Doa Menempati Rumah Baru",
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
              "بِسْمِ اللهِ الرَّحْمَنِ الرَّحِيمِ الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ، حَمْدًا يُوَافِي نِعَمَهُ وَيُكَافِئُ مَزِيدَهُ يَا رَبَّنَا لَكَ الْحَمْدُ كَمَا يَنْبَغِي لِجَلَالِ وَجْهِكَ وَعَظِيمٍ سُلْطَانِكَ. اللَّهُمَّصَلِّ وَسَلَّمْ عَلَى سَيِّدِنَا مُحَمَّدٍ. اَللَّهُمَّ إِنَّا نَسْأَلُكَ خَيْرَ الْمَوْلَ وَخَيْرَ الْمَخْرَجِ بِسْمِ اللَّهِ وَلَجْنَا وَ بِسْمِ اللَّهِ خَرَجْنَا وَعَلَى رَبِّنَا تَوَكَّلْنَا . اللَّهُمَّ اغْفِرْ لَنَا ذُنُوبَنَا وَوَسِعْ لَنَا فِي دَارِنَا هَذَا وَبَارِكْ لَنَا في رِزْقِنَا اللَّهُمَّ سَلَّمْنَا وَسَلَّمْ دِينَنَا وَسَلَّمْ أَجْسَادَنَا وَسَلَّمْ أَمْوَالَنَا مِنْ بَلَاءِ الدُّنْيَا وَعَذَابِ الْآخِرَةِ، رَبَّنَا أَدْخِلْنَا مُدْخَلَ صِدْقٍ وَأَخْرِجْنَا مُخْرَجَ صِدْقٍ وَاجْعَلْ لَنَا مِنْ لَدُنْكَ سُلْطَانًا نَصِيرًا. رَبَّنَا آتِنَا فِي الدُّنْيَا حَسَنَةً وَفِي الْآخِرَةِ حَسَنَةً وَقِنَا عَذَابَ النَّارِ، وَالْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِيْنَ",
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
              "Bismillāhir-Raḥmānir-Raḥīm Al-ḥamdu lillāhi Rabbil-'Ālamīn, ḥamdan yuwāfī ni'amahu wa yukāfi'u mazīdah. Yā Rabbana lakal-ḥamdu kamā yanbaghī lijalāli wajhika wa 'aẓīmi sulṭānik. Allāhumma ṣalli wa sallim 'alā sayyidinā Muḥammad. Allāhumma innā nas'aluka khayral-mawla wa khayral-makhraj. Bismillāhi walajnā wa bismillāhi kharajnā wa 'alā Rabbina tawakkalnā. Allāhumma ighfir lanā dhunūbanā wa wasi' lanā fī dārinā hādhā wa bārik lanā fī rizqinā. Allāhumma sallimnā wa sallim dīnanā wa sallim ajsādanā wa sallim amwālanā min balā'id-dunyā wa 'adhābil-ākhirah. Rabbana adkhilnā mudkhala ṣidqin wa akhrijnā mukhraja ṣidqin wa aj'al lanā min ladunka sulṭānan naṣīrā. Rabbana ātinā fid-dunyā ḥasanah wa fil-ākhirati ḥasanah wa qinā 'adhāban-nār. Wal-ḥamdu lillāhi Rabbil-'Ālamīn.",
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
              "Dengan nama Allah yang Maha Pengasih lagi Maha Penyayang. Segala puji bagi Allah Tuhan semesta alam dengan puji yang menetapi dan menambah nikmat-Nya, ya Tuhan kami, bagi-Mulah segala puji, sebagaimana yang layak bagi keagungan Dzat kerajaan-Mu. Ya Allah, limpahkanlah rahmat dan kesejahteraan atas junjungan kami Nabi Muhammad. Ya Allah, kami mohon kepada-Mu sebaik- baik tempat masuk dan sebaik-baik tempat keluar. Dengan nama Allah kami masuk dan dengan nama Allah kami keluar, dan kepada Tuhan kami berserah diri. Ya Allah, ampunilah kami, dosa-dosa kami, dan lapangkanlah kami dalam rumah ini serta berkahilah rezeki kami. Ya Allah, selamatkanlah kami, agama kami, fisik-fisik kami, dan harta benda kami dari bencana dunia dan siksa akhirat. Ya Tuhan kami, masukkanlah kami dengan cara yang baik dan keluarkanlah kami dengan cara yang baik dan berikanlah kepada kami di sisi Engkau kekuasaan yang menolong. Ya Tuhan kami, berilah kami kebaikan di dunia dan kebaikan di akhirat serta peliharalah kami dari siksa api neraka. Dan segala puji bagi Allah Tuhan semesta alam.",
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
