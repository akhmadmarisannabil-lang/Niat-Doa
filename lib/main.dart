import 'package:flutter/material.dart';
import 'welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Panduan-Panduan bacaan',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.amber,
      ),
      home: const WelcomePage(),
    );
  }
}
