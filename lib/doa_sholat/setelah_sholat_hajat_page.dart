import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SetelahSholatHajatPage extends StatelessWidget {
  const SetelahSholatHajatPage({super.key});

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
          "Doa Setelah Sholat Hajat",
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
              _buildTag("Doa Setelah Sholat"),
              _buildTag("hajat"),
              _buildTag("keinginan"),
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
              "لَا إِلٰهَ إِلَّا اللهُ الْحَلِيْمُ الْكَرِيْمُ، سُبْحَانَ اللهِ رَبِّ الْعَرْشِ الْعَظِيْمِ، اَلْحَمْدُ لِلّٰهِ رَبِّ الْعَالَمِيْنَ، أَسْأَلُكَ مُوْجِبَاتِ رَحْمَتِكَ، وَعَزَائِمَ مَغْفِرَتِكَ، وَالْغَنِيْمَةَ مِنْ كُلِّ بِرٍّ، وَالسَّلَامَةَ مِنْ كُلِّ إِثْمٍ، لَا تَدَعْ لِيْ ذَنْبًا إِلَّا غَفَرْتَهُ، وَلَا هَمًّا إِلَّا فَرَّجْتَهُ، وَلَا حَاجَةً هِيَ لَكَ رِضًا إِلَّا قَضَيْتَهَا يَا أَرْحَمَ الرَّاحِمِيْنَ",
              textAlign: TextAlign.center,
              style: GoogleFonts.amiri(
                color: Colors.white.withOpacity(0.9),
                fontSize: 20,
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
              "Lâ ilâha illallâhul ḫalîmul karîm. Subḫânallâhi rabbil ‘arsyil ‘adhîm. Alḫamdulillâhi rabbil ‘âlamîn. As’aluka mûjibâti raḫmatik, wa ‘azâ’ima maghfiratik, wal ghanîmata min kulli birrin, was salâmata min kulli itsmin. La tada‘ lî dzanban illâ ghafartah, wa lâ hamman illâ farrajtah, wa lâ hâjatan hiya laka ridhan illâ qadhaitahâ yâ arḫamar râḫimîn.",
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
              "“Tiada Tuhan selain Allah yang maha lembut dan maha mulia. Mahasuci Allah, penjaga Arasy yang agung. Segala puji bagi Allah, Tuhan alam semesta. Aku mohon kepada-Mu bimbingan amal sesuai rahmat-Mu, ketetapan ampunan-Mu, kesempatan meraih sebanyak kebaikan, dan perlindungan dari segala dosa. Jangan Kau biarkan satu dosa yang ada padaku kecuali Engkau mengampuninya. Jangan pula Kau biarkan kebimbangan ada padaku, kecuali Engkau membebaskannya. Jangan pula Kau biarkan suatu kebutuhan yang sesuai ridha-Mu kecuali Engkau memenuhinya. Wahai Tuhan yang maha pengasih.”",
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
              "Dibaca selesai sholat Hajat dengan mengagungkan Allah Yang Maha Lembut untuk memohon pengampunan dosa, kelapangan dari segala kebimbangan, serta pemenuhan hajat atau kebutuhan hidup yang diridhai oleh-Mu.",
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
