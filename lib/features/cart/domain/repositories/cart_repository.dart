import '../models/cart_item_model.dart';

abstract class CartRepository {
  Future<List<CartItem>> getCartItems();
  Future<void> addItemToCart(CartItem item);
  Future<void> removeItemFromCart(int id);
  Future<void> updateItemQuantity(int id, int quantity);
  Future<void> clearCart();
}
