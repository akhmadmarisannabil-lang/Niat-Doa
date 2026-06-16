import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SetelahSholatFardhuPage extends StatelessWidget {
  const SetelahSholatFardhuPage({super.key});

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
          "Doa Setelah Sholat Fardhu",
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
              "بِسْمِ اللهِ الرَّحْمٰنِ الرَّحِيْمِ. الْحَمْدُ لِلّٰهِ رَبِّ الْعَالَمِيْنَ حَمْدًا يُّوَافِيْ نِعَمَهُ وَ يُكَافِئُ مَزِيْدَهُ يَا رَبَّنَا لَكَ الْحَمْدُ كَمَا يَنْبَغِيْ لِجَلَالِ وَجْهِكَ وَعَظِيْمِ سُلْطَانِكَ. اللّٰهُمَّ صَلِّ وسَلِّمْ عَلَى سَيِّدِنَا مُحَمَّدٍ وَ آلِ سَيِّدِنَا مُحَمَّدٍ اَللّٰهُمَّ صَلِّ وَسَلِّمْ عَلٰى سَيِّدِنَا مُحَمَّدٍ صَلَاةً تُنْجِيْنَا بِهَا مِنْ جَمِيْعِ الْأَهْوَالِ وَالْآفَاتِ وَتَقْضِيْ لَنَا بِهَا مِنْ جَمِيعِ الْحَاجَاتِ وَتُطَهِّرُنَا بِهَا مِنْ جَمِيْعِ السَيِّئَاتِ وَتَرْفَعُنَا بِهَا عِنْدَكَ أَعْلَى الدَّرَجَاتِ وَتُبَلِّغُنَا بِهَا أَقْصَى الْغَايَاتِ مِنْ جَمِيْعِ الْخَيْرَاتِ فِي الْحَيَاةِ وَبَعْدَ الْمَمَاتِ . اَللّٰهُمَّ إِنَّا نَسْأَلُكَ اللُّطْفَ فِيْمَا جَرَتْ بِهِ الْمَقَادِيْرُ. اَللّٰهُمَّ إِنَّا نَسْأَلُكَ مِنْ خَيْرِ مَا سَأَلَكَ مِنْهُ سَيِّدُنَا مُحَـمَّدٌ عَبْدُكَ وَرَسُوْلُكَ. وَنَعُوْذُ بِكَ مِنْ شَرِّ مَا اسْتَعَاذَكَ مِنْهُ سَيِّدُنَا وَنَبِيُّنَا مُحَـمَّدٌ عَبْدُكَ وَرَسُوْلُكَ. اَللّٰهُمَّ إِنَّا نَسْأَلُكَ مُوْجِبَاتِ رَحْمَتِكَ وَعَزَائِمَ مَغْفِرَتِكَ وَالسَّلَامَةَ مِنْ كُلِّ إِثْمٍ وَالْغَنِيْمَةَ مِنْ كُلِّ بِرٍّ وَالْفَوْزَ بِالْجَنَّةِ وَالنَّجَاةَ مِنَ النَّارِ وَالْعَفْوَ عِنْدَ الْحِسَابِ. رَبَّنَا لَا تُزِغْ قُلُوبَنَا بَعْدَ إِذْ هَدَيْتَنَا وَهَبْ لَنَا مِنْ لَدُنْكَ رَحْمَةً إِنَّكَ أَنْتَ الْوَهَّابُ. رَبَّنَا اغْفِرْ لَنَا وَلِوَالِدِيْنَا كَمَا رَبَّوْنَا صِغَارًا، وَلِجَمِيْعِ الْمُؤْمِنِيْنَ وَالْمُؤْمِنَاتِ وَالْمُسْلِمِيْنَ وَالْمُسْلِمَاتِ الْأَحْيَاءِ مِنْهُمْ وَالْأَمْوَاتِ. رَبَّنَا اٰتِنَا فِي الدُّنْيَا حَسَنَةً وَفِي الْاٰخِرَةِ حَسَنَةً وَقِنَا عَذَابَ النَّارِ. وَصَلَّى اللهُ عَلَى سَيِّدِنَا مُحَمَّدٍ وَعَلَى اٰلِهِ وَصَحْبِهِ وَسَلَّمَ وَالْحَمْدُ لِلّٰهِ رَبِّ الْعَالَمِيْنَ. اَللّٰهُمَّ إِنَّا نَسْأَلُكَ اللُّطْفَ فِيْمَا جَرَتْ بِهِ الْمَقَادِيْرُ. اَللّٰهُمَّ إِنَّا نَسْأَلُكَ مِنْ خَيْرِ مَا سَأَلَكَ مِنْهُ سَيِّدُنَا مُحَـمَّدٌ عَبْدُكَ وَرَسُوْلُكَ. وَنَعُوْذُ بِكَ مِنْ شَرِّ مَا اسْتَعَاذَكَ مِنْهُ سَيِّدُنَا وَنَبِيُّنَا مُحَـمَّدٌ عَبْدُكَ وَرَسُوْلُكَ. اَللّٰهُمَّ إِنَّا نَسْأَلُكَ مُوْجِبَاتِ رَحْمَتِكَ وَعَزَائِمَ مَغْفِرَتِكَ وَالسَّلَامَةَ مِنْ كُلِّ إِثْمٍ وَالْغَنِيْمَةَ مِنْ كُلِّ بِرٍّ وَالْفَوْزَ بِالْجَنَّةِ وَالنَّجَاةَ مِنَ النَّارِ وَالْعَفْوَ عِنْدَ الْحِسَابِ. رَبَّنَا لَا تُزِغْ قُلُوبَنَا بَعْدَ إِذْ هَدَيْتَنَا وَهَبْ لَنَا مِنْ لَدُنْكَ رَحْمَةً إِنَّكَ أَنْتَ الْوَهَّابُ. رَبَّنَا اغْفِرْ لَنَا وَلِوَالِدِيْنَا كَمَا رَبَّوْنَا صِغَارًا، وَلِجَمِيْعِ الْمُؤْمِنِيْنَ وَالْمُؤْمِنَاتِ وَالْمُسْلِمِيْنَ وَالْمُسْلِمَاتِ الْأَحْيَاءِ مِنْهُمْ وَالْأَمْوَاتِ. رَبَّنَا اٰتِنَا فِي الدُّنْيَا حَسَنَةً وَفِي الْاٰخِرَةِ حَسَنَةً وَقِنَا عَذَابَ النَّارِ. وَصَلَّى اللهُ عَلَى سَيِّدِنَا مُحَمَّدٍ وَعَلَى اٰلِهِ وَصَحْبِهِ وَسَلَّمَ وَالْحَمْدُ لِلّٰهِ رَبِّ الْعَالَمِيْنَ",
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
              "Bismillâhir-rahmânir-rahîm(i). Al-ḫamdulillâhi rabbil-`âlamîn(a), ḫamdan yuwâfî ni`amahu wa yukâfi’u mazîdahu yâ rabbanâ lakal-ḫamdu kamâ yanbaghî lijalâli wajhika wa `adhimi sulthânik(a). Allâhumma shalli wa sallim `ala sayyidinâ Muḫammadin wa âlihi sayyidinâ Muḫammad(in). Allâhumma shalli wa sallim `ala sayyidinâ Muḫammadin shalâtan tunjînâ bihâ min jamî`il-ahwâli wal-âfâti wa taqdî lanâ bihâ min jamî’il-ḫâjâti wa tuthahhirunâ bihâ min jamî`is-sayyi’ati wa tarfa`unâ bihâ `indaka a`lad-darajâti wa tuballighunâ bihâ aqshal-ghâyâti min jamî`il-khairâti fil-ḫayâti wa ba`dal-mamât(i). Allâḫumma innâ nas’alukal-luthfa fîmâ jarat bihil-maqâdîru. Allâhumma innâ nas’aluka min khairi mâ sa’alaka minhu sayyidinâ Muḫammadun `abduka wa rasûluka. Allâhumma innâ nas’aluka mûjibâti raḫmatikâ wa `azâ’ima maghfiratika was-salâmata min kulli itsmin wal-ghanîmata min kulli birrin wal-fauza bil-jannati wan-najâta minan-nâri wal-`afwa `indal-ḫisâb(i). rabbanâ lâ tuzigh qulûbanâ ba`da idz hadaitanâ wa hab lanâ min ladunka raḫmatan innaka antal-wahhâb(u). rabbanâgh-fir lanâ wa liwâlidînâ kamâ rabbaunâ shighâra(n). wa lijamî`il-mu’minîna wal-mu’minâti wal-muslimîna wal-muslimâtil-ahyâ’i minhum wal-amwâti. Rabbanâ âtinâ fid-dunyâ ḫasanatan wa fil-âkhirati ḫasanatanwa qinâ `adzaban-nâri. Wa shallallâhu `ala sayyidinâ Muḫammadin wa `ala âlihi wa shaḫbihi wa sallama wal-ḫamdulillâhi rabbil-`âlamîn(a).",
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
              "Dengan nama Allah yang Maha Pengasih lagi Maha Penyayang. Segala puji bagi Allah, Tuhan semesta alam, dengan pujian yang sesuai dengan nikmatnya dan memungkinkan ditambah nikmatnya. Wahai Tuhan kami, hanya bagi-Mu segala puji, sebagaimana yang patut bagi keagungan-Mu dan kebesaran kekuasaan-Mu. Ya Allah, limpahkanlah rahmat kepada junjungan kami Baginda Muhammad, yang dengan shalawat itu Engkau selamatkan kami dari semua keadaan yang menakutkan dan dari semua cobaan, Engkau penuhi semua kebutuhan kami, Engkau bersihkan kami dari segala kejelekan, Engkau angkat kami ke derajat paling tinggi, dan Engkau sampaikan kami kepada tujuan yang paling sempurna dari semua kebaikan, ketika hidup dan setelah mati. Ya Allah, kami memohon kepada-Mu kelembutan setiap kali berlaku takdir-Mu. Ya Allah, kami memohon sesuatu terbaik yang pernah dimohonkan kepada-Mu oleh Baginda Muhammad, hamba dan rasul-Mu, dan kami berlindung dari sesuatu terburuk yang pernah dimohon-jauhkan kepada-Mu oleh Baginda Nabi Muhammad, hamba dan rasul-Mu. Ya Allah sesungguhnya kami memohon hal-hal yang mendatangkan rahmat-Mu, jimat ampunanmu, selamat dari setiap dosa, keuntungan dari setiap kebaikan, kebahagiaan surga, keselamatan dari api neraka, serta pengampunan saat hari perhitungan. Ya Tuhan kami, janganlah Engkau jadikan hati kami condong (kepada kesesatan) sesudah Engkau beri petunjuk kepada kami. Karuniakanlah kepada kami rahmat dari sisi Engkau; karena sesungguhnya Engkau-lah Maha Pemberi (karunia). Ya Tuhan kami, ampunilah kami, dan orang tua kami sebagaimana mereka merawat kami saat masih kecil. Juga ampunilah seluruh kaum mukmin dan muslim, baik yang masih hidup maupun sudah wafat. Wahai Tuhan kami, berilah kami kebaikan hidup di dunia dan kebaikan hidup di akhirat, dan jagalah kami dari siksa api neraka. Semoga Allah melimpahkan rahmat dan keselamatan kepada Baginda Nabi Muhammad, keluarga, dan para sahabatnya. Segala puji bagi Allah, Tuhan seluruh keberadaan.",
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
