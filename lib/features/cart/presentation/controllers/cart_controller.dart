import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../application/cart_service.dart';
import '../../domain/models/cart_item_model.dart';
import 'cart_states.dart';

class CartController extends StateNotifier<CartState> {
  final CartService _cartService;

  CartController(this._cartService) : super(CartIdleState()) {
    _loadCartItems();
  }

  Future<void> _loadCartItems() async {
    try {
      final items = await _cartService.getCartItems();
      state = CartLoadSuccessState(items);
    } catch (e) {
      state = CartLoadErrorState(e.toString());
    }
  }

  Future<void> addItemToCart(CartItem item) async {
    state = CartLoadingState();
    try {
      await _cartService.addItemToCart(item);
      state = CartItemAddedState(item.id);
      state = CartLoadSuccessState(await _cartService.getCartItems());
    } catch (e) {
      state = CartLoadErrorState(e.toString());
    }
  }

  Future<void> removeItemFromCart(int id) async {
    state = CartLoadingState();
    try {
      await _cartService.removeItemFromCart(id);
      state = CartItemRemovedState(id);
      state = CartLoadSuccessState(await _cartService.getCartItems());
    } catch (e) {
      state = CartLoadErrorState(e.toString());
    }
  }

  Future<void> updateItemQuantity(int id, int quantity) async {
    state = CartLoadingState();
    try {
      await _cartService.updateItemQuantity(id, quantity);
      state = CartItemUpdatedState(id);
      state = CartLoadSuccessState(await _cartService.getCartItems());
    } catch (e) {
      state = CartLoadErrorState(e.toString());
    }
  }

  Future<void> clearCart() async {
    state = CartLoadingState();
    try {
      await _cartService.clearCart();
      state = CartClearedState();
      state = CartLoadSuccessState(await _cartService.getCartItems());
    } catch (e) {
      state = CartLoadErrorState(e.toString());
    }
  }

  void resetState() {
    state = CartIdleState();
  }
}
