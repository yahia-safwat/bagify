import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../application/cart_service.dart';
import '../../domain/models/cart_item_model.dart';
import 'cart_states.dart';

class CartController extends StateNotifier<CartState> {
  final CartService _cartService;

  CartController(this._cartService) : super(const CartState.idle()) {
    _loadCartItems();
  }

  Future<void> _loadCartItems() async {
    try {
      final items = await _cartService.getCartItems();
      state = CartState.loadSuccess(items);
    } catch (e) {
      state = CartState.loadError(e.toString());
    }
  }

  Future<void> addItemToCart(CartItem item) async {
    state = const CartState.loading();
    try {
      await _cartService.addItemToCart(item);
      final items = await _cartService.getCartItems();
      state = CartState.itemAdded(item.id);
      state = CartState.loadSuccess(items);
    } catch (e) {
      state = CartState.loadError(e.toString());
    }
  }

  Future<void> removeItemFromCart(int id) async {
    state = const CartState.loading();
    try {
      await _cartService.removeItemFromCart(id);
      final items = await _cartService.getCartItems();
      state = CartState.loadSuccess(items);
    } catch (e) {
      state = CartState.loadError(e.toString());
    }
  }

  Future<void> updateItemQuantity(int id, int quantity) async {
    state = const CartState.loading();
    try {
      await _cartService.updateItemQuantity(id, quantity);
      final items = await _cartService.getCartItems();
      state = CartState.loadSuccess(items);
    } catch (e) {
      state = CartState.loadError(e.toString());
    }
  }

  Future<void> clearCart() async {
    state = const CartState.loading();
    try {
      await _cartService.clearCart();
      state = const CartState.cartCleared();
    } catch (e) {
      state = CartState.loadError(e.toString());
    }
  }

  void resetState() {
    state = const CartState.idle();
  }
}
