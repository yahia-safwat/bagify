import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../application/cart_service.dart';
import '../../domain/models/cart_item_model.dart';
import 'cart_states.dart';

class CartController extends StateNotifier<AsyncValue<List<CartItem>>> {
  final CartService _cartService;
  final StateController<CartState> cartState;

  CartController(this._cartService, this.cartState)
      : super(const AsyncValue.loading()) {
    _loadCartItems();
  }

  Future<void> _loadCartItems() async {
    try {
      final items = await _cartService.getCartItems();
      state = AsyncValue.data(items);
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  Future<void> addItemToCart(CartItem item) async {
    cartState.state = CartStateProcessing();
    try {
      await _cartService.addItemToCart(item);
      await _loadCartItems();
      cartState.state = CartStateItemAdded(item.id);
    } catch (e) {
      cartState.state = CartStateError(e.toString());
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  Future<void> removeItemFromCart(int id) async {
    try {
      await _cartService.removeItemFromCart(id);
      await _loadCartItems();
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  Future<void> updateItemQuantity(int id, int quantity) async {
    try {
      await _cartService.updateItemQuantity(id, quantity);
      await _loadCartItems();
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }

  Future<void> clearCart() async {
    try {
      await _cartService.clearCart();
      await _loadCartItems();
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}
