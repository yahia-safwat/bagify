import '../../../product/domain/models/product_model.dart';
import '../../domain/repositories/wishlist_repository.dart';

class WishlistRepositoryImpl implements WishlistRepository {
  final List<ProductModel> _wishlist = [];

  @override
  void addProduct(ProductModel product) {
    _wishlist.add(product);
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
