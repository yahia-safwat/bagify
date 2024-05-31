import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../application/cart_service.dart';
import '../../domain/models/cart_item_model.dart';
import 'cart_states.dart';

class CartController extends StateNotifier<CartState> {
  final CartService _cartService;

  CartController(this._cartService) : super(const CartState.initial()) {
    _loadCartItems();
  }

  Future<void> _loadCartItems() async {
    state = const CartState.loading();
    try {
      final items = await _cartService.getCartItems();
      state = CartState.loadSuccess(items);
    } catch (e) {
      state = CartState.loadError(e.toString());
    }
  }

  Future<void> addItemToCart(CartItem item) async {
    state = const CartState.addingItem();
    try {
      await _cartService.addItemToCart(item);
      state = CartState.itemAdded(item.id);

      final items = await _cartService.getCartItems();
      state = CartState.loadSuccess(items);
    } catch (e) {
      state = CartState.itemAddError(e.toString());
    }
  }

  Future<void> removeItemFromCart(int id) async {
    state = const CartState.removingItem();
    try {
      await _cartService.removeItemFromCart(id);
      state = CartState.itemRemoved(id);

      final items = await _cartService.getCartItems();
      state = CartState.loadSuccess(items);
    } catch (e) {
      state = CartState.itemRemoveError(e.toString());
    }
  }

  Future<void> updateItemQuantity(int id, int quantity) async {
    state = const CartState.updatingItem();
    try {
      await _cartService.updateItemQuantity(id, quantity);
      state = CartState.itemUpdated(id);

      final items = await _cartService.getCartItems();
      state = CartState.loadSuccess(items);
    } catch (e) {
      state = CartState.itemUpdateError(e.toString());
    }
  }

  Future<void> clearCart() async {
    state = const CartState.clearingCart();
    try {
      await _cartService.clearCart();
      state = const CartState.cartCleared();

      final items = <CartItem>[];
      state = CartState.loadSuccess(items);
    } catch (e) {
      state = CartState.cartClearError(e.toString());
    }
  }

  // void resetState() {
  //   state = const CartState.initial();
  // }
}
