import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AqiqahPage extends StatelessWidget {
  const AqiqahPage({super.key});

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
        : Colors.teal.withValues(alpha: 0.2);

    final Color arabicTextColor = isLightMode
        ? Colors.black
        : Colors.white.withValues(alpha: 0.9);

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
          "Doa Acara Aqiqah",
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
              "اللهم احْفَظْهُ مِنْ شَرِّالْجِنِّ وَالْإِنْسِ وَأُمِّ الصِّبْيَانِ وَمِنْ جَمِيْعِ السَّيِّئَاتِ وَالْعِصْيَانِ وَاحْرِسْهُ بِحَضَانَتِكَ وَكَفَالَتِكَ الْمَحْمُوْدَةِ وَبِدَوَامِ عِنَايَتِكَ وَرِعَايَتِكَ أَلنَّافِذَةِ نُقَدِّمُ بِهَا عَلَى الْقِيَامِ بِمَا كَلَّفْتَنَا مِنْ حُقُوْقِ رُبُوْبِيَّتِكَ الْكَرِيْمَةِ نَدَبْتَنَا إِلَيْهِ فِيْمَا بَيْنَنَا وَبَيْنَ خَلْقِكَ مِنْ مَكَارِمِ الْأَخْلَاقِ وَأَطْيَبُ مَا فَضَّلْتَنَا مِنَ الْأَرْزَاقِ اللهم اجْعَلْنَا وَإِيَّاهُمْ مِنْ أَهْلِ الْعِلْمِ وَأَهْلِ الْخَيْرِ وَأَهْلِ الْقُرْآنِ وَلَا تَجْعَلْنَا وَإِيَّاهُمْ مِنْ أَهْلِ الشَّرِ وَالضَّيْرِ وَ الظُّلْمِ وَالطُّغْيَانِ",
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
              "Allâhummahfadzhu min syarril jinni wal insi wa ummish shibyâni wa min jamî’is sayyiâti wal ‘ishyâni wahrishu bihadlânatika wa kafâlatika al-mahmûdati wa bidawâmi ‘inâyatika wa ri’âyatika an-nafîdzati nuqaddimu bihâ ‘alal qiyâmi bimâ kalaftanâ min huqûqi rububiyyâtika al-karîmati nadabtanâ ilaihi fîmâ bainanâ wa baina khalqika min makârimil akhlâqi wa athyabu mâ fadldlaltanâ minal arzâqi. Allâhummaj’alnâ wa iyyâhum min ahlil ‘ilmi wa ahlil khairi wa ahlil qur`âni wa lâ taj’alnâ wa iyyâhum min ahlisy syarri wadl dloiri wadz dzolami wath thughyâni.",
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
              "Ya Allah, jagalah dia (bayi) dari kejelekan jin, manusia ummi shibyan, serta segala kejelekan dan maksiat. Jagalah dia dengan penjagaan dan tanggungan-Mu yang terpuji, dengan perawatan dan perlindunganmu yang lestari. Dengan hal tersebut aku mampu melaksanakan apa yang Kau bebankan padaku, dari hak-hak ketuhanan yang mulia. Hiasi dia dengan apa yang ada diantara kami dan makhluk-Mu, yakni akhlak mulia dan anugerah yang paling indah. Ya Allah, jadikan kami dan mereka sebagai ahli ilmu, ahli kebaikan, dan ahli Al-Qur’an. Jangan kau jadikan kami dan mereka sebagai ahli kejelekan, keburukan, aniaya, dan tercela.",
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
