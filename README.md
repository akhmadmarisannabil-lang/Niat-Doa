## Panduan-Panduan

Aplikasi ini merupakan aplikasi mobile responsif yang dibangun menggunakan Flutter dan bahasa pemrograman Dart. Aplikasi ini dirancang sebagai media edukasi interaktif untuk membantu umat Muslim dalam membaca, menghafal, dan mempelajari niat shalat, juz amma serta kumpulan doa secara praktis.

## Fokus pengembangan

1. Analisis Kebutuhan dan Perancangan Antarmuka: Menentukan batasan sistem, menyusun struktur data bacaan yang efisien tanpa adanya duplikasi data, serta merancang cetak biru tampilan aplikasi (user interface design) menggunakan tema gelap (dark mode) yang konsisten guna memastikan kenyamanan visual pengguna saat membaca teks Arab.

2. Strukturasi Dasbor Beranda dan Layout Responsif: Membangun arsitektur halaman utama (HomePage) yang mengintegrasikan sistem perpindahan menu modular berbasis BottomNavigationBar untuk memisahkan kategori utama: 'Niat Shalat', 'Kumpulan Doa', dan 'Al-Qur'an (Juz 30)'. Layout dirancang adaptif agar rapi saat diakses di berbagai ukuran layar gawai.

3. Pengembangan Sub-Menu Secara Mendalam: Memproduksi halaman baru secara modular menggunakan komponen daftar terstruktur (ListView.builder) guna memuat navigasi panduan macam-macam niat shalat, doa, serta deretan surah pendek secara spesifik, runtun, dan tepat sasaran.

4. Integrasi Fitur Audio API Al-Qur'an: Menyambungkan modul surah_quran ke layanan API Al-Qur'an publik untuk mengambil endpoint URL audio murottal (.mp3) berkualitas tinggi secara dinamis berdasarkan nomor surah, serta menyematkan kontrol audio player interaktif (Play, Pause, Stop, Progress Bar).

5. Pengujian Sistem dan Penyusunan Dokumentasi Akhir: Melakukan uji coba fungsionalitas tombol kembali (back button navigation), memeriksa kestabilan performa aplikasi saat perpindahan halaman, serta memastikan tidak ada teks atau data yang tumpang tindih (redundant) antar sub-menu surah maupun doa.

## Arsitektur File & Struktur Proyek (Directory Structure)

```
FLUTTER_SHOLAT_DOA/
├── .dart_tool/
├── .idea/
├── android/
├── assets/
├── build/
├── ios/
├── lib/
│   ├── badiyah/
│   ├── doa/
│   ├── doa_acara/
│   ├── doa_akhirat/
│   ├── doa_diri_oranglain/
│   ├── doa_harian/
│   ├── doa_musibah/
│   ├── doa_sholat/
│   ├── doa_tertentu/
│   ├── harian/
│   ├── kebutuhan/
│   ├── kifayah/
│   ├── models/
│   ├── pengantar/
│   ├── qobliyah/
│   ├── quran/
│   ├── services/
│   ├── sholat/
│   ├── sholat_fardhu/
│   ├── surah_quran/
│   ├── tertentu/
│   ├── home_page.dart
│   ├── main.dart
│   ├── settings_page.dart
│   ├── theme_provider.dart
│   └── welcome_page.dart
├── linux/
├── macos/
├── test/
│   └── widget_test.dart
├── web/
├── windows/
├── .flutter-plugins-dependencies
├── .gitignore
├── .metadata
├── analysis_options.yaml
├── flutter_sholat_doa.iml
├── pubspec.lock
├── pubspec.yaml
└── README.md
```

## Fitur & Menu

1. Tab Niat Shalat (Menu Utama 1)
   Memuat tuntunan niat shalat yang dikelompokkan secara terstruktur:
   - Kata Pengantar (sholat/kata_pengantar_page.dart): Halaman transisi pembuka untuk menu penuntun shalat.
   - Shalat Fardhu: Tuntunan niat shalat lima waktu (Subuh, Dzuhur, Ashar, Maghrib, Isya).
   - Sunnah Rawatib: Terbagi atas Sunnah Qobliyah (sebelum fardhu) dan Sunnah Ba'diyah (setelah fardhu).
   - Shalat Fardhu Kifayah: Panduan shalat Jenazah (Laki-laki & Perempuan) serta Shalat Ghaib.
   - Shalat Sunnah Waktu Tertentu: Panduan shalat sunnah tahunan/musiman yang terikat waktu khusus (Shalat Idul Fitri, Idul Adha, Tarawih, dan Gerhana).
   - Sunnah Kebutuhan & Situasional: Panduan shalat sunnah yang didasarkan pada kondisi, hajat, atau kebutuhan spiritual hamba (Istikharah, Hajat, Taubat, Istisqa, dan Safar).

2. Pembuka Surah & Juz Amma + Fitur Audio API (Menu Utama 2)
   Menyediakan fitur daftar surah interaktif khusus Juz 30 lengkap dengan bilah pencarian. Menu ini menampilkan detail identitas surah (Nomor Urut, Nama Surah, Tempat Turun, Jumlah Ayat, serta Teks Kaligrafi Arab).
   - Daftar Utama (quran/quran_page.dart): Menampilkan indeks komprehensif mulai dari Al-Fatihah hingga urutan Juz 30.
   - Halaman Detail Surah Modul (surah_quran/): Halaman per ayat interaktif yang memuat struktur teks asli Al-Qur'an (Arabic text), pedoman bacaan latin (transliteration), serta arti bahasa Indonesia (translation).
   - Infrastruktur Audio & Layanan API (services/ & models/):
     1. services/quran_api_service.dart: Menangani permintaan HTTP asinkron ke API Qur'an eksternal untuk mengambil data audio murottal secara streaming.
     2. models/qori_model.dart: Memetakan data JSON dari API menjadi objek Dart (URL audio, nama qori) untuk dibaca oleh widget pemutar audio di setiap halaman surah.

3. Tab Kifarat & Kumpulan Doa (Menu Utama 3)
   Memuat kumpulan doa yang telah dieliminasi dari unsur duplikasi data, disusun berdasarkan konteks aktivitas pengguna:
   - Doa Harian (doa_harian/): Menu yang diperluas secara detail mencakup doa Bangun Tidur, Bercermin, Berpakaian Baru, Bersin, Hujan Reda, Keluar Kamar Mandi/Masjid/Pasar/Rumah, Ketika Takut, Lupa Doa Makan, Masuk Kamar Mandi/Masjid/Pasar/Rumah/Rumah Sepi, Melepas/Memakai Pakaian, Minum Susu, Naik Kendaraan, Sebelum Adzan/Belajar/Makan/Tidur/Wudhu, Sesudah Belajar/Makan/Wudhu, Setelah Azan, Takut Tidur, Terjaga Malam, hingga Turun Hujan.
   - Doa Shalat / Ibadah : Berfokus pada bacaan inti selama rangkaian shalat berlangsung, meliputi Duduk di Antara Dua Sujud, Iftitah, I'tidal, Qunut, Ruku', Sujud, Tasyahud Awal, dan Tasyahud Akhir.
   - Doa untuk Akhirat (doa_akhirat/): Doa keselamatan jangka panjang yang kini mencakup Doa Ampunan Dosa, Hisab, Husnul Khotimah, Kemudahan Shirat, Meminta Syafaat, Memohon Cahaya Kiamat, Memohon Ridho Allah, Menerima Kitab, Minum Telaga, Naungan Mahsyar, Perlindungan Neraka, Sapu Jagad, Selamat Dajjal, Siksa Kubur, Surga Firdaus, dan Terima Amal.
   - Doa Terhindar Musibah (doa_musibah/): Doa perlindungan dari marabahaya meliputi Doa Bencana, Doa Kerugian, Doa Mendengar Musibah, Doa Penyakit Berat, dan Doa Terhindar Bahaya.
     Doa Acara : Kumpulan doa untuk kegiatan bersama meliputi Doa Pembukaan, Doa Penutup, Doa Pernikahan, Doa Rumah Baru, dan Doa Syukuran.
   - Doa Waktu Tertentu: Menu transisi dinamis yang mendata doa khusus momentum waktu sakral keagamaan, meliputi doa akhir tahun, awal ramadan, awal tahun, berbuka puasa, doa di bulan rajab, bulan safar, malam idul adha, malam idul fitri, nisfu sya'ban, sepuluh muharram, dan doa waktu sahur.

## Teknologi yang Digunakan

Teknologi yang digunakan dalam pembuatan aplikasi "Bacaan Shalat Lengkap" adalah sebagai berikut:

- Dart: Bahasa pemrograman utama bertipe object-oriented untuk membangun seluruh logika fungsionalitas, model data menu, serta pengaturan alur kerja aplikasi.
- Flutter SDK: Framework UI lintas platform dari Google untuk merancang dan membangun antarmuka berperforma gegas (native-like).
- http (Package eksternal): Digunakan untuk melakukan request data atau verifikasi tautan ke API Qur'an eksternal secara asinkron (async/await).
- audioplayers / just_audio (Package eksternal): Pustaka audio player untuk menangani fungsi pemutaran audio mp3 dari URL API, mengatur state audio (Play, Pause, Resume, Stop), serta menampilkan durasi/progres audio.
- Google Fonts (google_fonts): Paket eksternal untuk memuat font khusus religi seperti GoogleFonts.amiri() guna menampilkan teks visual Arab secara indah, rapi, dan mudah dibaca
- Material Design Widgets: Pustaka komponen bawaan Flutter untuk elemen visual seperti Scaffold, BottomNavigationBar, ListView, ListTile, Wrap, Container dan Pustaka komponen yang dioptimalkan untuk mendukung skema Mode Terang..
- Navigator API: Manajemen navigasi bawaan untuk perpindahan halaman (routing) antar modul menu secara runtut.

## Cara Menjalankan Aplikasi

Langkah-langkah untuk mengonfigurasi dan menjalankan aplikasi "Niat Sholat & Doa" pada lingkungan pengembangan lokal adalah sebagai berikut:

1. Pemasangan SDK Flutter: Mengunduh SDK resmi, mengekstraknya, dan mendaftarkan jalur (path) binari ke Environment Variables sistem.
2. Konfigurasi IDE: Menggunakan VS Code atau Android Studio dengan ekstensi resmi Flutter & Dart terpasang.
3. Pemasangan Emulator/Perangkat Fisik: Menyiapkan AVD (Android Virtual Device) atau menghubungkan perangkat Android asli via USB Debugging.
4. Sinkronisasi Dependensi Proyek: Pastikan menambahkan package audio player (audioplayers atau just_audio) di file pubspec.yaml, lalu jalankan perintah flutter pub get di terminal proyek untuk mengunduh seluruh dependensi.
5. Eksekusi: Jalankan flutter run atau tekan F5 pada VS Code untuk melakukan kompilasi.
