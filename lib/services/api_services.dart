import 'dart:convert';

import 'package:edu_go/constants/api_constants.dart';
import 'package:http/http.dart' as http;

class ApiServices {
 static Future<Map<String,dynamic>> fetchData({String? url}) async {
    final parsedUrl = Uri.parse('${ApiConstants.baseUrl}$url');

    try {
      final response = await http.get(parsedUrl);

      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }
}