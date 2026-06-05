import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AwalTahunPage extends StatelessWidget {
  const AwalTahunPage({super.key});

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
          "Doa Awal Tahun",
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
              _buildTag("Doa Tertentu", chipBgColor, chipTextColor),
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
              "اَللّٰهُمَّ أَنْتَ الْأَبَدِيُّ الْقَدِيْمُ الْأَوَّلُ وَعَلَى فَضْلِكَ الْعَظِيْمِ وَكَرِيْمِ جُوْدِكَ الْمُعَوَّلُ، وَهٰذَا عَامٌ جَدِيْدٌ قَدْ أَقْبَلَ، أَسْأَلُكَ الْعِصْمَةَ فِيْهِ مِنَ الشَّيْطَانِ وَأَوْلِيَائِهِ، وَالْعَوْنَ عَلَى هٰذِهِ النَّفْسِ الْأَمَّارَةِ بِالسُّوْءِ، وَالْاِشْتِغَالَ بِمَا يُقَرِّبُنِيْ إِلَيْكَ زُلْفَى يَا ذَا الْجَلَالِ وَالْإِكْرَامِ",

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
              "Allâhumma antal abadiyyul qadîmul awwal. Wa ‘alâ fadl-likal ‘adhîmi wa karîmi jûdikal mu‘awwal(u). Hâdzâ ‘âmun jadîdun qad aqbala. As’alukal ‘ishmata fîhi minasy-syaithâni wa auliyâ’ih, wal ‘auna ‘alâ hâdzihin nafsil ammârati bis sû’i, wal isytighâla bimâ yuqarribunî ilaika zulfâ, yâ dzal jalâli wal ikrâm(i).",
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
              "Ya Allah, Engkau yang Abadi, Qadim, dan Awal. Atas karunia-Mu yang besar dan kemurahan-Mu yang mulia, Engkau menjadi pintu harapan. Tahun baru ini sudah tiba. Aku berlindung kepada-Mu dari bujukan Iblis dan para pembesarnya di tahun ini. Aku pun mengharap pertolongan-Mu dalam mengatasi nafsu yang kerap mendorongku berlaku buruk. Kepada-Mu, aku memohon bimbingan agar aktivitas keseharian mendekatkanku pada rahmat-Mu, wahai Tuhan Pemilik Kebesaran dan Kemuliaan.",
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
              "Dibaca setelah maghrib ketika memasuki tanggal 1 Muharram untuk memohon perlindungan dari setan, kedamaian hati, dan keberkahan sepanjang tahun baru.",
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
