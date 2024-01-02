import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';




class Tab1Controller extends GetxController {
  RxList<String> items = <String>[].obs;

  Future<void> loadData() async {
    try {

      String jsonString = await _loadJsonFromFile('assets/data/page4.json');
      Map<String, dynamic> data = jsonDecode(jsonString);

      if (data.containsKey("page4")) {
        items.assignAll(List<String>.from(data["page4"]));
      }

    } catch (e) {
      if (kDebugMode) {
        print("Error loading data: $e");
      }
    }
  }

  Future<String> _loadJsonFromFile(String filePath) async {
    return await rootBundle.loadString(filePath);
  }


}