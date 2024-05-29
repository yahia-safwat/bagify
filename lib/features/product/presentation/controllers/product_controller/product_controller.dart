import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../application/services/product_service.dart';
import '../../../domain/models/product_model.dart';

class ProductController extends StateNotifier<AsyncValue<List<ProductModel>>> {
  final ProductService productService;

  ProductController({required this.productService})
      : super(const AsyncValue.loading()) {
    _loadProducts();
  }

  Future<void> _loadProducts() async {
    try {
      final products = await productService.fetchProducts();
      state = AsyncValue.data(products);
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}
