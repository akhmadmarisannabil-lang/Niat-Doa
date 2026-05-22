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
│   │   ├── sunnah_qobliyah_page.dart
│   │   ├── sunnah_tertentu_page.dart
│   │   └── sunnah_situasional_page.dart
│   ├── tertentu/
│   │   ├── idul_fitri_page.dart
│   │   ├── idul_adha_page.dart
│   │   ├── tarawih_page.dart
│   │   └── gerhana_page.dart
│   ├── kebutuhan/
│   │   ├── istikharah_page.dart
│   │   ├── hajat_page.dart
│   │   ├── taubat_page.dart
│   │   ├── istisqa_page.dart
│   │   └── safar_page.dart
│   ├── home_page.dart
│   ├── main.dart
│   └── pubspec.yaml
```

## Fitur & Menu

1. Tab Niat Shalat (Menu Utama 1)
   Memuat tuntunan niat shalat yang dikelompokkan secara terstruktur:
   - Shalat Fardhu: Tuntunan niat shalat lima waktu (Subuh, Dzuhur, Ashar, Maghrib, Isya).
   - Sunnah Rawatib: Terbagi atas Sunnah Qobliyah (sebelum fardhu) dan Sunnah Ba'diyah (setelah fardhu).
   - Shalat Fardhu Kifayah: Panduan shalat Jenazah (Laki-laki & Perempuan) serta Shalat Ghaib.
   - Shalat Sunnah Waktu Tertentu: Panduan shalat sunnah tahunan/musiman yang terikat waktu khusus (Shalat Idul Fitri, Idul Adha, Tarawih, dan Gerhana).
   - Sunnah Kebutuhan & Situasional: Panduan shalat sunnah yang didasarkan pada kondisi, hajat, atau kebutuhan spiritual hamba (Istikharah, Hajat, Taubat, Istisqa, dan Safar).

2. Tab Kifarat & Kumpulan Doa (Menu Utama 2)
   Memuat kumpulan doa yang telah dieliminasi dari unsur duplikasi data, disusun berdasarkan konteks aktivitas pengguna:

Doa Harian: Doa praktis seputar aktivitas rutin harian (Sebelum/Sesudah Makan, Sebelum/Bangun Tidur, Masuk/Keluar Rumah). Catatan: Doa terkait masjid dipindahkan agar tidak tumpang tindih dengan menu ibadah.

Doa Ibadah: Fokus secara kronologis pada bacaan inti saat rangkaian ibadah shalat sedang berlangsung (Doa Iftitah, Ruku', I'tidal, Qunut, Sujud, Duduk di Antara Dua Sujud, Tashahhud).

Doa Memohon Perlindungan: Doa khusus untuk meminta keselamatan diri (Perlindungan dari Syetan, Fitnah Dajjal, Penyakit Buruk, Sifat Buruk, serta Keselamatan Dunia Akhirat).

Doa Acara: Kumpulan doa menghadiri perhelatan formal maupun informal (Pembukaan/Penutup Acara, Syukuran/Walimah, Pernikahan, Menempati Rumah Baru).

Doa Lainnya: Wadah kompilasi doa-doa umum esensial yang tidak masuk ke dalam kategori khusus di atas (Doa untuk Kedua Orang Tua, Doa Sapu Jagat, Memohon Ilmu Bermanfaat, Kemudahan Urusan, Ketetapan Iman).

## Teknologi yang Digunakan

Teknologi yang digunakan dalam pembuatan aplikasi "Bacaan Shalat Lengkap" adalah sebagai berikut:

- Dart: Bahasa pemrograman utama bertipe object-oriented untuk membangun seluruh logika fungsionalitas, model data menu, serta pengaturan alur kerja aplikasi.
- Flutter SDK: Framework UI lintas platform dari Google untuk merancang dan membangun antarmuka berperforma gegas (native-like).
- Google Fonts (google_fonts): Paket eksternal untuk memuat font khusus religi seperti GoogleFonts.amiri() guna menampilkan teks visual Arab secara indah, rapi, dan mudah dibaca
- Material Design Widgets: Pustaka komponen bawaan Flutter untuk elemen visual seperti Scaffold, BottomNavigationBar, ListView, ListTile, Wrap, dan Container.
- Navigator API: Manajemen navigasi bawaan untuk perpindahan halaman (routing) antar modul menu secara runtut.

## Cara Menjalankan Aplikasi

Langkah-langkah untuk mengonfigurasi dan menjalankan aplikasi "Niat Sholat & Doa" pada lingkungan pengembangan lokal adalah sebagai berikut:

1. Pemasangan SDK Flutter: Mengunduh SDK resmi, mengekstraknya, dan mendaftarkan jalur (path) binari ke Environment Variables sistem.
2. Konfigurasi IDE: Menggunakan VS Code atau Android Studio dengan ekstensi resmi Flutter & Dart terpasang.
3. Pemasangan Emulator/Perangkat Fisik: Menyiapkan AVD (Android Virtual Device) atau menghubungkan perangkat Android asli via USB Debugging.
4. Sinkronisasi Dependensi Proyek: Menjalankan perintah flutter pub get di terminal proyek untuk mengunduh package google_fonts serta aset Material.
5. Eksekusi: Jalankan flutter run atau tekan F5 pada VS Code untuk melakukan kompilasi.
