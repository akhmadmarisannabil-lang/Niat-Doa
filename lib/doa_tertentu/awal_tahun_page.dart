import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AwalTahunPage extends StatelessWidget {
  const AwalTahunPage({super.key});

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
          "Doa Awal Tahun",
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
              _buildTag("Hijriah"),
              _buildTag("Awal Tahun"),
              _buildTag("Muharram"),
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
              "اَللّٰهُمَّ أَنْتَ الْأَبَدِيُّ الْقَدِيْمُ الْأَوَّلُ وَعَلَى فَضْلِكَ الْعَظِيْمِ وَكَرِيْمِ جُوْدِكَ الْمُعَوَّلُ، وَهٰذَا عَامٌ جَدِيْدٌ قَدْ أَقْبَلَ، أَسْأَلُكَ الْعِصْمَةَ فِيْهِ مِنَ الشَّيْطَانِ وَأَوْلِيَائِهِ، وَالْعَوْنَ عَلَى هٰذِهِ النَّفْسِ الْأَمَّارَةِ بِالسُّوْءِ، وَالْاِشْتِغَالَ بِمَا يُقَرِّبُنِيْ إِلَيْكَ زُلْفَى يَا ذَا الْجَلَالِ وَالْإِكْرَامِ",
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
              "Allâhumma antal abadiyyul qadîmul awwal. Wa ‘alâ fadl-likal ‘adhîmi wa karîmi jûdikal mu‘awwal(u). Hâdzâ ‘âmun jadîdun qad aqbala. As’alukal ‘ishmata fîhi minasy-syaithâni wa auliyâ’ih, wal ‘auna ‘alâ hâdzihin nafsil ammârati bis sû’i, wal isytighâla bimâ yuqarribunî ilaika zulfâ, yâ dzal jalâli wal ikrâm(i).",
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
              "Ya Allah, Engkau yang Abadi, Qadim, dan Awal. Atas karunia-Mu yang besar dan kemurahan-Mu yang mulia, Engkau menjadi pintu harapan. Tahun baru ini sudah tiba. Aku berlindung kepada-Mu dari bujukan Iblis dan para pembesarnya di tahun ini. Aku pun mengharap pertolongan-Mu dalam mengatasi nafsu yang kerap mendorongku berlaku buruk. Kepada-Mu, aku memohon bimbingan agar aktivitas keseharian mendekatkanku pada rahmat-Mu, wahai Tuhan Pemilik Kebesaran dan Kemuliaan.",
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
              "Dibaca setelah maghrib ketika memasuki tanggal 1 Muharram untuk memohon perlindungan dari setan, kedamaian hati, dan keberkahan sepanjang tahun baru.",
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
