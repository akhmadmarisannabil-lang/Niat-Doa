import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SetelahSholatWitirPage extends StatelessWidget {
  const SetelahSholatWitirPage({super.key});

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
          "Doa Setelah Sholat Witir",
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
              _buildTag("witir"),
              _buildTag("penutup"),
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
              "اَللّٰهُمَّ إِنَّا نَسْاَلُكَ إِيْمَانًا دَاِئمًا وَنَسْأَلُكَ قَلْبًا خَاشِعًا وَنَسْأَلُكَ عِلْمًا نَافِعًا وَنَسْأَلُكَ يَقِيْنًا صَــــادِقًا وَنَسْأَلُكَ عَمَلًا صَالِحًا وَنَسْأَلُكَ دِيْنًا قَيِّمًا وَنَسْأَلُكَ خَيْرًا كَثِيْرًا وَنَسْأَلُكَ الْعَفْوَ وَالْعَافِيَةَ وَنَسْأَلُكَ تَمَامَ الْعَافِيَةِ وَنَسْأَلُكَ الشُّكْرَ عَلَى الْعَافِيَةِ وَنَسْأَلُكَ الْغِنَى عَنِ النَّــــاسِ. اَللّٰهُمَّ رَبَّنَا تَقَبَّلْ مِنَّا صَلَاتَنَا وَصِيَامَنَا وَقِيَامَنَا وَتَخَشُّعَنَا وَتَضَرُّعَنَا وَتَعَبُّدَنَا وَتَمِّمْ تَقْصِيْرَنَا يَــــــا اَللهُ يَاأَرْحَمَ الرَّاحِمِيْنَ وَصَلَّى اللهُ عَلَى خَيْرِ خَلْقِهِ سَيِّدِنَا مُحَمَّدٍ وَعَلَى اٰلِهِ وَأَصْحَابِهِ أَجْمَعِيْنَ وَالْحَمْدُ لِلّٰهِ رَبِّ الْعَالَمِيْنَ",
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
              "Allâhumma innâ nasaluka îmânan dâiman wa nas-aluka qalban khâsyi‘an wan as-aluka ‘ilman nâfi‘an wan as-aluka yaqînan shâdiqan wan as-aluka ‘amalan shâliḫan wan as-aluka dînan qayyiman wan as-aluka khairan katsîran wan as-aluka-l-‘afwa wal ‘âfiyata wan as-aluka tamâmal ‘âfiyati wan as-aluka-sy-syukra ‘alal ‘âfiyati wan as-aluka-l-ghinâ ‘anin nâs. Allâhumma rabbanâ taqabbal minnâ shalâtanâ wa shiyâmanâ wa qiyâmanâ wa takhasyu‘anâ wa tadlarru‘anâ wa ta‘abbudanâ wa tammim taqshîranâ. Yâ Allâh yâ arḫamar râḫimîn wa shallallâhu ‘alâ khairi khalqihi sayyidinâ Muḫammadin wa ‘alâ âlihî wa ash-ḫâbihî ajma‘în wal ḫamdulillâhi rabbil ‘âlamîn",
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
              "Ya Allah, kami mohon pada-Mu, iman yang langgeng, hati yang khusyuk, ilmu yang bermanfaat, keyakinan yang benar,amal yang saleh, agama yang lurus, kebaikan yang banyak.kami mohon kepada-Mu ampunan dan kesehatan, kesehatan yang sempurna, kami mohon kepada-Mu bersyukur atas karunia kesehatan, kami mohon kepada-Mu kecukupan terhadap sesama manusia. Ya Allah, tuhan kami terimalah dari kami: shalat, puasa, ibadah, kekhusyukan, rendah diri dan ibadah kami, dan sempurnakanlah segala kekurangan kami. Ya Allah, Tuhan yang Maha Pengasih dari segala yang pengasih. Dan semoga kesejahteraan dilimpahkan kepada makhluk-Nya yang terbaik, Nabi Muhammad, demikian pula keluarga dan para sahabatnya secara keseluruhan. Serta segala puji milik Allah Tuhan semesta alam.",
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
              "Dibaca setelah sholat Witir untuk memohon iman yang langgeng, hati yang khusyuk, kesehatan yang sempurna, serta kecukupan hidup, sekaligus sebagai permohonan agar Allah berkenan menerima dan menyempurnakan segala kekurangan ibadah malam kita.",
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
