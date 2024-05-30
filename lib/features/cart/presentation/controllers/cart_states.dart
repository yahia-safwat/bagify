import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/models/cart_item_model.dart';

part 'cart_states.freezed.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.idle() = CartIdleState;
  const factory CartState.loading() = CartLoadingState;
  const factory CartState.loadSuccess(List<CartItem> cartItems) =
      CartLoadSuccessState;
  const factory CartState.loadError(String message) = CartLoadErrorState;
  const factory CartState.itemAdded(int itemId) = CartItemAddedState;
  const factory CartState.itemRemoved(int itemId) = CartItemRemovedState;
  const factory CartState.itemUpdated(int itemId) = CartItemUpdatedState;
  const factory CartState.cartCleared() = CartClearedState;
}
