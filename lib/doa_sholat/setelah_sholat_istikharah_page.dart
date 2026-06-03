import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SetelahSholatIstikharahPage extends StatelessWidget {
  const SetelahSholatIstikharahPage({super.key});

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
          "Doa Sholat Istikharah",
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
              _buildTag("istikharah"),
              _buildTag("pilihan"),
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
              "اَللّٰهُمَّ إِنِّيْ أَسْتَخِيْرُكَ بِعِلْمِكَ، وَأَسْتَقْدِرُكَ بِقُدْرَتِكَ، وَأَسْأَلُكَ مِنْ فَضْلِكَ الْعَظِيْمِ، فَإِنَّكَ تَقْدِرُ وَلَا أَقْدِرُ، وَتَعْلَمُ وَلَا أَعْلَمُ، وَأَنْتَ عَلَّامُ الْغُيُوْبِ، اَللّٰهُمَّ إِنْ كُنْتَ تَعْلَمُ أَنَّ هَذَا الْأَمْرَ ....... خَيْرٌ لِيْ فِيْ دِيْنِيْ وَمَعَاشِيْ وَعَاقِبَةِ أَمْرِيْ فَاقْدُرْهُ لِيْ وَيَسِّرْهُ لِيْ ثُمَّ بَارِكْ لِيْ فِيْهِ، وَإِنْ كُنْتَ تَعْلَمُ أَنَّ هَذَا الْأَمْرَ شَرٌّ لِيْ فِيْ دِيْنِيْ وَدُنْيَايَ وَمَعَاشِيْ وَعَاقِبَةِ أَمْرِيْ عَاجِلِهِ وَاٰجِلِهِ فَاصْرِفْهُ عَنِّيْ وَاصْرِفْنِيْ عَنْهُ وَاقْدُرْ لِيَ الْخَيْرَ حَيْثُ كَانَ ثُمَّ رَضِّنِيْ بِهِ",
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
              "Allâhumma innî astakhîruka bi’ilmika, wa astaqdiruka biqudratika, wa as’aluka min fadllikal ‘adhîmi, fainnaka taqdiru wa lâ aqdiru, wa ta’lamu wa lâ a’lamu, wa anta allâmul ghuyûb. Allâhumma in kunta ta’lamu anna hâdzal amra ...... khairun lî fî dînî wa ma’âsyî wa ‘âqibati amrî faqdurhû lî wa yassirhû lî tsumma bârik lî fîhi. Wa in kunta ta’lamu anna hâdzal amra syarrun lî fî dînî wa dunyâya wa ma’âsyî wa ‘âqibati amrî ‘âjilihî wa âjilihî fashrifhu ‘annî washrifnî ‘anhu waqdur liyal khaira ḫaitsu kâna tsuma radldlinî bihî.",
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
              "“Ya Allah, sungguh aku meminta pilihan yang tepat kepada-Mu dengan ilmu pengetahuan-Mu dan aku mohon kuasa-Mu (atas masalahku) dengan kuasa-Mu. Aku mohon sebagian dari karunia-Mu yang agung karena sungguh Engkau Mahakuasa, sedang aku tidak kuasa, Engkau mengetahui, sedang aku tidak mengetahuinya. Engkau maha mengetahui hal yang gaib. Ya Allah, apabila Engkau mengetahui bahwa urusan ini (sebutkan masalah yang dihadapinya) lebih baik dalam agamaku, kehidupanku, dan akibatnya terhadap diriku, takdirkan ia untukku, mudahkan jalannya, dan berilah berkah. Sebaliknya, jika Engkau mengetahui bahwa persoalan ini lebih berbahaya bagiku dalam agama, dunia, kehidupan, dan akibatnya terhadap diriku baik seketika maupun suatu ketika nanti, maka singkirkan persoalan itu, dan jauhkan aku darinya. Takdirkanlah bagiku kebaikan di mana saja berada, dan berilah ridha-Mu untukku.”",
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
              "Dibaca setelah sholat Istikharah ketika mengalami keraguan atau kebimbangan di antara beberapa pilihan urusan hidup (jodoh, pekerjaan, dll).",
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
