import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../product/domain/models/product_model.dart';
import '../../application/services/wishlist_service.dart';

class WishlistController extends StateNotifier<List<ProductModel>> {
  final WishlistService wishlistService;

  WishlistController(this.wishlistService)
      : super(wishlistService.getWishlist());

  void addProduct(ProductModel product) {
    wishlistService.addProductToWishlist(product);
    state = [...state, product];
  }

  void removeProduct(ProductModel product) {
    wishlistService.removeProductFromWishlist(product);
    state = state.where((item) => item.id != product.id).toList();
  }
}
