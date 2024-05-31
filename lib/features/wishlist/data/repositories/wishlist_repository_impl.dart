import '../../../product/domain/models/product_model.dart';
import '../../domain/repositories/wishlist_repository.dart';

class WishlistRepositoryImpl implements WishlistRepository {
  final List<ProductModel> _wishlist = [];

  @override
  void addProduct(ProductModel product) {
    // Check if the product is already in the wishlist
    final isAlreadyInWishlist = _wishlist.any((item) => item.id == product.id);

    if (!isAlreadyInWishlist) {
      _wishlist.add(product);
    }
  }

  @override
  void removeProduct(ProductModel product) {
    _wishlist.removeWhere((item) => item.id == product.id);
  }

  @override
  List<ProductModel> getWishlist() {
    return _wishlist;
  }
}
