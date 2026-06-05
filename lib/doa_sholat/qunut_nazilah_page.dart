import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QunutNazilahPage extends StatelessWidget {
  const QunutNazilahPage({super.key});

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
          "Doa Qunut Nazilah Palestina",
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
              "اَللّٰهُمَّ إِنَّا نَسْتَعِيْنُكَ وَنَسْتَغْفِرُكَ وَنَسْتَهْدِيْكَ، وَنُؤْمِنُ بِكَ وَنَتَوَكَّلُ عَلَيْكَ، وَنُثْنِيْ عَلَيْكَ الْخَيْرَ كُلَّهُ، نَشْكُرُكَ وَلَا نَكْفُرُكَ، وَنَخْلَعُ وَنَتْرُكُ مَنْ يَفْجُرُكَ. اَللّٰهُمَّ إيَّاكَ نَعْبُدُ وَلَكَ نُصَلِّيْ وَنَسْجُدُ وَإِلَيْكَ نَسْعَى وَنَحْفِدُ نَرْجُوْ رَحْمَتَكَ وَنَخْشَى عَذَابَكَ، إنَّ عَذَابَكَ الْجِدَّ بِالْكُفَّارِ مُلْحِقٌ. اَللّٰهُمَّ ثَبِّتْ إِخْوَانَنَا اْلمُجَاهِدِيْنَ فِي فِلِسْطِيْنَ، خُصُوْصًا فِيْ غَزَّةَ، وَاحْقِنْ دِمَائَهُمْ. اَللّٰهُمَّ عَلَيْكَ بِالْيَهُوْدِ، الصُهْيُوْنِيِّيْنَ الْمَلْعُوْنِيْنَ، وأَنْزِلْ غَضَبَكَ عَلَيْهِمْ. اَللّٰهُمَّ انْصُرْ دِيْنَكَ وكِتَابَكَ وَسُنَّةَ نَبِيِّكَ مُحَمَّدٍ صَلَّى اللّٰهُ عَلَيْهِ وَسَلَّمَ",
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
              "Allaahumma inna nasta'iinuka wa nastaghfiruka wa nastahdiika wa nu'minu bika wa natawakkalu 'alaika wa nutsnii 'alaikal khaira kullahu, nasykuruka wa laa nakfuruka wa nakhla'u wa natruku may yafjuruka. Allaahumma iyyaaka na'budu wa laka nushalli wa nasjudu wa ilaika nas'a wa nahfidu, narjuu rahmataka wa nakhsya 'adzaabaka, inna 'adzaabakal jidda bil kuffaari mulhiqun. Allaahumma tsabbit ikhwaananal mujaahidiina fii Filistiin, khusuushan fii Ghazzah, wahqin dima'ahum. Allahumma 'alaika bil Yahudi, ash shuhyuuniyyiinal mal'uuniina, wa anzil ghadhabaka 'alaihim. Allaahummanshur diinaka wa kitaabaka wa sunnata nabiyyika Muhammadin shallalluhu 'alaihi wa sallam.",
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
              "Ya Allah, kami memohon pertolongan-Mu, pengampunan-Mu, dan petunjuk-Mu. Kami beriman kepada-Mu, bertawakal kepada-Mu, dan bersyukur atas segala kebaikan-Mu. Kami bersyukur kepada-Mu dan tidak kufur kepada-Mu. Kami menjauhi orang-orang yang mendurhakai-Mu. Ya Allah, kami hanya beribadah kepada-Mu, bersujud dan berdoa kepada-Mu. Kami berusaha dan bergerak dengan harapan rahmat-Mu dan rasa takut akan siksaan-Mu. Kami menyadari bahwa azab-Mu yang berat menimpa orang-orang kafir. Ya Allah, kuatkan saudara-saudara mujahidin kami di Palestina, terutama di Gaza, dan lindungi mereka. Ya Tuhan, hukumlah orang-orang Yahudi Zionis yang berdosa, dan tunjukkan murka-Mu kepada mereka. Ya Tuhan, bantu agama-Mu, kitab-Mu, dan sunnah Nabi-Mu, Muhammad. Semoga Allah melimpahkan rahmat dan kedamaian atas beliau.",
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
              "Dibaca pada rakaat terakhir sholat fardhu saat posisi I'tidal (bangkit ruku') ketika umat Muslim sedang tertimpa malapetaka besar, perang, atau musibah kemanusiaan. Disunnahkan mengeraskan suara (jahr) bagi imam dan pelan bagi makmum/salat sendiri.",
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
