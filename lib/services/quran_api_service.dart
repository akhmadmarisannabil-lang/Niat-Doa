import 'dart:convert';
import 'package:http/http.dart' as http;

class QuranApiService {
  static Future<Map<String, dynamic>> getSurat(int nomor) async {
    final response = await http.get(
      Uri.parse('https://equran.id/api/v2/surat/$nomor'),
    );

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);

      return jsonData['data'];
    }

    throw Exception('Gagal mengambil data');
  }
}
