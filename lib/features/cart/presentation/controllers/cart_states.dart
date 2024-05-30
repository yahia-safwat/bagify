class CartState {}

class CartStateIdle extends CartState {}

class CartStateProcessing extends CartState {}

class CartStateItemAdded extends CartState {
  final int itemId;

  CartStateItemAdded(this.itemId);
}

class CartStateItemRemoved extends CartState {
  final int itemId;

  CartStateItemRemoved(this.itemId);
}

class CartStateItemUpdated extends CartState {
  final int itemId;

  CartStateItemUpdated(this.itemId);
}

class CartStateCartCleared extends CartState {}

class CartStateError extends CartState {
  final String message;

  CartStateError(this.message);
}
