import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DoaPernikahanPage extends StatelessWidget {
  const DoaPernikahanPage({super.key});

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
          "Doa Pernikahan",
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
              "Doa Setelah Akad Pertama",
              style: TextStyle(
                color: accentColor,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),

          const SizedBox(height: 20),

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
              "بَارَكَ اللَّهُ لَكَ وَبَارَكَ عَلَيْكَ وَجَمَعَ بَيْنَكُمَا فِي خَيْرٍ",
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
              "Baarakallaahu laka wa baaraka 'alaika wa jama'a bainakumaa fii khair.",
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
              "Semoga Allah memberikan berkah kepadamu di kala senang maupun susah dan mengumpulkan kalian berdua senantiasa dalam kebaikan.",
              style: TextStyle(color: subTextColor, fontSize: 14, height: 1.4),
            ),
          ),

          // ===================== DOA KEDUA =====================
          const SizedBox(height: 32),

          Divider(color: accentColor),

          const SizedBox(height: 20),

          Center(
            child: Text(
              "Doa Setelah Akad Kedua",
              style: TextStyle(
                color: accentColor,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),

          const SizedBox(height: 20),

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
              "اَللّٰهُمَّ اجْعَلْ هٰذَا الْعَقْدَ عَقْدًا مُبَارَكًا مَعْصُوْمًا وَأَلْقِ بَيْنَهُمَا أُلْفَةً وَقَرَارًا دَائِمًا وَلَا تَجْعَلْ بَيْنَهُمَا فِرْقَةً وَفِرَارًا وَخِصَامًا وَاكْفِهِمَا مُؤْنَةَ الدُّنْيَا وَالْاٰخِرَةِ",
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
              "Allâhummaj'al hâdzal 'aqda 'aqdan mubârakan ma'shûman wa alqi bainahumâ ulfatan wa qarâran dâiman wa lâ taj'al bainahumâ firqatan wa firâran wa khishâman wakfihimâ mu'natad dunyâ wal âkhirah.",
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
              "Ya Allah, jadikanlah akad ini sebagai ikatan yang diberkahi dan dilindungi, tanamkan di antara keduanya kerukunan dan ketetapan yang langgeng, jangan Engkau jadikan di antara keduanya perpecahan, perpisahan dan permusuhan, dan cukupi keduanya bekal hidup di dunia dan akhirat.",
              style: TextStyle(color: subTextColor, fontSize: 14, height: 1.4),
            ),
          ),

          // ===================== DOA Ketiga =====================
          const SizedBox(height: 32),

          Divider(color: accentColor),

          const SizedBox(height: 20),

          Center(
            child: Text(
              "Doa Setelah Akad Ketiga",
              style: TextStyle(
                color: accentColor,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),

          const SizedBox(height: 20),

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
              "اَللّٰهُمَّ أَلِّفْ بَيْنَهُمَا كَمَا أَلَّفْتَ بَيْنَ اٰدَمَ وَحَوَّاءَ وَأَلِّفْ بَيْنَهُمَا كَمَا أَلَّفْتَ بَيْنَ سَيِّدِنَا إِبْرَاهِيْمَ وَسَارَةَ وَأَلِّفْ بَيْنَهُمَا كَمَا أَلَّفْتَ سَيِّدَنَا يُوْسُفَ وَزُلَيْخَاءَ وَأَلِّفْ بَيْنَهُمَا كَمَا أَلَّفْتَ بَيْنَ سَيِّدِنَا مُحَمَّدٍ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ وَسَيِّدَتِنَا خَدِيْجَةَ الْكُبْرَى وَأَلِّفْ بَيْنَهُمَا كَمَا أَلَّفْتَ بَيْنَ سَيِّدِنَا عَلِيِّ وَسَيِّدَتِنَا فَاطِمَةَ الزَّهْرَاءَ",
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
              "Allâhumma allif bainahumâ kamâ allafta baina Adam wa Hawwa, wa allif bainahumâ kamâ allafta baina sayyidinâ Ibrâhîm wa Sârah, wa allif bainahumâ kamâ allafta baina sayyidinâ Yûsuf wa Zulaikha, wa allif bainahumâ kamâ allafta baina sayyidinâ Muhammadin shallallâhu ‘alaihi wa sallama wa sayyidatinâ Khadîjatal kubrâ, wa allif bainahumâ kamâ allafta baina sayyidinâ ‘Aly wa sayyidatinâ Fâthimah az-Zahrâ.",
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
              "Ya Allah, rukunkan keduanya sebagaimana Engkau rukunkan Nabi Adam dan Hawa, rukunkan keduanya sebagaimana Engkau rukunkan Nabi Ibrahim dan Sarah, rukunkan keduanya sebagaimana Engkau rukunkan Nabi Yusuf dan Zulaikha, rukunkan keduanya sebagaimana Engkau rukunkan Baginda Nabi Muhammad shallallâhu ‘alaihi wa sallama dan Khadijah Al-Kubra, dan rukunkan keduanya sebagaimana Engkau rukunkan Ali dan Fathimah Az-Zahra.",
              style: TextStyle(color: subTextColor, fontSize: 14, height: 1.4),
            ),
          ),

          const SizedBox(height: 24),

          // ===================== DOA Keempat =====================
          const SizedBox(height: 32),

          Divider(color: accentColor),

          const SizedBox(height: 20),

          Center(
            child: Text(
              "Doa Setelah Akad Keempat",
              style: TextStyle(
                color: accentColor,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),

          const SizedBox(height: 20),

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
              "اَللَّهُمَّ إِنِّيْ أَسْأَلُكَ مِنْ خَيْرِهَا وَخَيْرِ مَا جَبَلْتَهَا عَلَيْهِ ، وَأَعُوْذَ بِكَ مِنْ شَرِّهَا وَشَرِّ مَا جَبَلْتَهَا عَلَيْهِ ",
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
              "Allahumma inni as’aluka min khoirihaa wa khoirimaa jabaltahaa ‘alaih. Wa a’udzubika min syarrihaa wa syarrimaa jabaltaha ‘alaih.",
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
              "Ya Allah, sesungguhnya aku mohon kepada-Mu kebaikan dirinya dan kebaikan yang Engkau tentukan atas dirinya. Dan aku berlindung kepada-Mu dari kejelekannya dan kejelekan yang Engkau tetapkan atas dirinya.",
              style: TextStyle(color: subTextColor, fontSize: 14, height: 1.4),
            ),
          ),

          const SizedBox(height: 24),

          // ===================== DOA kelima =====================
          const SizedBox(height: 32),

          Divider(color: accentColor),

          const SizedBox(height: 20),

          Center(
            child: Text(
              "Doa Setelah Akad Kelima",
              style: TextStyle(
                color: accentColor,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),

          const SizedBox(height: 20),

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
              "اللّٰهُمَّ رَبَّنَآ اَنْزِلْ عَلَيْنَا مَاۤىِٕدَةً مِّنَ السَّمَاۤءِ تَكُوْنُ لَنَا عِيْدًا لِّاَوَّلِنَا وَاٰخِرِنَا وَاٰيَةً مِّنْكَ وَارْزُقْنَا وَاَنْتَ خَيْرُ الرّٰزِقِيْنَ ",
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
              "Allahumma robbanaa anzil alaina maaidatamminassamaaa’i takuunu lana iidalli’aqolina wa’akhirina wa’ayatamminka wa’urzukna wa’anta khoirurroziqin.",
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
              "Ya Tuhan kami turunkanlah kiranya kepada kami suatu hidangan dari langit (yang hari turunnya) akan menjadi hari raya bagi kami yaitu orang-orang yang bersama kami dan yang datang sesudah kami, dan menjadi tanda bagi kekuasaan Engkau; beri rezekilah kami, dan Engkaulah pemberi rezeki Yang Paling Utama.",
              style: TextStyle(color: subTextColor, fontSize: 14, height: 1.4),
            ),
          ),

          const SizedBox(height: 24),
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
