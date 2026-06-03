import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmpatBulanKandunganPage extends StatelessWidget {
  const EmpatBulanKandunganPage({super.key});

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
          "Doa 4 Bulan Kandungan",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
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
              _buildTag("Kehamilan"),
              _buildTag("Walimatul Hamli"),
              _buildTag("Peniupan Ruh"),
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
              "أَعُوْذُ بِاللهِ مِنَ الشَّيْطَانِ الرَّجِيْمِ، بِسْمِ اللهِ وَبِاللهِ وَمِنَ اللهِ وَإِلَى اللهِ وَلَا غَالِبَ إِلَّا اللهُ وَلَا يُفَوِّتُهُ هَارِبٌ مِنَ اللهِ وَهُوَ الْحَيُّ الْقَيُّوْمُ، نُعِيْذُ هٰذَا الْحَمْلَ الْبَالِغَ أَرْبَعَةَ أَشْهُرٍ بِاللهِ اللَّطِيْفِ الْحَفِيْظِ الَّذِيْ لَآ إِلَهَ  إِلَّا هُوَ عَالِمُ الْغَيْبِ وَالشَّهَادَةِ هُوَ الرَّحْمٰنُ الرَّحِيْمُ وَنُعِيْذُهُ بِكَلِمَاتِ اللهِ التَّآمَّةِ وَبِأَسْمَآئِكَ الْعَظِيْمَةِ وَآيَاتِهِ الْكَرِيْمَةِ وَحُرُوْفِهَا الْمُبَارَكَةِ مِنْ شَرِّ الْإِنْسِ وَالْجَآنِّ وَمِنْ مَكْرِ اللَّيْلِ وَالنَّهَارِ وَالْاٰوَانِ وَمِنْ جَمِيْعِ الْفِتَنِ وَالْبَلَايَا وَالْعِصْيَانِ وَمِنْ شَرِّ النَّفَّاثَاتِ فِي الْعُقَدِ وَمِنْ شَرِّ حَاسِدٍ إِذَا حَسَدَ. اَللّٰهُمَّ اجْعَلْهُ وَلَدًا صَالِحًا كَرِيْمًا كَامِلًا عَاقِلًا عَلِيْمًا نَافِعًا مُبَارَكًا حَلِيْمًا. اَللّٰهُمَّ زَيِّنْهُ بِزِيْنَةِ الْأَخْلَاقِ الْكَرِيْمَةِ وَالصُّوْرَةِ الْجَمِيْلَةِ ذِي الْهَيْبَةِ وَالْهَيْئَةِ الْمَلِيْحَةِ وَالرُّوْحِ عَلَى الْفِطْرَةِ الْجَزِيْلَةِ. اَللّٰهُمَّ اكْتُبْهُ فِيْ زُمْرَةِ الْعُلَمَآءِ الصَّالِحِيْنَ وَحَمَلَةِ الْقُرْاٰنِ الْعَامِلِيْنَ وَارْزُقْهُ عَمَلاً يُقَرِّبُهُ إِلَى الْجَنَّةِ مَعَ النَّبِيِّيْنَ يَآ أَكْرَمَ الْأَكْرَمِيْنَ وَيَا خَيْرَ الرَّازِقِيْنَ. اَللّٰهُمَّ ارْزُقْهُ وُأُمَّهُ فِيْ طَاعَتِكَ الْمَقْبُوْلَةِ وَذِكْرِكَ وَشُكْرِكَ وَحُسْنِ عِبَادَتِكَ الْمُرْضِيَّةِ وَاحْفَظْهُ مِنَ السَّقْطِ وَالنَّقْصِ وَالْعِلَّةِ وَالْكَسَلِ وَالْخِلْقَةِ الْمَذْمُوْمَةِ حَتَّى وَضَعَتْهُ أُمُّهُ عَلَى صِحَّةٍ وَعَافِيَةٍ وَسُهُوْلَةٍ وَيُسْرَةٍ مِنْ غَيْرِ مَرَضٍ وَتَعَبٍ وَعُسْرَةٍ بِشَفَاعَةِ سَيِّدِنَا مُحَمَّدٍ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ",
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
              "A’ûdzu billâhi minasy syaithânir rajîm(i). Bismillâhirraḫmânirraḫîm(i). Wa minaLlâhi wa ilaLlâhi wa lâ ghâliba illaLlâhu wa lâ yufawwituhu hâribun minaLlâhi wa huwal hayyul qayyûmu, nu’îdzu hadzal ḫamla al-bâlighi arba’ata asyhui billâhil lathîfil ḫâfidzil ladzî lâ ilâha illa huwa ‘âlimul ghaibi wasysyahâdati huwar-raḫmânur-raḫîmu wa nu‘îdzuhu bikalimatiLlâhi at-Tâmmati wa bi asmâika al-‘adzîmati wa âyâtihi al-karîmati wa hurûfihâ al-mubârakati min syarril insi wal jânni wamin makril laili wan nahâri wal awâni wamin jamî’il fitani wal balâ`I wal ‘ishyâni wa min syarrin naffâtsâti fil ‘uqudi wamin syarri hâsidin idzâ ḫasad. Allâhumma ij’alhu waladan shâliḫankarîman kâmilan ‘âqilan ‘alîman nâfi’an mubârakan ḫalîman. Allâhumma zayyinhu bizînatil akhlâqi al-karîmati washshûrati al-jamîlati dzil-haibati wa- haiati al-malîhati warrûhi ‘alal fithrati al-jazîlati. Allâhumma uktubhu fî zumratil ulamâ`ish shâlihîn wa ḫamalatil qur`ânil ‘âmilîna warzuqhu ‘amalan yuqarribuhu ilal jannati ma’an nabiyyîna yâ Akramal akramîn wa yâ Khairar Râziqîn. Allâhumma-rzuqhu wa ummuhu fî thâ’atika almaqbûlata wa dzikrika wa syukrika wa ḫusni ‘ibâdatika al-mardliyyati wa-ḫfadzhu minassaqti wannaqshi wal ‘illati walkasali wal khilqati al-madzmûmati ḫatta wadla’athu ummuhu ‘ala shiḫḫatin wa ‘âfiyatin wa suhûlatin wa yusratin min ghari maradlin wa ta’abin wa ‘usratin bi syafâ’ati sayyidinâ Muḫammadin shallaLlâhu ‘alaihi wa sallam.",
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
              "Aku berlindung kepada Allah dari godaan setan yang terkutuk, dengan menyebut asma Allah yang Maha Pengasih lagi Maha penyayang. Dari Allah, kepada Allah, tidak ada yang menang kecuali Allah, tiada yang bisa berlari dari Allah, Dia Maha Hidup dan Maha Berdiri Sendiri. Kami memohon perlindungan bagi janin yang berumur 4 bulan ini pada Allah Yang Maha Lembut, Yang Maha Menjaga, tiada tuhan selain Dia Yang Maha Mengetahui hal-hal gaib dan terlihat. Dia Maha Pengasih lagi Penyayang. Kami memohon perlindungan bagi janin ini pada kalimat-kalimat Allah yang sempurna, asma-asma-Nya yang agung, ayat-ayat-Nya yang mulia, huruf-huruf-Nya yang diberkati dari kejelekan manusia dan jin, dari godaan malam, siang, dan waktu, dan dari segala fitnah, bala dan maksiat, dan dari kejahatan wanita-wanita tukang sihir yang meniup buhul, dan dari kejahatan orang yang dengki saat mereka mendengki. Ya Allah jadikanlah dia (janin) ini sebagai anak yang saleh, mulia, sempurna, berakal, alim, bermanfaat, terberkati, dan bijaksana. Ya Allah, hiasi dia dengan hiasan akhlak yang mulia dan rupa dan indah, memiliki wibawa dan tingkah yang manis, dan ruh yang suci lagi agung. Ya Allah, tulis takdirnya sebagai bagian dari para ulama yang saleh, penghafal dan pengamal Al-Qur’an yang bisa mendekatkannya pada surga beserta para Nabi, wahai Dzat paling mulia diantara mereka yang mulia dan Dzat Pemberi rezeki terbaik. Ya Allah berikan rezeki pada dia dan ibunya untuk taat yang diterima, untuk mengingat Engkau, bersyukur pada-Mu, dan beribadah yang baik pada-Mu. Jaga dia dari keguguran, kekurangan, cacat, malas, dan bentuk yang tercela hingga ibunya melahirkannya dalam kondisi sehat wal afiat, secara mudah, gampang, tanpa sakit, susah, dan penat. Dengan syafaat Nabi Muhammad ﷺ.",
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
              "Dibaca pada acara syukuran kehamilan (ngupati) saat janin genap berusia 4 bulan, momentum di mana ruh ditiupkan ke dalam kandungan beserta penentuan takdirnya.",
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
