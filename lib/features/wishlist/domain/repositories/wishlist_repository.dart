import '../../../product/domain/models/product_model.dart';

abstract class WishlistRepository {
  List<ProductModel> getWishlist();

  void addProduct(ProductModel product);
  void removeProduct(ProductModel product);
}
