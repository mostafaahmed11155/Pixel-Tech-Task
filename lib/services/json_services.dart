import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

// Assuming your JSON file is in the assets folder
Future<List<dynamic>> loadJsonData({required String jsonFilePath}) async {
  // Load JSON file from assets
  String jsonData = await rootBundle.loadString(jsonFilePath);

  // Parse JSON string to List<Map<String, dynamic>>
  List<dynamic> data = jsonDecode(jsonData);

  return data;
}
