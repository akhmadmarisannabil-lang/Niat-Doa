import 'package:flutter/material.dart';
import 'zoom_provider.dart';
import 'package:provider/provider.dart'; // Tambahkan import ini
import 'theme_provider.dart'; // Import file provider yang Anda buat
import 'welcome_page.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(create: (_) => ZoomProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final zoomProvider = Provider.of<ZoomProvider>(context);

    return MediaQuery(
      data: MediaQuery.of(
        context,
      ).copyWith(textScaleFactor: zoomProvider.scale),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Bacaan Mobile',

        theme: ThemeData(
          brightness: Brightness.light,
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.white,
        ),

        darkTheme: ThemeData(
          brightness: Brightness.dark,
          primarySwatch: Colors.amber,
          scaffoldBackgroundColor: const Color(0xFF121212),
        ),

        themeMode: themeProvider.isLightTheme
            ? ThemeMode.light
            : ThemeMode.dark,

        home: const WelcomePage(),
      ),
    );
  }
}
