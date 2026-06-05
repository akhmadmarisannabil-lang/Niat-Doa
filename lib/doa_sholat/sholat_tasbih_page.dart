import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SholatTasbihPage extends StatelessWidget {
  const SholatTasbihPage({super.key});

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
          "Doa Setelah Sholat Tasbih",
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
              "اَللّٰهُمَّ إنِّي أَسْأَلُكَ مَخَافَةً تَحْجِزُنِيْ عَنْ مَعَاصِيْكَ حَتَّى أَعْمَلَ بِطَاعَتِكَ عَمَلًا أَسْتَحِقُّ بِهِ رِضَاكَ وَحَتَّى أُنَاصِحَكَ بِالتَّوْبَةِ خَوْفًا مِنْكَ حَتَّى أَخْلُصَ لَكَ النَّصِيحَةَ حَيَاءً مِنْكَ وَحَتَّى أَتَوَكَّلَ عَلَيْكَ فِي الْأُمُورِ كُلِّهَا وَحَتَّى أَكُوْنَ أُحْسِنَ الظَنَّ بِكَ، سُبْحَانَ خَالِقِ النُّورِ",
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
              "Allâhumma innî as’aluka makhâfatan tahjizunî ‘an ma‘âshîka hattâ a‘mala bi thâ‘atika ‘amalan astahiqqu bihî ridhâka wa hattâ unâshihaka bit taubah, khaufan minka hattâ akhlusha lakan nashîhata hayâ’an minka wa hattâ atawakkala ‘alaika fil ’umûri kullihâ wa hattâ akûna ’uhsinuz zhanna bika, subhâna khâliqin nûr.",
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
              "Ya Allah, masukkanlah rasa takut di kalbuku yang dapat menghalangi diri ini untuk mendurhakai-Mu. Dengan demikian aku dapat beramal saleh yang mengantarkanku pada ridha-Mu, dan aku bertobat setulusnya karena takut kepada-Mu. Dengan itu pula aku beribadah secara tulus karena malu kepada-Mu. Dengan rasa takut itu aku menyerahkan segala urusanku kepada-Mu. Karena itu juga aku dapat berbaik sangka selalu kepada-Mu. Mahasuci Engkau Pencipta cahaya.",
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
              "Dibaca setelah merampungkan sholat Tasbih untuk memohon rasa takut yang membentengi diri dari maksiat, ketulusan dalam bertobat dan beribadah, kepasrahan total atas segala urusan, serta dianugerahi hati yang selalu berbaik sangka kepada Allah.",

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
