import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/models/cart_item_model.dart';

part 'cart_states.freezed.dart';

@freezed
class CartState with _$CartState {
  // ! - Initial states - !
  const factory CartState.initial() = CartIdleState;

  // ! - Loading cart states - !
  const factory CartState.loading() = CartLoadingState;
  const factory CartState.loadSuccess(List<CartItem> cartItems) =
      CartLoadSuccessState;
  const factory CartState.loadError(String message) = CartLoadErrorState;

  // ! - Adding item states - !
  const factory CartState.addingItem() = CartAddingItemState;
  const factory CartState.itemAdded(int itemId) = CartItemAddedState;
  const factory CartState.itemAddError(String message) = CartItemAddErrorState;

  // ! - Removing item states - !
  const factory CartState.removingItem() = CartRemovingItemState;
  const factory CartState.itemRemoved(int itemId) = CartItemRemovedState;
  const factory CartState.itemRemoveError(String message) =
      CartItemRemoveErrorState;

  // ! - Updating item states - !
  const factory CartState.updatingItem() = CartUpdatingItemState;
  const factory CartState.itemUpdated(int itemId) = CartItemUpdatedState;
  const factory CartState.itemUpdateError(String message) =
      CartItemUpdateErrorState;

  // ! - Clearing cart states - !
  const factory CartState.clearingCart() = CartClearingState;
  const factory CartState.cartCleared() = CartClearedState;
  const factory CartState.cartClearError(String message) = CartClearErrorState;
}
