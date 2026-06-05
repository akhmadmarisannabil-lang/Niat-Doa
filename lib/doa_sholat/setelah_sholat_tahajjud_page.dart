import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SetelahSholatTahajjudPage extends StatelessWidget {
  const SetelahSholatTahajjudPage({super.key});

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
          "Doa Setelah Sholat Tahajjud",
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
              _buildTag("Doa Ibadah", chipBgColor, chipTextColor),
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
              "اَللّٰهُمَّ رَبَّنَا لَكَ الْحَمْدُ أَنْتَ قَيُّوْمُ السَّمَوَاتِ وَالْأَرْضِ وَمَنْ فِيْهِنَّ. وَلَكَ الْحَمْدُ أَنْتَ مَلِكُ السَّمَوَاتِ والْأَرْضِ وَمَنْ فِيْهِنَّ. وَلَكَ الْحَمْدُ أَنْتَ نُوْرُ السَّمَوَاتِ وَالْأَرْضِ وَمَنْ فِيْهِنَّ. وَلَكَ الْحَمْدُ أَنْتَ الْحَقُّ وَوَعْدُكَ الْحَقُّ وَلِقَاءُكَ حَقٌّ وَقَوْلُكَ حَقٌّ وَالْجَنَّةُ حَقٌّ وَالنَّارُ حَقٌّ وَالنَّبِيُّوْنَ حَقٌّ وَمُحَمَّدٌ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ حَقٌّ وَالسَّاعَةُ حَقٌّ. اَللّٰهُمَّ لَكَ أَسْلَمْتُ وَبِكَ اٰمَنْتُ وَعَلَيْكَ تَوَكَّلْتُ وَإِلَيْكَ أَنَبْتُ وَبِكَ خَاصَمْتُ وَإِلَيْكَ حَاكَمْتُ فَاغْفِرْلِيْ مَاقَدَّمْتُ وَمَا أَخَّرْتُ وَمَا أَسْرَرْتُ وَمَا أَعْلَنْتُ وَمَا أَنْتَ أَعْلَمُ بِهِ مِنِّيْ. أَنْتَ الْمُقَدِّمُ وَأَنْتَ الْمُؤَخِّرُ لَا إِلٰهَ إِلَّا أَنْتَ. وَلَا حَوْلَ وَلَا قُوَّةَ إِلَّا بِاللهِ",
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
              "Allâhumma rabbanâ lakal ḫamdu. Anta qayyûmus samâwâti wal ardli wa man fî hinna. Wa lakal ḫamdu anta malikus samâwâti wal ardli wa man fî hinna. Wa lakal ḫamdu anta nûrus samâwâti wal ardli wa man fî hinna. Wa lakal ḫamdu antal ḫaq. Wa wa‘dukal ḫaq. Wa liqâ’uka ḫaq. Wa qauluka ḫaq. Wal jannatu ḫaq. Wan nâru ḫaq. Wan nabiyyûna ḫaq. Wa Muḫammadun shallallâhu ‘alaihi wasallama ḫaq. Was sâ‘atu ḫaq. Allâhumma laka aslamtu. Wa bika âmantu. Wa ‘alaika tawakkaltu. Wa ilaika anabtu. Wa bika khâshamtu. Wa ilaika ḫâkamtu. Fagfirlî mâ qaddamtu, wa mâ akhkhartu, wa mâ asrartu, wa mâ a‘lantu, wa mâ anta a‘lamu bihî minnî. Antal muqaddimu wa antal mu’akhkhiru. Lâ ilâha illâ anta. Wa lâ ḫaula, wa lâ quwwata illâ billâh.",
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
              "Ya Allah, Tuhan kami, segala puji bagi-Mu, Engkau penegak langit, bumi, dan makhluk yang ada di dalamnya. Segala puji bagi-Mu, Engkau penguasa langit, bumi, dan makhluk yang ada di dalamnya. Segala puji bagi-Mu, Engkau cahaya langit, bumi, dan makhluk yang ada di dalamnya. Segala puji bagi-Mu, Engkau Maha Benar. Janji-Mu benar. Pertemuan dengan-Mu kelak itu benar. Firman-Mu benar adanya. Surga itu nyata. Neraka pun demikian. Para nabi itu benar. Demikian pula Nabi Muhammad SAW itu benar. Hari Kiamat itu benar. Ya Tuhanku, hanya kepada-Mu aku berserah. Hanya kepada-Mu juga aku beriman. Kepada-Mu aku pasrah. Hanya kepada-Mu aku kembali. Karena-Mu aku rela bertikai. Hanya pada-Mu dasar putusanku. Karenanya ampuni dosaku yang telah lalu dan yang terkemudian, dosa yang kusembunyikan dan yang kunyatakan, dan dosa lain yang lebih Kau ketahui ketimbang aku. Engkau Yang Maha Terdahulu dan Engkau Yang Maha Terkemudian. Tiada Tuhan selain Engkau. Tiada daya upaya dan kekuatan selain pertolongan Allah.",
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
              "Dibaca sepertiga malam terakhir setelah merampungkan ibadah sholat sunnah malam (Tahajjud), merupakan momentum yang sangat diijabah Allah.",
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
