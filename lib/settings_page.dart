import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme_provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text('Pengaturan')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // Card atau Container bergaya kustom seperti image_5b8d8c.png
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 12.0,
            ),
            decoration: BoxDecoration(
              color: themeProvider.isLightTheme
                  ? Colors.grey[100]
                  : Colors.grey[900],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                // Ikon Mode Terang berlatar lingkaran tipis
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: themeProvider.isLightTheme
                        ? Colors.blue.withOpacity(0.1)
                        : Colors.white.withOpacity(0.1),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.wb_sunny_outlined,
                    color: themeProvider.isLightTheme
                        ? Colors.blue[800]
                        : Colors.amber,
                  ),
                ),
                const SizedBox(width: 16),

                // Teks Judul & Deskripsi Fitur
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mode Terang',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          // Menggunakan warna hitam & putih bawaan Flutter yang valid
                          color: themeProvider.isLightTheme
                              ? Colors.black87
                              : Colors.white,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Optimalkan kontras untuk siang hari',
                        style: TextStyle(
                          fontSize: 12,
                          color: themeProvider.isLightTheme
                              ? Colors.black54
                              : Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ),

                // Tombol Switch Penentu State
                Switch(
                  value: themeProvider.isLightTheme,
                  activeColor: Colors.blue[800],
                  onChanged: (bool value) {
                    themeProvider.toggleTheme(value);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
