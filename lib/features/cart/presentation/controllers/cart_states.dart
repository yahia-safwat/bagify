import '../../domain/models/cart_item_model.dart';

sealed class CartState {}

class CartIdleState extends CartState {}

class CartLoadingState extends CartState {}

class CartLoadSuccessState extends CartState {
  final List<CartItem> cartItems;

  CartLoadSuccessState(this.cartItems);
}

class CartLoadErrorState extends CartState {
  final String message;

  CartLoadErrorState(this.message);
}

// !-- more states
class CartItemAddedState extends CartState {
  final int itemId;

  CartItemAddedState(this.itemId);
}

class CartItemRemovedState extends CartState {
  final int itemId;

  CartItemRemovedState(this.itemId);
}

class CartItemUpdatedState extends CartState {
  final int itemId;

  CartItemUpdatedState(this.itemId);
}

class CartClearedState extends CartState {}
