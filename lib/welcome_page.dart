import 'package:flutter/material.dart';
import 'home_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Gambar Background
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bg_awal.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Overlay Gelap
          Container(color: Colors.black54),

          // Konten Utama Responsif
          Center(
            child: Container(
              constraints: const BoxConstraints(
                maxWidth: 600,
              ), // Batas lebar konten teks di Desktop/Tablet
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Panduan-Panduan Bacaan",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize:
                          32, // Sedikit diperbesar agar pas di tablet/desktop
                      fontWeight: FontWeight.bold,
                      color: Colors.amber,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Panduan berbagai Niat sholat, Juz Amma &  Doa untuk anda.",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 15, color: Colors.white70),
                  ),
                  const SizedBox(height: 40),

                  // Tombol Masuk Beranda
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.amber, width: 1.5),
                      padding: const EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 36,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Text(
                          "Masuk ke Menu",
                          style: TextStyle(color: Colors.amber, fontSize: 16),
                        ),
                        const SizedBox(width: 8),
                        const Icon(Icons.arrow_forward, color: Colors.amber),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
