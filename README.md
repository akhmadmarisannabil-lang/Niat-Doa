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
│   ├── badiyah/
│   │   ├── badiyah_dzuhur_page.dart
│   │   ├── badiyah_isya_page.dart
│   │   └── badiyah_maghrib_page.dart
│   ├── doa/
│   │   ├── doa_acara_page.dart
│   │   ├── doa_akhirat_page.dart
│   │   ├── doa_harian_page.dart
│   │   ├── doa_ibadah_page.dart
│   │   ├── doa_lainnya_page.dart
│   │   └── doa_terhindar_musibah_page.dart
│   ├── doa_acara/
│   │   ├── doa_pembukaan_page.dart
│   │   ├── doa_penutup_page.dart
│   │   ├── doa_pernikahan_page.dart
│   │   ├── doa_rumah_baru_page.dart
│   │   └── doa_syukuran_page.dart
│   ├── doa_akhirat/
│   │   ├── doa_hisab_page.dart
│   │   ├── doa_husnul_khotimah_page.dart
│   │   ├── doa_sapu_jagad_page.dart
│   │   ├── doa_siksa_kubur_page.dart
│   │   └── doa_surga_firdaus_page.dart
│   ├── doa_harian/
│   │   ├── bangun_tidur_page.dart
│   │   ├── keluar_rumah_page.dart
│   │   ├── masuk_rumah_page.dart
│   │   ├── sebelum_makan_page.dart
│   │   ├── sebelum_tidur_page.dart
│   │   └── sesudah_makan_page.dart
│   ├── doa_musibah/
│   │   ├── doa_bencana_page.dart
│   │   ├── doa_kerugian_page.dart
│   │   ├── doa_mendengar_musibah_page.dart
│   │   ├── doa_penyakit_berat_page.dart
│   │   └── doa_terhindar_bahaya_page.dart
│   ├── doa_sholat/
│   │   ├── duduk_antara_dua_sujud_page.dart
│   │   ├── iftitah_page.dart
│   │   ├── itidal_page.dart
│   │   ├── qunut_page.dart
│   │   ├── ruku_page.dart
│   │   ├── sujud_page.dart
│   │   ├── tasyahud_akhir_page.dart
│   │   └── tasyahud_awal_page.dart
│   ├── harian/
│   │   ├── dhuha_page.dart
│   │   ├── tahajjud_page.dart
│   │   ├── tahiyyatul_masjid_page.dart
│   │   └── witir_page.dart
│   ├── kebutuhan/
│   │   ├── hajat_page.dart
│   │   ├── istikharah_page.dart
│   │   ├── istisqa_page.dart
│   │   ├── safar_page.dart
│   │   └── taubat_page.dart
│   ├── kifayah/
│   │   ├── shalat_ghaib_page.dart
│   │   ├── shalat_jenazah_lk_page.dart
│   │   └── shalat_jenazah_pr_page.dart
│   ├── qobliyah/
│   │   ├── qobliyah_ashar_page.dart
│   │   ├── qobliyah_dzuhur_page.dart
│   │   ├── qobliyah_isya_page.dart
│   │   ├── qobliyah_maghrib_page.dart
│   │   └── qobliyah_subuh_page.dart
│   ├── sholat/
│   │   ├── shalat_fardhu_kifayah_page.dart
│   │   ├── shalat_fardhu_page.dart
│   │   ├── sunnah_badiyah_page.dart
│   │   ├── sunnah_harian_page.dart
│   │   ├── sunnah_qobliyah_page.dart
│   │   ├── sunnah_situasional_page.dart
│   │   └── sunnah_waktu_tertentu_page.dart
│   ├── sholat_fardhu/
│   │   ├── ashar_page.dart
│   │   ├── dzuhur_page.dart
│   │   ├── isya_page.dart
│   │   ├── jumat_page.dart
│   │   ├── maghrib_page.dart
│   │   └── subuh_page.dart
│   ├── tertentu/
│   │   ├── gerhana_page.dart
│   │   ├── idul_adha_page.dart
│   │   ├── idul_fitri_page.dart
│   │   └── tarawih_page.dart
│   ├── home_page.dart
│   ├── main.dart
│   └── welcome_page.dart
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

- Doa Harian : Doa-doa praktis harian meliputi Bangun Tidur, Keluar Rumah, Masuk Rumah, Sebelum Makan, Sebelum Tidur, dan Sesudah Makan.
- Doa Shalat / Ibadah : Berfokus pada bacaan inti selama rangkaian shalat berlangsung, meliputi Duduk di Antara Dua Sujud, Iftitah, I'tidal, Qunut, Ruku', Sujud, Tasyahud Awal, dan Tasyahud Akhir.
- Doa untuk Akhirat : Doa keselamatan jangka panjang meliputi Doa Hisab, Doa Husnul Khotimah, Doa Sapu Jagad, Doa Siksa Kubur, dan Doa Surga Firdaus.
- Doa Terhindar Musibah : Doa perlindungan dari marabahaya meliputi Doa Bencana, Doa Kerugian, Doa Mendengar Musibah, Doa Penyakit Berat, dan Doa Terhindar Bahaya.
  Doa Acara : Kumpulan doa untuk kegiatan bersama meliputi Doa Pembukaan, Doa Penutup, Doa Pernikahan, Doa Rumah Baru, dan Doa Syukuran.
- Doa Lainnya: Wadah kompilasi doa-doa umum esensial yang tidak masuk ke dalam kategori khusus di atas (Doa untuk Kedua Orang Tua, Doa Sapu Jagat, Memohon Ilmu Bermanfaat, Kemudahan Urusan, Ketetapan Iman).

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
