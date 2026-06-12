import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // Tambahkan import ini
import 'theme_provider.dart'; // Import file provider yang Anda buat
import 'welcome_page.dart';

void main() {
  runApp(
    // Bungkus MyApp dengan ChangeNotifierProvider agar status tema menyebar ke seluruh halaman di lib/
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Mendengarkan perubahan status tema secara real-time
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bacaan Mobile',

      // 1. Konfigurasi Mode Terang (Akan aktif saat switch dihidupkan)
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
      ),

      // 2. Konfigurasi Mode Gelap (Tampilan default aplikasi Anda saat ini)
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.amber,
        scaffoldBackgroundColor: const Color(
          0xFF121212,
        ), // Background gelap standar
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF1F1F1F),
          foregroundColor: Colors.white,
        ),
      ),

      // 3. Logika penentu tema: jika true maka pakai Mode Terang, jika false pakai Mode Gelap
      themeMode: themeProvider.isLightTheme ? ThemeMode.light : ThemeMode.dark,

      home: const WelcomePage(),
    );
  }
}
