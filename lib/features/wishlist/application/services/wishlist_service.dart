import '../../../product/domain/models/product_model.dart';
import '../../domain/repositories/wishlist_repository.dart';

class WishlistService {
  final WishlistRepository wishlistRepository;

  WishlistService(this.wishlistRepository);

  List<ProductModel> getWishlist() {
    return wishlistRepository.getWishlist();
  }

  void addProductToWishlist(ProductModel product) {
    wishlistRepository.addProduct(product);
  }

  void removeProductFromWishlist(ProductModel product) {
    wishlistRepository.removeProduct(product);
  }
}
