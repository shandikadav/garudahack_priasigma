import 'package:dio/dio.dart';

import '../models/product_model.dart';

class ProductService {
  final Dio dio;

  ProductService({required this.dio});

  Future<List<Product>> getProducts() async {
    final response = await dio.get('https://7481qp09-3000.asse.devtunnels.ms/products');
    if (response.statusCode == 200) {
      return (response.data as List).map((product) => Product.fromJson(product)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }
}
