import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HalalBiHalalPage extends StatelessWidget {
  const HalalBiHalalPage({super.key});

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
          "Doa Acara Halal-Bihalal",
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
              "اللَّهُمَّ صَلِّ وَسَلَّمْ عَلَى سَيِّدِنَا مُحَمَّدٍ سَيِّدِ الْأَوَّلِينَ وَالْآخِرِينَ وَسَلَّمْ وَرَضِيَ اللَّهُ تَبَارَكَ وَتَعَالَى عَنْ سَادَاتِنَا وَعَنْ أَصْحَابِ رَسُوْلِ اللَّهِ أَجْمَعِينَ وَالْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ . اللَّهُمَّ تَقَبَّلْ مِنَّا صَلَاتَنَا وَصِيَامَنَا وَقِيَامَنَا وَقِرَاءَتَنَا وَزَكَاتَنَا وَصَدَقَاتِنَا بِرَحْمَتِكَ يَا أَرْحَمَ الرَّاحِمِينَ . اللَّهُمَّ اغْفِرْ لَنَا ذُنُوبَنَا وَكَفِّرْعَنَّا سَيِّئَاتِنَا وَخَطَايَانَا أَنْتَ وَلِيُّنَا فَاغْفِرْ لَنَا وَارْحَمْنَا وَأَنْتَ خَيْرُ الْغَافِرِينَ. وَاجْعَلْنَا يَا اللَّهُ مِنَ الْعَائِدِينَ وَالْفَائِزِينَ وَالْمَقْبُوْلِينَ وَالْمَغْفُورِينَ وَادْخِلْنَا فِي زُمْرَةِ عِبَادِكَ الصَّالِحِينَ، رَبَّنَا تَقَبَّلْ مِنَّا إِنَّكَ أَنْتَ السَّمِيعُ الْعَلِيمُ وَتُبْ عَلَيْنَا إِنَّكَ أَنْتَ التَّوَّابُ الرَّحِيمُ وَالْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ",
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
              "Allāhumma ṣalli wa sallim 'alā sayyidinā Muḥammad, sayyidil-awwalīna wal-ākhirīn wa sallim, wa raḍiyallāhu tabāraka wa ta'ālā 'an sādatinā wa 'an aṣḥābir-Rasūlillāhi ajma'īn. Wal-ḥamdu lillāhi rabbil-'ālamīn. Allāhumma taqabbal minnā ṣalātanā wa ṣiyāmanā wa qiyāmanā wa qirā'atanā wa zakātanā wa ṣadaqātanā, biraḥmatika yā arḥamar-rāḥimīn. Allāhumma ighfir lanā dhunūbanā wa kaffir 'annā sayyi'ātinā wa khaṭāyānā, anta waliyyunā faghfir lanā warḥamnā wa anta khayrul-ghāfirīn. Waj'alnā yā Allāhu minal-'āidīn wal-fāizīn wal-maqbūlīn wal-maghfūrīn, wa adkhilnā fī zumrati 'ibādikaṣ-ṣāliḥīn. Rabbana taqabbal minnā innaka antas-samī'ul-'alīm, wa tub 'alainā innaka antat-tawwābur-raḥīm. Wal-ḥamdu lillāhi rabbil-'ālamīn.",
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
              "Dengan nama Allah yang Maha Pengasih lagi Maha Penyayang. Ya Allah, limpahkanlah rahmat dan keselamatan atas junjungan kami Nabi Muhammad, penghulu orang-orang dahulu dan terkemudian, semoga Allah melimpahkan keridhaan, keberkahan dan kesejahteraan junjungan kita dan semua sahabat Rasulullah. Segala puji bagi Allah Tuhan semesta alam. Ya Allah, terimalah salat kami, puasa kami, ibadah kami, bacaan Al-Qur'an kami, zakat kami dan sedekah kami dengan limpahan rahmat-Mu wahai sebaik-baik Penyayang dari para penyayang. Ya Allah ampunilah dosa-dosa kami, hapuskanlah kejelekan serta kesalahan kami, Engkaulah yang memimpin kami, maka ampunilah kami dan berilah kami rahmat dan Engkaulah Pemberi ampun yang sebaik-baiknya. Jadikanlah kami ya Allah, menjadi golongan orang-orang yang kembali pada kesucian, berbahagia diterima (segala amalnya), dan diampuni dosa-dosanya, serta masukkanlah kami dalam golongan para hamba-Mu yang saleh-saleh. Ya Tuhan kami terimalah daripada kami (amalan kami), sesungguhnya Engkaulah yang Maha Mendengar lagi Maha Mengetahui. Dan terimalah tobat kami, sesungguhnya Engkaulah yang Maha Penerima taubat lagi Maha Penyayang. Dan segala puji bagi Allah Tuhan seru sekalian alam.",
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
