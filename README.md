## Niat Sholat & Doa

Aplikasi ini merupakan aplikasi mobile responsif yang dibangun menggunakan Flutter dan bahasa pemrograman Dart. Aplikasi ini dirancang sebagai media edukasi interaktif untuk membantu umat Muslim dalam membaca, menghafal, dan mempelajari niat shalat & doa.

## Fokus pengembangan

    - Analisis Kebutuhan dan Perancangan Antarmuka menjadi fondasi awal proyek yang diisi dengan kegiatan menentukan batasan sistem, menyusun struktur data bacaan, serta merancang blueprint tampilan aplikasi (user interface design) menggunakan tema gelap (dark mode) yang konsisten guna memastikan kenyamanan visual pengguna.

    - Strukturasi Dasbor Beranda dan Layout Responsif menjadi kelanjutan fokus pengerjaan dengan membangun arsitektur halaman utama (Home Page) yang mengintegrasikan sistem perpindahan menu modular berbasis Bottom Navigation Bar untuk memisahkan kategori Niat Shalat dan Kumpulan Doa.

    - Pengembangan Sub-Menu Niat Sholat & Doa Secara Mendalam dialihkan secara penuh untuk memproduksi halaman baru menggunakan komponen daftar terstruktur (List View) guna memuat navigasi panduan Macam-macam niat sholat & Doa.

    - Pengujian Sistem dan Penyusunan Dokumentasi Akhir merupakan tahap penutup yang digunakan untuk melakukan uji coba fungsionalitas tombol kembali (back button navigation), memeriksa kestabilan performa aplikasi saat perpindahan halaman.

## Arsitektur File & Struktur Proyek (Directory Structure)

flutter_sholat_doa/
│
├── assets/
│ └── images/
│ └── bg_awal.png # Gambar latar belakang halaman WelcomePage
│
├── lib/
│ ├── main.dart # Titik masuk utama (Entry Point) aplikasi
│ ├── welcome_page.dart # Halaman pengantar awal (Splash/Welcome Screen)
│ ├── home_page.dart # Dasbor utama dengan sistem Tab (Niat & Doa)
│ └── shalat_fardhu_page.dart # Halaman menu navigasi sholat 5 waktu & Sholat Jum'at
|
└── pubspec.yaml # Manajemen dependensi dan registrasi aset gambar/font

## Fitur Utama Aplikasi

Fitur utama yang diimplementasikan dalam aplikasi "" berfokus pada penyediaan panduan ibadah yang interaktif dan mudah diakses oleh pengguna. Fitur pertama adalah Sistem Navigasi Multi-Tab Dinamis di halaman beranda yang memisahkan konten secara modular menjadi dua kategori besar, yaitu Menu Niat Shalat dan Kumpulan Doa. Pemisahan ini memudahkan pengguna untuk beralih fokus ibadah hanya dengan menyentuh bilah navigasi di bagian bawah layar. Fitur kedua adalah Kategorisasi Menu Shalat Fardhu Terstruktur, di mana pengguna dapat mengakses sub-menu navigasi khusus untuk melihat daftar shalat lima waktu yang meliputi Shalat Subuh, Shalat Dzuhur, Shalat Ashar, Shalat Maghrib, dan Shalat Isya, serta perluasan fungsionalitas berupa menu Shalat Jum'at.

Selain konten keagamaan, aplikasi ini dilengkapi dengan fitur Desain Antarmuka Responsif (Adaptive Grid Layout) yang secara otomatis mendeteksi ukuran lebar layar gawai pengguna. Tata letak kotak menu akan menyesuaikan jumlah kolom secara dinamis dari skala 2 kolom untuk perangkat telepon genggam (mobile) hingga 6 kolom apabila dijalankan pada layar monitor desktop maupun web. Terakhir, terdapat fitur Komponen Edukatif Tambahan (Quote of The Day) pada bagian bawah beranda yang berfungsi menampilkan kutipan atau motivasi guna memberikan semangat pada pengguna saat berinteraksi dengan aplikasi.

## Teknologi yang Digunakan

Teknologi yang digunakan dalam pembuatan aplikasi "Bacaan Shalat Lengkap" adalah sebagai berikut:

1. Dart merupakan bahasa pemrograman utama bertipe object-oriented yang digunakan untuk membangun seluruh logika fungsionalitas, manipulasi data array pada menu, serta pengaturan alur kerja aplikasi secara efisien.

2. Flutter SDK merupakan framework UI berskala lintas platform dari Google yang digunakan sebagai arsitektur utama untuk merancang, mengompilasi, dan membangun antarmuka aplikasi agar menghasilkan performa visual yang gegas (native-like).

3. Material Design Widgets merupakan pustaka komponen bawaan Flutter yang dimanfaatkan untuk menyusun elemen visual antarmuka siap pakai seperti Scaffold, BottomNavigationBar, GridView, ListView, dan ListTile agar tampilan aplikasi terlihat konsisten dan modern.

4. Navigator API merupakan komponen manajemen navigasi bawaan yang digunakan untuk mengatur perpindahan halaman (routing) di dalam aplikasi, seperti melakukan transisi dari Welcome Page menuju Home Page, hingga masuk ke dalam menu Shalat Fardhu Page.

5. Remote Asset Fetching (Network Image) merupakan metode pemuatan aset visual berbasis internet yang digunakan untuk menampilkan gambar latar belakang pada setiap kartu menu secara dinamis langsung dari peladen (server) eksternal.

## Cara Menjalankan Aplikasi

Langkah-langkah untuk mengonfigurasi dan menjalankan aplikasi "Bacaan Shalat Lengkap" pada lingkungan pengembangan lokal adalah sebagai berikut:

    1. Instalasi Flutter SDK merupakan langkah awal yang wajib dilakukan dengan mengunduh berkas SDK resmi dari situs Flutter, mengekstraknya ke dalam penyimpanan lokal komputer, serta mendaftarkan jalur (path) binari ke dalam sistem variabel lingkungan (Environment Variables) agar perintah Flutter dapat dieksekusi melalui terminal.

    2. Konfigurasi Integrated Development Environment (IDE) dilakukan dengan memasang aplikasi editor teks seperti Visual Studio Code atau Android Studio, kemudian menginstal ekstensi resmi Flutter dan Dart dari marketplace untuk mengaktifkan fitur bantuan penulisan kode, penanganan galat otomatis, serta tombol eksekusi aplikasi.

    3. Pemasangan Emulator atau Perangkat Fisik disiapkan sebagai media pengujian dengan membuat perangkat virtual (Android Virtual Device/AVD) melalui Android Studio, atau dengan menghubungkan langsung ponsel pintar asli via kabel data USB disertai pengaktifan mode USB Debugging pada menu opsi pengembang gawai.

    4. Sinkronisasi Dependensi Proyek dijalankan dengan membuka folder kode sumber aplikasi menggunakan terminal IDE, kemudian mengetikkan dan mengeksekusi perintah flutter pub get untuk mengunduh seluruh pustaka Material Design serta mendaftarkan komponen visual pendukung yang tertera di file pubspec.yaml.

    5. Eksekusi dan Kompilasi Aplikasi merupakan tahap akhir di mana pengembang menjalankan perintah flutter run di terminal atau menekan tombol F5 pada VS Code untuk memulai proses kompilasi kode sumber Dart ke dalam arsitektur perangkat target, sehingga aplikasi dapat terpasang dan langsung terbuka pada layar emulator.
