import '../../domain/models/cart_item_model.dart';
import '../../domain/repositories/cart_repository.dart';

class CartRepositoryImpl implements CartRepository {
  final List<CartItem> _cartItems = [];

  @override
  Future<List<CartItem>> getCartItems() async {
    return _cartItems;
  }

  @override
  Future<void> addItemToCart(CartItem item) async {
    _cartItems.add(item);
  }

  @override
  Future<void> removeItemFromCart(int id) async {
    _cartItems.removeWhere((item) => item.id == id);
  }

  @override
  Future<void> updateItemQuantity(int id, int quantity) async {
    final index = _cartItems.indexWhere((item) => item.id == id);
    if (index != -1) {
      _cartItems[index] = _cartItems[index].copyWith(quantity: quantity);
    }
  }

  @override
  Future<void> clearCart() async {
    _cartItems.clear();
  }
}
