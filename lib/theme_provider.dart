import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  // Secara default aplikasi Anda adalah gelap (false)
  bool _isLightTheme = false;

  bool get isLightTheme => _isLightTheme;

  // Fungsi untuk mengubah tema yang dipicu dari tombol switch
  void toggleTheme(bool value) {
    _isLightTheme = value;
    notifyListeners(); // Memberitahu seluruh halaman untuk merender ulang warna
  }
}
