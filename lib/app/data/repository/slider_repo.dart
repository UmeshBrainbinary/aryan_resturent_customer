import 'dart:convert';
import 'package:http/http.dart' as http;

import '../model/response/slider_model.dart';

class ApiService {
  static Future<List<Datum>> fetchSliderAds() async {
    final response = await http.get(Uri.parse('https://restaurant.webheaydemo.com/api/frontend/slider'));
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      return SliderAd.fromJson(jsonData).data ?? [];
    } else {
      throw Exception('Failed to load data');
    }
  }
}
