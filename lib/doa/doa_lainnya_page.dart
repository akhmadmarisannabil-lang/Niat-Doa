import 'package:flutter/material.dart';

class DoaLainnyaPage extends StatelessWidget {
  const DoaLainnyaPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Kumpulan data Doa Lainnya
    final List<Map<String, String>> doaLainnyaList = [
      {
        'name': 'Doa untuk Kedua Orang Tua',
        'desc':
            'Memohon ampunan dan kelimpahan kasih sayang bagi ayah dan ibu.',
      },
      {
        'name': 'Doa Memohon Rezeki yang Halal & Berkah',
        'desc':
            'Memohon kecukupan rezeki yang baik, halal, serta dijauhkan dari yang haram.',
      },
      {
        'name': 'Doa Memohon Ilmu yang Bermanfaat',
        'desc':
            'Memohon tambahan ilmu, rezeki yang baik, dan amal yang diterima.',
      },
      {
        'name': 'Doa Memohon Kemudahan Urusan',
        'desc': 'Memohon kelapangan dada dan kelancaran ucapan serta urusan.',
      },
      {
        'name': 'Doa Ketetapan Iman',
        'desc':
            'Memohon agar hati senantiasa ditetapkan di atas ketaatan dan agama-Nya.',
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xff121212),
      appBar: AppBar(
        backgroundColor: const Color(0xff121212),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white70),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Doa Lainnya",
          style: TextStyle(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: doaLainnyaList.length,
        itemBuilder: (context, index) {
          final doa = doaLainnyaList[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 12),
            decoration: BoxDecoration(
              color: const Color(0xff1e1e1e),
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 8,
              ),
              leading: CircleAvatar(
                backgroundColor: Colors.amber.withOpacity(0.15),
                child: const Icon(Icons.menu_book, color: Colors.amber),
              ),
              title: Text(
                doa['name']!,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  doa['desc']!,
                  style: const TextStyle(color: Colors.white60, fontSize: 13),
                ),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white30,
                size: 16,
              ),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Membuka bacaan ${doa['name']}'),
                    duration: const Duration(seconds: 1),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
