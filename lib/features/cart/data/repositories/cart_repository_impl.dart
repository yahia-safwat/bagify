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
    final index = _cartItems.indexWhere((cartItem) => cartItem.id == item.id);
    if (index != -1) {
      // Item exists, update the quantity
      final existingItem = _cartItems[index];
      final updatedItem = existingItem.copyWith(
          quantity: existingItem.quantity + item.quantity);
      _cartItems[index] = updatedItem;
    } else {
      // Item does not exist, add it to the cart
      _cartItems.add(item);
    }
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
