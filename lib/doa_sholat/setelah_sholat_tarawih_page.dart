import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SetelahSholatTarawihPage extends StatelessWidget {
  const SetelahSholatTarawihPage({super.key});

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
          "Doa Setelah Sholat Tarawih",
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
              "اَللّٰهُمَّ اجْعَلْنَا بِالْإِيْمَانِ كَامِلِيْنَ، وَلِلْفَرَائِضِ مُؤَدِّيْنَ، وَلِلصَّلَاةِ حَافِظِيْنَ، وَلِلزَّكَاةِ فَاعِلِيْنَ، وَلِمَا عِنْدَكَ طَالِبِيْنَ، وَلِعَفْوِكَ رَاجِيْنَ، وَبِالْهُدَى مُتَمَسِّكِيْنَ، وَعَنِ اللَّغْوِ مُعْرِضِيْنَ، وَفِي الدُّنْيَا زَاهِدِيْنَ، وَفِي الْاٰخِرَةِ رَاغِبِيْنَ، وَبِالْقَضَاءِ رَاضِيْنَ، وَلِلنَّعْمَاءِ شَاكِرِيْنَ، وَعَلَى الْبَلَاءِ صَابِرِيْنَ، وَتَحْتَ لِوَاءِ مُحَمَّدٍ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ يَوْمَ الْقِيَامَةِ سَائِرِيْنَ، وَعَلَى الْحَوْضِ وَارِدِيْنَ، وَإِلَى الْجَنَّةِ دَاخِلِيْنَ، وَمِنَ النَّارِ نَاجِيْنَ، وَعَلَى سَرِيْرِ الْكَرَامَةِ قَاعِدِيْنَ، وَبِحُوْرٍعِيْنٍ مُتَزَوِّجِيْنَ، وَمِنْ سُنْدُسٍ وَاِسْتَبْرَقٍ وَدِيْبَاجٍ مُتَلَبِّسِيْنَ، وَمِنْ طَعَامِ الْجَنَّةِ اٰكِلِيْنَ، وَمِنْ لَبَنٍ وَعَسَلٍ مُصَفًّى شَارِبِيْنَ، بِأَكْوَابٍ وَّأَبَارِيْقَ وَكَأْسٍ مِّنْ مَعِيْنٍ مَعَ الَّذِيْنَ أَنْعَمْتَ عَلَيْهِمْ مِنَ النَّبِيِّيْنَ وَالصِّدِّيْقِيْنَ وَالشُّهَدَاءِ وَالصَّالِحِيْنَ وَحَسُنَ أُولٰئِكَ رَفِيْقًا، ذٰلِكَ الْفَضْلُ مِنَ اللهِ وَكَفَى بِاللهِ عَلِيْمًا، اَللّٰهُمَّ اجْعَلْنَا فِي هٰذِهِ لَيْلَةِ الشَّهْرِ الشَّرِيْفَةِ الْمُبَارَكَةِ مِنَ السُّعَدَاءِ الْمَقْبُوْلِيْنَ، وَلَا تَجْعَلْنَا مِنَ اْلأَشْقِيَاءِ الْمَرْدُوْدِيْنَ، وَصَلَّى اللهُ عَلَى سَيِّدِنَا مُحَمَّدٍ وَاٰلِه وَصَحْبِهِ أَجْمَعِيْنَ، بِرَحْمَتِكَ يَا أَرْحَمَ الرَّاحِمِيْنَ، وَالْحَمْدُ لِلّٰهِ رَبِّ الْعَالَمِيْنَ",
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
              "Allâhummaj‘alnâ bil îmâni kâmilîn. Wa lil farâidli muaddîn. Wa lish-shâlâti ḫâfidhîn. Wa liz-zakâti fâ‘ilîn. Wa lima ‘indaka thâlibîn. Wa li ‘afwika râjîn. Wa bil-hudâ mutamassikîn. Wa ‘anil laghwi mu‘ridlîn. Wa fid-dunyâ zâhdîn. Wa fil ‘âkhirati râghibîn. Wa bil-qadlâ’I râdlîn. Wa lin na‘mâ’I syâkirîn. Wa ‘alal balâ’i shâbirîn. Wa taḫta liwâ’i muḫammadin shallallâhu ‘alaihi wasallam yaumal qiyâmati sâ’irîna wa &#39;alal ḫaudli wâridîn. Wa ilal jannati dâkhilîn. Wa minan nâri nâjîn. Wa &#39;alâ sarîril karâmati qâ&#39;idîn. Wa bi ḫûrun &#39;in mutazawwijîn. Wa min sundusin wa istabraqîn wadîbâjin mutalabbisîn. Wa min tha‘âmil jannati âkilîn. Wa min labanin wa ‘asalin mushaffan syâribîn. Bi akwâbin wa abârîqa wa ka‘sin min ma‘în. Ma‘al ladzîna an‘amta ‘alaihim minan nabiyyîna wash shiddîqîna wasy syuhadâ’i wash shâliḫîna wa ḫasuna ulâ’ika rafîqan. Dâlikal fadl-lu minallâhi wa kafâ billâhi ‘alîman. Allâhummaj‘alnâ fî hâdzihi lailatisy syahrisy syarîfatil mubârakah minas su‘adâ’il maqbûlîn. Wa lâ taj‘alnâ minal asyqiyâ’il mardûdîn. Wa shallallâhu ‘alâ sayyidinâ muḫammadin wa âlihi wa shaḫbihi ajma‘în. Biraḫmatika yâ arḫamar râḫimîn wal ḫamdulillâhi rabbil ‘âlamîn.",
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
              "Yaa Allah, jadikanlah kami orang-orang yang sempurna imannya, yang memenuhi kewajiban-kewajiban, yang memelihara shalat, yang mengeluarkan zakat, yang mencari apa yang ada di sisi-Mu, yang mengharapkan ampunan-Mu, yang berpegang pada petunjuk, yang berpaling dari kebatilan, yang zuhud di dunia, yang menyenangi akhirat, yang ridha dengan qadla-Mu (ketentuan-Mu), yang mensyukuri nikmat, yang sabar atas segala musibah, yang berada di bawah panji-panji junjungan kami, Nabi Muhammad, pada hari kiamat, yang mengunjungi telaga (Nabi Muhammad), yang masuk ke dalam surga, yang selamat dari api neraka, yang duduk di atas ranjang kemuliaan, yang menikah dengan para bidadari, yang mengenakan berbagai sutra ,yang makan makanan surga, yang minum ssu dan madu murni dengan gelas, cangkir, dan cawan bersama orang-orang yang Engkau beri nikmat dari kalangan para nabi, shiddiqin, syuhada dan orang-orang shalih. Mereka itulah teman yang terbaik. Itulah keutamaan (anugerah) dari Allah, dan cukuplah bahwa Allah Maha Mengetahui. Ya Allah, jadikanlah kami pada malam yang mulia dan diberkahi ini termasuk orang-orang yang bahagia dan diterima amalnya, dan janganlah Engkau jadikan kami tergolong orang-orang yang celaka dan ditolak amalnya. Semoga Allah mencurahkan rahmat-Nya atas junjungan kami Muhammad, serta seluruh keluarga dan shahabat beliau. Berkat rahmat-Mu, wahai Yang Paling Penyayang di antara yang penyayang. Segala puji bagi Allah Tuhan semesta alam.",
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
