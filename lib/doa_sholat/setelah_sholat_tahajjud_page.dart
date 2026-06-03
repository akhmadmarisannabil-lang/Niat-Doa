import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SetelahSholatTahajjudPage extends StatelessWidget {
  const SetelahSholatTahajjudPage({super.key});

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
          "Doa Setelah Sholat Tahajjud",
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
              _buildTag("tahajjud"),
              _buildTag("malam"),
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
              "اَللّٰهُمَّ رَبَّنَا لَكَ الْحَمْدُ أَنْتَ قَيُّوْمُ السَّمَوَاتِ وَالْأَرْضِ وَمَنْ فِيْهِنَّ. وَلَكَ الْحَمْدُ أَنْتَ مَلِكُ السَّمَوَاتِ والْأَرْضِ وَمَنْ فِيْهِنَّ. وَلَكَ الْحَمْدُ أَنْتَ نُوْرُ السَّمَوَاتِ وَالْأَرْضِ وَمَنْ فِيْهِنَّ. وَلَكَ الْحَمْدُ أَنْتَ الْحَقُّ وَوَعْدُكَ الْحَقُّ وَلِقَاءُكَ حَقٌّ وَقَوْلُكَ حَقٌّ وَالْجَنَّةُ حَقٌّ وَالنَّارُ حَقٌّ وَالنَّبِيُّوْنَ حَقٌّ وَمُحَمَّدٌ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ حَقٌّ وَالسَّاعَةُ حَقٌّ. اَللّٰهُمَّ لَكَ أَسْلَمْتُ وَبِكَ اٰمَنْتُ وَعَلَيْكَ تَوَكَّلْتُ وَإِلَيْكَ أَنَبْتُ وَبِكَ خَاصَمْتُ وَإِلَيْكَ حَاكَمْتُ فَاغْفِرْلِيْ مَاقَدَّمْتُ وَمَا أَخَّرْتُ وَمَا أَسْرَرْتُ وَمَا أَعْلَنْتُ وَمَا أَنْتَ أَعْلَمُ بِهِ مِنِّيْ. أَنْتَ الْمُقَدِّمُ وَأَنْتَ الْمُؤَخِّرُ لَا إِلٰهَ إِلَّا أَنْتَ. وَلَا حَوْلَ وَلَا قُوَّةَ إِلَّا بِاللهِ",
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
              "Allâhumma rabbanâ lakal ḫamdu. Anta qayyûmus samâwâti wal ardli wa man fî hinna. Wa lakal ḫamdu anta malikus samâwâti wal ardli wa man fî hinna. Wa lakal ḫamdu anta nûrus samâwâti wal ardli wa man fî hinna. Wa lakal ḫamdu antal ḫaq. Wa wa‘dukal ḫaq. Wa liqâ’uka ḫaq. Wa qauluka ḫaq. Wal jannatu ḫaq. Wan nâru ḫaq. Wan nabiyyûna ḫaq. Wa Muḫammadun shallallâhu ‘alaihi wasallama ḫaq. Was sâ‘atu ḫaq. Allâhumma laka aslamtu. Wa bika âmantu. Wa ‘alaika tawakkaltu. Wa ilaika anabtu. Wa bika khâshamtu. Wa ilaika ḫâkamtu. Fagfirlî mâ qaddamtu, wa mâ akhkhartu, wa mâ asrartu, wa mâ a‘lantu, wa mâ anta a‘lamu bihî minnî. Antal muqaddimu wa antal mu’akhkhiru. Lâ ilâha illâ anta. Wa lâ ḫaula, wa lâ quwwata illâ billâh.",
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
              "“Ya Allah, Tuhan kami, segala puji bagi-Mu, Engkau penegak langit, bumi, dan makhluk yang ada di dalamnya. Segala puji bagi-Mu, Engkau penguasa langit, bumi, dan makhluk yang ada di dalamnya. Segala puji bagi-Mu, Engkau cahaya langit, bumi, dan makhluk yang ada di dalamnya. Segala puji bagi-Mu, Engkau Maha Benar. Janji-Mu benar. Pertemuan dengan-Mu kelak itu benar. Firman-Mu benar adanya. Surga itu nyata. Neraka pun demikian. Para nabi itu benar. Demikian pula Nabi Muhammad SAW itu benar. Hari Kiamat itu benar. Ya Tuhanku, hanya kepada-Mu aku berserah. Hanya kepada-Mu juga aku beriman. Kepada-Mu aku pasrah. Hanya kepada-Mu aku kembali. Karena-Mu aku rela bertikai. Hanya pada-Mu dasar putusanku. Karenanya ampuni dosaku yang telah lalu dan yang terkemudian, dosa yang kusembunyikan dan yang kunyatakan, dan dosa lain yang lebih Kau ketahui ketimbang aku. Engkau Yang Maha Terdahulu dan Engkau Yang Maha Terkemudian. Tiada Tuhan selain Engkau. Tiada daya upaya dan kekuatan selain pertolongan Allah.”",
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
              "Dibaca sepertiga malam terakhir setelah merampungkan ibadah sholat sunnah malam (Tahajjud), merupakan momentum yang sangat diijabah Allah.",
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
