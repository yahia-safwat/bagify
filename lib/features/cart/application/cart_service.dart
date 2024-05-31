import '../domain/models/cart_item_model.dart';
import '../domain/repositories/cart_repository.dart';

class CartService {
  final CartRepository _cartRepository;

  CartService(this._cartRepository);

  Future<List<CartItem>> getCartItems() async {
    return _cartRepository.getCartItems();
  }

  Future<void> addItemToCart(CartItem item) async {
    return _cartRepository.addItemToCart(item);
  }

  Future<void> removeItemFromCart(int id) async {
    return _cartRepository.removeItemFromCart(id);
  }

  Future<void> updateItemQuantity(int id, int quantity) async {
    return _cartRepository.updateItemQuantity(id, quantity);
  }

  Future<void> clearCart() async {
    return _cartRepository.clearCart();
  }
}
