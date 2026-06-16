import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme_provider.dart';
import 'zoom_provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final zoomProvider = Provider.of<ZoomProvider>(context);

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
                        ? Colors.blue.withValues(alpha: 0.2)
                        : Colors.white.withValues(alpha: 0.2),
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
                  activeThumbColor: Colors.blue[800],
                  onChanged: (bool value) {
                    themeProvider.toggleTheme(value);
                  },
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),

          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: themeProvider.isLightTheme
                  ? Colors.grey[100]
                  : Colors.grey[900],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Zoom Tampilan",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: themeProvider.isLightTheme
                        ? Colors.black87
                        : Colors.white,
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  "${(zoomProvider.scale * 100).round()}%",
                  style: TextStyle(
                    color: themeProvider.isLightTheme
                        ? Colors.black54
                        : const Color.fromARGB(179, 255, 255, 255),
                  ),
                ),

                Slider(
                  min: 0.8,
                  max: 1.1,
                  divisions: 6,
                  value: zoomProvider.scale,
                  label: "${(zoomProvider.scale * 100).round()}%",
                  onChanged: (value) {
                    zoomProvider.setScale(value);
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
