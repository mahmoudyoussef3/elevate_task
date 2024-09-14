import 'dart:convert';
import 'package:http/http.dart' as http;

import '../Model/product_model.dart';
import '../utils/strings.dart';

class Api {
  Future<List<ProductModel>> fetchProducts() async {
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body);
        List<dynamic> myProducts = jsonResponse;
        return myProducts.map((json) => ProductModel.fromJson(json)).toList();
      } else {
        throw Exception('Failed to load product data');
      }
    } catch (error) {
      throw Exception('Failed to load product data: $error');
    }
  }
}
