import '../Model/product_model.dart';
import '../networking/fetch_data.dart';

class ProductRepository {
  final Api api;

  ProductRepository(this.api);

  Future<List<ProductModel>> getProducts() async {
    return api.fetchProducts();
  }
}
