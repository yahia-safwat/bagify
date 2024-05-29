import '../../domain/models/product_model.dart';
import '../../domain/repositories/product_repository.dart';

class ProductService {
  final ProductRepository productRepository;

  ProductService({required this.productRepository});

  Future<List<ProductModel>> fetchProducts() async {
    return await productRepository.getProducts();
  }
}
