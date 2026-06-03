import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SholatTasbihPage extends StatelessWidget {
  const SholatTasbihPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff090f16),
      appBar: AppBar(
        backgroundColor: const Color(0xff090f16),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white70),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Doa Sholat Tasbih",
          style: TextStyle(
            color: Colors.white,
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
              _buildTag("Doa Sholat"),
              _buildTag("tasbih"),
              _buildTag("pujian"),
            ],
          ),
          const SizedBox(height: 32),
          const Center(
            child: Text(
              "Teks Arab",
              style: TextStyle(
                color: Colors.tealAccent,
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
              color: const Color(0xff111a24),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              "اَللّٰهُمَّ إنِّي أَسْأَلُكَ مَخَافَةً تَحْجِزُنِيْ عَنْ مَعَاصِيْكَ حَتَّى أَعْمَلَ بِطَاعَتِكَ عَمَلًا أَسْتَحِقُّ بِهِ رِضَاكَ وَحَتَّى أُنَاصِحَكَ بِالتَّوْبَةِ خَوْفًا مِنْكَ حَتَّى أَخْلُصَ لَكَ النَّصِيحَةَ حَيَاءً مِنْكَ وَحَتَّى أَتَوَكَّلَ عَلَيْكَ فِي الْأُمُورِ كُلِّهَا وَحَتَّى أَكُوْنَ أُحْسِنَ الظَنَّ بِكَ، سُبْحَانَ خَالِقِ النُّورِ",
              textAlign: TextAlign.center,
              style: GoogleFonts.amiri(
                color: Colors.white.withOpacity(0.9),
                fontSize: 24,
                height: 2.2,
              ),
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            "Transliterasi",
            style: TextStyle(
              color: Colors.tealAccent,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 12),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xff111a24),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Text(
              "Allâhumma innî as’aluka makhâfatan tahjizunî ‘an ma‘âshîka hattâ a‘mala bi thâ‘atika ‘amalan astahiqqu bihî ridhâka wa hattâ unâshihaka bit taubah, khaufan minka hattâ akhlusha lakan nashîhata hayâ’an minka wa hattâ atawakkala ‘alaika fil ’umûri kullihâ wa hattâ akûna ’uhsinuz zhanna bika, subhâna khâliqin nûr.",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 14,
                fontStyle: FontStyle.italic,
                height: 1.4,
              ),
            ),
          ),
          const SizedBox(height: 24),
          const Text(
            "Terjemahan",
            style: TextStyle(
              color: Colors.tealAccent,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 12),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xff111a24),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.teal.withOpacity(0.2)),
            ),
            child: const Text(
              "Ya Allah, masukkanlah rasa takut di kalbuku yang dapat menghalangi diri ini untuk mendurhakai-Mu. Dengan demikian aku dapat beramal saleh yang mengantarkanku pada ridha-Mu, dan aku bertobat setulusnya karena takut kepada-Mu. Dengan itu pula aku beribadah secara tulus karena malu kepada-Mu. Dengan rasa takut itu aku menyerahkan segala urusanku kepada-Mu. Karena itu juga aku dapat berbaik sangka selalu kepada-Mu. Mahasuci Engkau Pencipta cahaya.",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 14,
                height: 1.4,
              ),
            ),
          ),
          const SizedBox(height: 24),
          Row(
            children: const [
              Icon(Icons.info_outline, color: Colors.tealAccent, size: 18),
              SizedBox(width: 6),
              Text(
                "Keterangan",
                style: TextStyle(
                  color: Colors.tealAccent,
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
              color: const Color(0xff111a24),
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.teal.withOpacity(0.1)),
            ),
            child: const Text(
              "Dibaca setelah merampungkan sholat Tasbih untuk memohon rasa takut yang membentengi diri dari maksiat, ketulusan dalam bertobat dan beribadah, kepasrahan total atas segala urusan, serta dianugerahi hati yang selalu berbaik sangka kepada Allah.",
              style: TextStyle(
                color: Colors.white60,
                fontSize: 13,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTag(String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        label,
        style: const TextStyle(color: Colors.white70, fontSize: 11),
      ),
    );
  }
}
