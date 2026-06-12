import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SetelahSholatIdulAdhaPage extends StatelessWidget {
  const SetelahSholatIdulAdhaPage({super.key});

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
          "Doa Setelah Shalat Idul Adha",
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
              "اَللَّهُمَّ إِنَّكَ قُلْتَ وَقَوْلُكَ اْلحَقُّ إِنَّ رَحْمَتَ اللَّهِ قَرِيبٌ مِّنَ الْمُحْسِنِينَ فَإِنْ كُنْتَ مِنَ المُحْسِنِيْنَ فَارْحَمْنِيْ ، وَإِنْ لَمْ أَكُنْ مِنَ اْلمُحْسِنِيْنَ فَقَدْ قُلْتَ وَكَانَ بِاْلمُؤْمِنِيْنَ رَحِيْماً فَارْحَمْنِيْ وَإنْ لَمْ أَكُنْ مِنَ اْلمُؤْمِنِيْنَ فَأَنْتَ أَهْلُ التَّقْوَى وَأَهْلُ اْلمَغْفِرَةِ فَاغْفِرْ لِيْ، وَإنْ لَمْ أَكُنْ مُسْتَحِقًّا لِشَيْءٍ مِنْ ذَلِكَ فَأَنَا صَاحِبُ مُصِيْبَة ٍوَقَدْ قُلْتَ الَّذِينَ إِذَا أَصَابَتْهُم مُّصِيبَةٌ قَالُوا إِنَّا لِلَّهِ وَإِنَّا إِلَيْهِ رَاجِعُونَ أُولَٰئِكَ عَلَيْهِمْ صَلَوَاتٌ مِّن رَّبِّهِمْ وَرَحْمَةٌوَأُولَٰئِكَ هُمُ الْمُهْتَدُونَ اَللَّهُمَّ فَارْحَمْنِيْ",
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
              "Allohumma innaka qulta wa qawlukal haqqu, Inna rohmatallaahi qoriibum minal muhsiniin. Fa inkuntu minal muhsiniina farhamnii, wa illam akum minal muhsiniina faqod qulta; Wa kaana bil mu’miniina rohiimaa, farhamnii. Wa illam akun minal mu’miniina fa anta ahlut taqwaa wa ahlul maghfiroh, faghfirlii. Wa illam akun mustahiiqon lisyai-in min dzaalika fa ana shoohibu mushiibatin wa qod qulta; Alladziina idzaa ashoobathum mushiibatun qooluu innaa lillaahi wa innaa ilaihi rooji’uun. Ulaa-ika ‘alihim sholawaatun min robbihim wa rohmah, wa ulaa-ika humul muhtaduun, allohumma farhamnii.",
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
              "Ya Allah, sungguh Engkau telah berfirman dan firman-Mu benar; Sesungguhnya rahmat Allah sangat dekat dengan orang-orang yang berbuat baik. Jika aku termasuk orang yang berbuat baik, maka rahmatilah aku. Jika aku bukan termasuk orang yang berbuat baik, maka Engkau telah berfirman; Dia Maha Penyayang kepada orang-orang beriman. Jika aku tidak termasuk orang yang beriman, maka Engkau adalah Dzat Yang Maha Pengampun, karena itu ampunilah aku.",
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
