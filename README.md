## Niat Sholat & Doa

Aplikasi ini merupakan aplikasi mobile responsif yang dibangun menggunakan Flutter dan bahasa pemrograman Dart. Aplikasi ini dirancang sebagai media edukasi interaktif untuk membantu umat Muslim dalam membaca, menghafal, dan mempelajari niat shalat serta kumpulan doa secara praktis.

## Fokus pengembangan

    1.  Analisis Kebutuhan dan Perancangan Antarmuka: " Menentukan batasan sistem, menyusun struktur data bacaan yang efisien tanpa adanya duplikasi data, serta merancang cetak biru tampilan aplikasi (*user interface design*) menggunakan tema gelap (*dark mode*) yang konsisten guna memastikan kenyamanan visual pengguna."
    2.  Strukturasi Dasbor Beranda dan Layout Responsif: " Membangun arsitektur halaman utama (`HomePage`) yang mengintegrasikan sistem perpindahan menu modular berbasis `BottomNavigationBar` untuk memisahkan kategori utama: 'Niat Shalat' dan 'Kumpulan Doa'. Layout dirancang adaktif agar rapi saat diakses di berbagai ukuran layar gawai."
    3.  Pengembangan Sub-Menu Niat Sholat & Doa Secara Mendalam:" Memproduksi halaman baru secara modular menggunakan komponen daftar terstruktur (`ListView.builder`) guna memuat navigasi panduan macam-macam niat sholat dan doa secara spesifik, runtun, dan tepat sasaran."
    4.  Pengujian Sistem dan Penyusunan Dokumentasi Akhir:" Melakukan uji coba fungsionalitas tombol kembali (*back button navigation*), memeriksa kestabilan performa aplikasi saat perpindahan halaman, serta memastikan tidak ada teks atau data yang tumpang tindih (*redundant*) antar sub-menu."

## Arsitektur File & Struktur Proyek (Directory Structure)

```text
flutter_sholat_doa/
├── assets/
│   └── images/
│       └── menu/
│           ├── sholat.jpg
│           └── berdoa.jpg
├── lib/
│   ├── doa/
│   │   ├── doa_acara_page.dart
│   │   ├── doa_harian_page.dart
│   │   ├── doa_ibadah_page.dart
│   │   ├── doa_lainnya_page.dart
│   │   └── doa_perlindungan_page.dart
│   ├── sholat/
│   │   ├── shalat_fardhu_kifayah_page.dart
│   │   ├── shalat_fardhu_page.dart
│   │   ├── shalat_sunnah_lainnya_page.dart
│   │   ├── sunnah_badiyah_page.dart
│   │   └── sunnah_qobliyah_page.dart
│   ├── home_page.dart
│   └── main.dart
└── pubspec.yaml
```

## Fitur & Menu

1. Tab Niat Shalat (Menu Utama 1)
   Memuat tuntunan niat shalat yang dikelompokkan secara terstruktur:

Shalat Fardhu: Tuntunan niat shalat lima waktu (Subuh, Dzuhur, Ashar, Maghrib, Isya).

Sunnah Qobliyah: Kumpulan niat shalat sunnah rawatib sebelum shalat fardhu.

Sunnah Ba'diyah: Kumpulan niat shalat sunnah rawatib setelah shalat fardhu.

Shalat Fardhu Kifayah: Panduan shalat Jenazah (Laki-laki & Perempuan) serta Shalat Ghaib.

Shalat Sunnah Lainnya: Panduan shalat sunnah berkala seperti Dhuha, Tahajjud, Witir, Istikhara, dan Hajat.

2. Tab Kifarat & Kumpulan Doa (Menu Utama 2)
   Memuat kumpulan doa yang telah dieliminasi dari unsur duplikasi data, disusun berdasarkan konteks aktivitas pengguna:

Doa Harian: Doa praktis seputar aktivitas rutin harian (Sebelum/Sesudah Makan, Sebelum/Bangun Tidur, Masuk/Keluar Rumah). Catatan: Doa terkait masjid dipindahkan agar tidak tumpang tindih dengan menu ibadah.

Doa Ibadah: Fokus secara kronologis pada bacaan inti saat rangkaian ibadah shalat sedang berlangsung (Doa Iftitah, Ruku', I'tidal, Qunut, Sujud, Duduk di Antara Dua Sujud, Tashahhud).

Doa Memohon Perlindungan: Doa khusus untuk meminta keselamatan diri (Perlindungan dari Syetan, Fitnah Dajjal, Penyakit Buruk, Sifat Buruk, serta Keselamatan Dunia Akhirat).

Doa Acara: Kumpulan doa menghadiri perhelatan formal maupun informal (Pembukaan/Penutup Acara, Syukuran/Walimah, Pernikahan, Menempati Rumah Baru).

Doa Lainnya: Wadah kompilasi doa-doa umum esensial yang tidak masuk ke dalam kategori khusus di atas (Doa untuk Kedua Orang Tua, Doa Sapu Jagat, Memohon Ilmu Bermanfaat, Kemudahan Urusan, Ketetapan Iman).

## Teknologi yang Digunakan

Teknologi yang digunakan dalam pembuatan aplikasi "Bacaan Shalat Lengkap" adalah sebagai berikut:

1. Dart merupakan bahasa pemrograman utama bertipe object-oriented yang digunakan untuk membangun seluruh logika fungsionalitas, manipulasi data array pada menu, serta pengaturan alur kerja aplikasi secara efisien.

2. Flutter SDK merupakan framework UI berskala lintas platform dari Google yang digunakan sebagai arsitektur utama untuk merancang, mengompilasi, dan membangun antarmuka aplikasi agar menghasilkan performa visual yang gegas (native-like).

3. Material Design Widgets merupakan pustaka komponen bawaan Flutter yang dimanfaatkan untuk menyusun elemen visual antarmuka siap pakai seperti Scaffold, BottomNavigationBar, GridView, ListView, dan ListTile agar tampilan aplikasi terlihat konsisten dan modern.

4. Navigator API merupakan komponen manajemen navigasi bawaan yang digunakan untuk mengatur perpindahan halaman (routing) di dalam aplikasi, seperti melakukan transisi dari Welcome Page menuju Home Page, hingga masuk ke dalam menu Shalat Fardhu Page.

5. Remote Asset Fetching (Network Image) merupakan metode pemuatan aset visual berbasis internet yang digunakan untuk menampilkan gambar latar belakang pada setiap kartu menu secara dinamis langsung dari peladen (server) eksternal.

## Cara Menjalankan Aplikasi

Langkah-langkah untuk mengonfigurasi dan menjalankan aplikasi "Niat Sholat & Doa" pada lingkungan pengembangan lokal adalah sebagai berikut:

1. Pemasangan SDK Flutter: Mengunduh berkas Flutter SDK resmi, mengekstraknya ke dalam penyimpanan lokal komputer, serta mendaftarkan jalur (path) binari ke dalam sistem variabel lingkungan (Environment Variables) agar perintah Flutter dapat dieksekusi melalui terminal.

2. Konfigurasi Integrated Development Environment (IDE): Dilakukan dengan memasang aplikasi editor teks seperti Visual Studio Code atau Android Studio, kemudian menginstal ekstensi resmi Flutter dan Dart dari marketplace untuk mengaktifkan fitur bantuan penulisan kode, penanganan galat otomatis, serta tombol eksekusi aplikasi.

3. Pemasangan Emulator atau Perangkat Fisik: Disiapkan sebagai media pengujian dengan membuat perangkat virtual (Android Virtual Device/AVD) melalui Android Studio, atau dengan menghubungkan langsung ponsel pintar asli via kabel data USB disertai pengaktifan mode USB Debugging pada menu opsi pengembang gawai.

4. Sinkronisasi Dependensi Proyek: Dijalankan dengan membuka folder kode sumber aplikasi menggunakan terminal IDE, kemudian mengetikkan dan mengeksekusi perintah flutter pub get untuk mengunduh seluruh pustaka Material Design serta mendaftarkan komponen visual pendukung yang tertera di file pubspec.yaml.

5. Eksekusi dan Kompilasi Aplikasi: Tahap akhir di mana pengembang menjalankan perintah flutter run di terminal atau menekan tombol F5 pada VS Code untuk memulai proses kompilasi kode sumber Dart ke dalam arsitektur perangkat target, sehingga aplikasi dapat terpasang dan langsung terbuka pada layar emulator.
