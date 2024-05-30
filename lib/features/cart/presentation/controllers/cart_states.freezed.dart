// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(List<CartItem> cartItems) loadSuccess,
    required TResult Function(String message) loadError,
    required TResult Function(int itemId) itemAdded,
    required TResult Function(int itemId) itemRemoved,
    required TResult Function(int itemId) itemUpdated,
    required TResult Function() cartCleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(List<CartItem> cartItems)? loadSuccess,
    TResult? Function(String message)? loadError,
    TResult? Function(int itemId)? itemAdded,
    TResult? Function(int itemId)? itemRemoved,
    TResult? Function(int itemId)? itemUpdated,
    TResult? Function()? cartCleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(List<CartItem> cartItems)? loadSuccess,
    TResult Function(String message)? loadError,
    TResult Function(int itemId)? itemAdded,
    TResult Function(int itemId)? itemRemoved,
    TResult Function(int itemId)? itemUpdated,
    TResult Function()? cartCleared,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartIdleState value) idle,
    required TResult Function(CartLoadingState value) loading,
    required TResult Function(CartLoadSuccessState value) loadSuccess,
    required TResult Function(CartLoadErrorState value) loadError,
    required TResult Function(CartItemAddedState value) itemAdded,
    required TResult Function(CartItemRemovedState value) itemRemoved,
    required TResult Function(CartItemUpdatedState value) itemUpdated,
    required TResult Function(CartClearedState value) cartCleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartIdleState value)? idle,
    TResult? Function(CartLoadingState value)? loading,
    TResult? Function(CartLoadSuccessState value)? loadSuccess,
    TResult? Function(CartLoadErrorState value)? loadError,
    TResult? Function(CartItemAddedState value)? itemAdded,
    TResult? Function(CartItemRemovedState value)? itemRemoved,
    TResult? Function(CartItemUpdatedState value)? itemUpdated,
    TResult? Function(CartClearedState value)? cartCleared,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartIdleState value)? idle,
    TResult Function(CartLoadingState value)? loading,
    TResult Function(CartLoadSuccessState value)? loadSuccess,
    TResult Function(CartLoadErrorState value)? loadError,
    TResult Function(CartItemAddedState value)? itemAdded,
    TResult Function(CartItemRemovedState value)? itemRemoved,
    TResult Function(CartItemUpdatedState value)? itemUpdated,
    TResult Function(CartClearedState value)? cartCleared,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CartIdleStateImplCopyWith<$Res> {
  factory _$$CartIdleStateImplCopyWith(
          _$CartIdleStateImpl value, $Res Function(_$CartIdleStateImpl) then) =
      __$$CartIdleStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CartIdleStateImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartIdleStateImpl>
    implements _$$CartIdleStateImplCopyWith<$Res> {
  __$$CartIdleStateImplCopyWithImpl(
      _$CartIdleStateImpl _value, $Res Function(_$CartIdleStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CartIdleStateImpl implements CartIdleState {
  const _$CartIdleStateImpl();

  @override
  String toString() {
    return 'CartState.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CartIdleStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(List<CartItem> cartItems) loadSuccess,
    required TResult Function(String message) loadError,
    required TResult Function(int itemId) itemAdded,
    required TResult Function(int itemId) itemRemoved,
    required TResult Function(int itemId) itemUpdated,
    required TResult Function() cartCleared,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(List<CartItem> cartItems)? loadSuccess,
    TResult? Function(String message)? loadError,
    TResult? Function(int itemId)? itemAdded,
    TResult? Function(int itemId)? itemRemoved,
    TResult? Function(int itemId)? itemUpdated,
    TResult? Function()? cartCleared,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(List<CartItem> cartItems)? loadSuccess,
    TResult Function(String message)? loadError,
    TResult Function(int itemId)? itemAdded,
    TResult Function(int itemId)? itemRemoved,
    TResult Function(int itemId)? itemUpdated,
    TResult Function()? cartCleared,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartIdleState value) idle,
    required TResult Function(CartLoadingState value) loading,
    required TResult Function(CartLoadSuccessState value) loadSuccess,
    required TResult Function(CartLoadErrorState value) loadError,
    required TResult Function(CartItemAddedState value) itemAdded,
    required TResult Function(CartItemRemovedState value) itemRemoved,
    required TResult Function(CartItemUpdatedState value) itemUpdated,
    required TResult Function(CartClearedState value) cartCleared,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartIdleState value)? idle,
    TResult? Function(CartLoadingState value)? loading,
    TResult? Function(CartLoadSuccessState value)? loadSuccess,
    TResult? Function(CartLoadErrorState value)? loadError,
    TResult? Function(CartItemAddedState value)? itemAdded,
    TResult? Function(CartItemRemovedState value)? itemRemoved,
    TResult? Function(CartItemUpdatedState value)? itemUpdated,
    TResult? Function(CartClearedState value)? cartCleared,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartIdleState value)? idle,
    TResult Function(CartLoadingState value)? loading,
    TResult Function(CartLoadSuccessState value)? loadSuccess,
    TResult Function(CartLoadErrorState value)? loadError,
    TResult Function(CartItemAddedState value)? itemAdded,
    TResult Function(CartItemRemovedState value)? itemRemoved,
    TResult Function(CartItemUpdatedState value)? itemUpdated,
    TResult Function(CartClearedState value)? cartCleared,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class CartIdleState implements CartState {
  const factory CartIdleState() = _$CartIdleStateImpl;
}

/// @nodoc
abstract class _$$CartLoadingStateImplCopyWith<$Res> {
  factory _$$CartLoadingStateImplCopyWith(_$CartLoadingStateImpl value,
          $Res Function(_$CartLoadingStateImpl) then) =
      __$$CartLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CartLoadingStateImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartLoadingStateImpl>
    implements _$$CartLoadingStateImplCopyWith<$Res> {
  __$$CartLoadingStateImplCopyWithImpl(_$CartLoadingStateImpl _value,
      $Res Function(_$CartLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CartLoadingStateImpl implements CartLoadingState {
  const _$CartLoadingStateImpl();

  @override
  String toString() {
    return 'CartState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CartLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(List<CartItem> cartItems) loadSuccess,
    required TResult Function(String message) loadError,
    required TResult Function(int itemId) itemAdded,
    required TResult Function(int itemId) itemRemoved,
    required TResult Function(int itemId) itemUpdated,
    required TResult Function() cartCleared,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(List<CartItem> cartItems)? loadSuccess,
    TResult? Function(String message)? loadError,
    TResult? Function(int itemId)? itemAdded,
    TResult? Function(int itemId)? itemRemoved,
    TResult? Function(int itemId)? itemUpdated,
    TResult? Function()? cartCleared,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(List<CartItem> cartItems)? loadSuccess,
    TResult Function(String message)? loadError,
    TResult Function(int itemId)? itemAdded,
    TResult Function(int itemId)? itemRemoved,
    TResult Function(int itemId)? itemUpdated,
    TResult Function()? cartCleared,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartIdleState value) idle,
    required TResult Function(CartLoadingState value) loading,
    required TResult Function(CartLoadSuccessState value) loadSuccess,
    required TResult Function(CartLoadErrorState value) loadError,
    required TResult Function(CartItemAddedState value) itemAdded,
    required TResult Function(CartItemRemovedState value) itemRemoved,
    required TResult Function(CartItemUpdatedState value) itemUpdated,
    required TResult Function(CartClearedState value) cartCleared,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartIdleState value)? idle,
    TResult? Function(CartLoadingState value)? loading,
    TResult? Function(CartLoadSuccessState value)? loadSuccess,
    TResult? Function(CartLoadErrorState value)? loadError,
    TResult? Function(CartItemAddedState value)? itemAdded,
    TResult? Function(CartItemRemovedState value)? itemRemoved,
    TResult? Function(CartItemUpdatedState value)? itemUpdated,
    TResult? Function(CartClearedState value)? cartCleared,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartIdleState value)? idle,
    TResult Function(CartLoadingState value)? loading,
    TResult Function(CartLoadSuccessState value)? loadSuccess,
    TResult Function(CartLoadErrorState value)? loadError,
    TResult Function(CartItemAddedState value)? itemAdded,
    TResult Function(CartItemRemovedState value)? itemRemoved,
    TResult Function(CartItemUpdatedState value)? itemUpdated,
    TResult Function(CartClearedState value)? cartCleared,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CartLoadingState implements CartState {
  const factory CartLoadingState() = _$CartLoadingStateImpl;
}

/// @nodoc
abstract class _$$CartLoadSuccessStateImplCopyWith<$Res> {
  factory _$$CartLoadSuccessStateImplCopyWith(_$CartLoadSuccessStateImpl value,
          $Res Function(_$CartLoadSuccessStateImpl) then) =
      __$$CartLoadSuccessStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CartItem> cartItems});
}

/// @nodoc
class __$$CartLoadSuccessStateImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartLoadSuccessStateImpl>
    implements _$$CartLoadSuccessStateImplCopyWith<$Res> {
  __$$CartLoadSuccessStateImplCopyWithImpl(_$CartLoadSuccessStateImpl _value,
      $Res Function(_$CartLoadSuccessStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cartItems = null,
  }) {
    return _then(_$CartLoadSuccessStateImpl(
      null == cartItems
          ? _value._cartItems
          : cartItems // ignore: cast_nullable_to_non_nullable
              as List<CartItem>,
    ));
  }
}

/// @nodoc

class _$CartLoadSuccessStateImpl implements CartLoadSuccessState {
  const _$CartLoadSuccessStateImpl(final List<CartItem> cartItems)
      : _cartItems = cartItems;

  final List<CartItem> _cartItems;
  @override
  List<CartItem> get cartItems {
    if (_cartItems is EqualUnmodifiableListView) return _cartItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cartItems);
  }

  @override
  String toString() {
    return 'CartState.loadSuccess(cartItems: $cartItems)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartLoadSuccessStateImpl &&
            const DeepCollectionEquality()
                .equals(other._cartItems, _cartItems));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_cartItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartLoadSuccessStateImplCopyWith<_$CartLoadSuccessStateImpl>
      get copyWith =>
          __$$CartLoadSuccessStateImplCopyWithImpl<_$CartLoadSuccessStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(List<CartItem> cartItems) loadSuccess,
    required TResult Function(String message) loadError,
    required TResult Function(int itemId) itemAdded,
    required TResult Function(int itemId) itemRemoved,
    required TResult Function(int itemId) itemUpdated,
    required TResult Function() cartCleared,
  }) {
    return loadSuccess(cartItems);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(List<CartItem> cartItems)? loadSuccess,
    TResult? Function(String message)? loadError,
    TResult? Function(int itemId)? itemAdded,
    TResult? Function(int itemId)? itemRemoved,
    TResult? Function(int itemId)? itemUpdated,
    TResult? Function()? cartCleared,
  }) {
    return loadSuccess?.call(cartItems);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(List<CartItem> cartItems)? loadSuccess,
    TResult Function(String message)? loadError,
    TResult Function(int itemId)? itemAdded,
    TResult Function(int itemId)? itemRemoved,
    TResult Function(int itemId)? itemUpdated,
    TResult Function()? cartCleared,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(cartItems);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartIdleState value) idle,
    required TResult Function(CartLoadingState value) loading,
    required TResult Function(CartLoadSuccessState value) loadSuccess,
    required TResult Function(CartLoadErrorState value) loadError,
    required TResult Function(CartItemAddedState value) itemAdded,
    required TResult Function(CartItemRemovedState value) itemRemoved,
    required TResult Function(CartItemUpdatedState value) itemUpdated,
    required TResult Function(CartClearedState value) cartCleared,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartIdleState value)? idle,
    TResult? Function(CartLoadingState value)? loading,
    TResult? Function(CartLoadSuccessState value)? loadSuccess,
    TResult? Function(CartLoadErrorState value)? loadError,
    TResult? Function(CartItemAddedState value)? itemAdded,
    TResult? Function(CartItemRemovedState value)? itemRemoved,
    TResult? Function(CartItemUpdatedState value)? itemUpdated,
    TResult? Function(CartClearedState value)? cartCleared,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartIdleState value)? idle,
    TResult Function(CartLoadingState value)? loading,
    TResult Function(CartLoadSuccessState value)? loadSuccess,
    TResult Function(CartLoadErrorState value)? loadError,
    TResult Function(CartItemAddedState value)? itemAdded,
    TResult Function(CartItemRemovedState value)? itemRemoved,
    TResult Function(CartItemUpdatedState value)? itemUpdated,
    TResult Function(CartClearedState value)? cartCleared,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class CartLoadSuccessState implements CartState {
  const factory CartLoadSuccessState(final List<CartItem> cartItems) =
      _$CartLoadSuccessStateImpl;

  List<CartItem> get cartItems;
  @JsonKey(ignore: true)
  _$$CartLoadSuccessStateImplCopyWith<_$CartLoadSuccessStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartLoadErrorStateImplCopyWith<$Res> {
  factory _$$CartLoadErrorStateImplCopyWith(_$CartLoadErrorStateImpl value,
          $Res Function(_$CartLoadErrorStateImpl) then) =
      __$$CartLoadErrorStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CartLoadErrorStateImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartLoadErrorStateImpl>
    implements _$$CartLoadErrorStateImplCopyWith<$Res> {
  __$$CartLoadErrorStateImplCopyWithImpl(_$CartLoadErrorStateImpl _value,
      $Res Function(_$CartLoadErrorStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$CartLoadErrorStateImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CartLoadErrorStateImpl implements CartLoadErrorState {
  const _$CartLoadErrorStateImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'CartState.loadError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartLoadErrorStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartLoadErrorStateImplCopyWith<_$CartLoadErrorStateImpl> get copyWith =>
      __$$CartLoadErrorStateImplCopyWithImpl<_$CartLoadErrorStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(List<CartItem> cartItems) loadSuccess,
    required TResult Function(String message) loadError,
    required TResult Function(int itemId) itemAdded,
    required TResult Function(int itemId) itemRemoved,
    required TResult Function(int itemId) itemUpdated,
    required TResult Function() cartCleared,
  }) {
    return loadError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(List<CartItem> cartItems)? loadSuccess,
    TResult? Function(String message)? loadError,
    TResult? Function(int itemId)? itemAdded,
    TResult? Function(int itemId)? itemRemoved,
    TResult? Function(int itemId)? itemUpdated,
    TResult? Function()? cartCleared,
  }) {
    return loadError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(List<CartItem> cartItems)? loadSuccess,
    TResult Function(String message)? loadError,
    TResult Function(int itemId)? itemAdded,
    TResult Function(int itemId)? itemRemoved,
    TResult Function(int itemId)? itemUpdated,
    TResult Function()? cartCleared,
    required TResult orElse(),
  }) {
    if (loadError != null) {
      return loadError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartIdleState value) idle,
    required TResult Function(CartLoadingState value) loading,
    required TResult Function(CartLoadSuccessState value) loadSuccess,
    required TResult Function(CartLoadErrorState value) loadError,
    required TResult Function(CartItemAddedState value) itemAdded,
    required TResult Function(CartItemRemovedState value) itemRemoved,
    required TResult Function(CartItemUpdatedState value) itemUpdated,
    required TResult Function(CartClearedState value) cartCleared,
  }) {
    return loadError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartIdleState value)? idle,
    TResult? Function(CartLoadingState value)? loading,
    TResult? Function(CartLoadSuccessState value)? loadSuccess,
    TResult? Function(CartLoadErrorState value)? loadError,
    TResult? Function(CartItemAddedState value)? itemAdded,
    TResult? Function(CartItemRemovedState value)? itemRemoved,
    TResult? Function(CartItemUpdatedState value)? itemUpdated,
    TResult? Function(CartClearedState value)? cartCleared,
  }) {
    return loadError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartIdleState value)? idle,
    TResult Function(CartLoadingState value)? loading,
    TResult Function(CartLoadSuccessState value)? loadSuccess,
    TResult Function(CartLoadErrorState value)? loadError,
    TResult Function(CartItemAddedState value)? itemAdded,
    TResult Function(CartItemRemovedState value)? itemRemoved,
    TResult Function(CartItemUpdatedState value)? itemUpdated,
    TResult Function(CartClearedState value)? cartCleared,
    required TResult orElse(),
  }) {
    if (loadError != null) {
      return loadError(this);
    }
    return orElse();
  }
}

abstract class CartLoadErrorState implements CartState {
  const factory CartLoadErrorState(final String message) =
      _$CartLoadErrorStateImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$CartLoadErrorStateImplCopyWith<_$CartLoadErrorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartItemAddedStateImplCopyWith<$Res> {
  factory _$$CartItemAddedStateImplCopyWith(_$CartItemAddedStateImpl value,
          $Res Function(_$CartItemAddedStateImpl) then) =
      __$$CartItemAddedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int itemId});
}

/// @nodoc
class __$$CartItemAddedStateImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartItemAddedStateImpl>
    implements _$$CartItemAddedStateImplCopyWith<$Res> {
  __$$CartItemAddedStateImplCopyWithImpl(_$CartItemAddedStateImpl _value,
      $Res Function(_$CartItemAddedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
  }) {
    return _then(_$CartItemAddedStateImpl(
      null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CartItemAddedStateImpl implements CartItemAddedState {
  const _$CartItemAddedStateImpl(this.itemId);

  @override
  final int itemId;

  @override
  String toString() {
    return 'CartState.itemAdded(itemId: $itemId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartItemAddedStateImpl &&
            (identical(other.itemId, itemId) || other.itemId == itemId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, itemId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartItemAddedStateImplCopyWith<_$CartItemAddedStateImpl> get copyWith =>
      __$$CartItemAddedStateImplCopyWithImpl<_$CartItemAddedStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(List<CartItem> cartItems) loadSuccess,
    required TResult Function(String message) loadError,
    required TResult Function(int itemId) itemAdded,
    required TResult Function(int itemId) itemRemoved,
    required TResult Function(int itemId) itemUpdated,
    required TResult Function() cartCleared,
  }) {
    return itemAdded(itemId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(List<CartItem> cartItems)? loadSuccess,
    TResult? Function(String message)? loadError,
    TResult? Function(int itemId)? itemAdded,
    TResult? Function(int itemId)? itemRemoved,
    TResult? Function(int itemId)? itemUpdated,
    TResult? Function()? cartCleared,
  }) {
    return itemAdded?.call(itemId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(List<CartItem> cartItems)? loadSuccess,
    TResult Function(String message)? loadError,
    TResult Function(int itemId)? itemAdded,
    TResult Function(int itemId)? itemRemoved,
    TResult Function(int itemId)? itemUpdated,
    TResult Function()? cartCleared,
    required TResult orElse(),
  }) {
    if (itemAdded != null) {
      return itemAdded(itemId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartIdleState value) idle,
    required TResult Function(CartLoadingState value) loading,
    required TResult Function(CartLoadSuccessState value) loadSuccess,
    required TResult Function(CartLoadErrorState value) loadError,
    required TResult Function(CartItemAddedState value) itemAdded,
    required TResult Function(CartItemRemovedState value) itemRemoved,
    required TResult Function(CartItemUpdatedState value) itemUpdated,
    required TResult Function(CartClearedState value) cartCleared,
  }) {
    return itemAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartIdleState value)? idle,
    TResult? Function(CartLoadingState value)? loading,
    TResult? Function(CartLoadSuccessState value)? loadSuccess,
    TResult? Function(CartLoadErrorState value)? loadError,
    TResult? Function(CartItemAddedState value)? itemAdded,
    TResult? Function(CartItemRemovedState value)? itemRemoved,
    TResult? Function(CartItemUpdatedState value)? itemUpdated,
    TResult? Function(CartClearedState value)? cartCleared,
  }) {
    return itemAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartIdleState value)? idle,
    TResult Function(CartLoadingState value)? loading,
    TResult Function(CartLoadSuccessState value)? loadSuccess,
    TResult Function(CartLoadErrorState value)? loadError,
    TResult Function(CartItemAddedState value)? itemAdded,
    TResult Function(CartItemRemovedState value)? itemRemoved,
    TResult Function(CartItemUpdatedState value)? itemUpdated,
    TResult Function(CartClearedState value)? cartCleared,
    required TResult orElse(),
  }) {
    if (itemAdded != null) {
      return itemAdded(this);
    }
    return orElse();
  }
}

abstract class CartItemAddedState implements CartState {
  const factory CartItemAddedState(final int itemId) = _$CartItemAddedStateImpl;

  int get itemId;
  @JsonKey(ignore: true)
  _$$CartItemAddedStateImplCopyWith<_$CartItemAddedStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartItemRemovedStateImplCopyWith<$Res> {
  factory _$$CartItemRemovedStateImplCopyWith(_$CartItemRemovedStateImpl value,
          $Res Function(_$CartItemRemovedStateImpl) then) =
      __$$CartItemRemovedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int itemId});
}

/// @nodoc
class __$$CartItemRemovedStateImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartItemRemovedStateImpl>
    implements _$$CartItemRemovedStateImplCopyWith<$Res> {
  __$$CartItemRemovedStateImplCopyWithImpl(_$CartItemRemovedStateImpl _value,
      $Res Function(_$CartItemRemovedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
  }) {
    return _then(_$CartItemRemovedStateImpl(
      null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CartItemRemovedStateImpl implements CartItemRemovedState {
  const _$CartItemRemovedStateImpl(this.itemId);

  @override
  final int itemId;

  @override
  String toString() {
    return 'CartState.itemRemoved(itemId: $itemId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartItemRemovedStateImpl &&
            (identical(other.itemId, itemId) || other.itemId == itemId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, itemId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartItemRemovedStateImplCopyWith<_$CartItemRemovedStateImpl>
      get copyWith =>
          __$$CartItemRemovedStateImplCopyWithImpl<_$CartItemRemovedStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(List<CartItem> cartItems) loadSuccess,
    required TResult Function(String message) loadError,
    required TResult Function(int itemId) itemAdded,
    required TResult Function(int itemId) itemRemoved,
    required TResult Function(int itemId) itemUpdated,
    required TResult Function() cartCleared,
  }) {
    return itemRemoved(itemId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(List<CartItem> cartItems)? loadSuccess,
    TResult? Function(String message)? loadError,
    TResult? Function(int itemId)? itemAdded,
    TResult? Function(int itemId)? itemRemoved,
    TResult? Function(int itemId)? itemUpdated,
    TResult? Function()? cartCleared,
  }) {
    return itemRemoved?.call(itemId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(List<CartItem> cartItems)? loadSuccess,
    TResult Function(String message)? loadError,
    TResult Function(int itemId)? itemAdded,
    TResult Function(int itemId)? itemRemoved,
    TResult Function(int itemId)? itemUpdated,
    TResult Function()? cartCleared,
    required TResult orElse(),
  }) {
    if (itemRemoved != null) {
      return itemRemoved(itemId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartIdleState value) idle,
    required TResult Function(CartLoadingState value) loading,
    required TResult Function(CartLoadSuccessState value) loadSuccess,
    required TResult Function(CartLoadErrorState value) loadError,
    required TResult Function(CartItemAddedState value) itemAdded,
    required TResult Function(CartItemRemovedState value) itemRemoved,
    required TResult Function(CartItemUpdatedState value) itemUpdated,
    required TResult Function(CartClearedState value) cartCleared,
  }) {
    return itemRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartIdleState value)? idle,
    TResult? Function(CartLoadingState value)? loading,
    TResult? Function(CartLoadSuccessState value)? loadSuccess,
    TResult? Function(CartLoadErrorState value)? loadError,
    TResult? Function(CartItemAddedState value)? itemAdded,
    TResult? Function(CartItemRemovedState value)? itemRemoved,
    TResult? Function(CartItemUpdatedState value)? itemUpdated,
    TResult? Function(CartClearedState value)? cartCleared,
  }) {
    return itemRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartIdleState value)? idle,
    TResult Function(CartLoadingState value)? loading,
    TResult Function(CartLoadSuccessState value)? loadSuccess,
    TResult Function(CartLoadErrorState value)? loadError,
    TResult Function(CartItemAddedState value)? itemAdded,
    TResult Function(CartItemRemovedState value)? itemRemoved,
    TResult Function(CartItemUpdatedState value)? itemUpdated,
    TResult Function(CartClearedState value)? cartCleared,
    required TResult orElse(),
  }) {
    if (itemRemoved != null) {
      return itemRemoved(this);
    }
    return orElse();
  }
}

abstract class CartItemRemovedState implements CartState {
  const factory CartItemRemovedState(final int itemId) =
      _$CartItemRemovedStateImpl;

  int get itemId;
  @JsonKey(ignore: true)
  _$$CartItemRemovedStateImplCopyWith<_$CartItemRemovedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartItemUpdatedStateImplCopyWith<$Res> {
  factory _$$CartItemUpdatedStateImplCopyWith(_$CartItemUpdatedStateImpl value,
          $Res Function(_$CartItemUpdatedStateImpl) then) =
      __$$CartItemUpdatedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int itemId});
}

/// @nodoc
class __$$CartItemUpdatedStateImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartItemUpdatedStateImpl>
    implements _$$CartItemUpdatedStateImplCopyWith<$Res> {
  __$$CartItemUpdatedStateImplCopyWithImpl(_$CartItemUpdatedStateImpl _value,
      $Res Function(_$CartItemUpdatedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemId = null,
  }) {
    return _then(_$CartItemUpdatedStateImpl(
      null == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CartItemUpdatedStateImpl implements CartItemUpdatedState {
  const _$CartItemUpdatedStateImpl(this.itemId);

  @override
  final int itemId;

  @override
  String toString() {
    return 'CartState.itemUpdated(itemId: $itemId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartItemUpdatedStateImpl &&
            (identical(other.itemId, itemId) || other.itemId == itemId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, itemId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartItemUpdatedStateImplCopyWith<_$CartItemUpdatedStateImpl>
      get copyWith =>
          __$$CartItemUpdatedStateImplCopyWithImpl<_$CartItemUpdatedStateImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(List<CartItem> cartItems) loadSuccess,
    required TResult Function(String message) loadError,
    required TResult Function(int itemId) itemAdded,
    required TResult Function(int itemId) itemRemoved,
    required TResult Function(int itemId) itemUpdated,
    required TResult Function() cartCleared,
  }) {
    return itemUpdated(itemId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(List<CartItem> cartItems)? loadSuccess,
    TResult? Function(String message)? loadError,
    TResult? Function(int itemId)? itemAdded,
    TResult? Function(int itemId)? itemRemoved,
    TResult? Function(int itemId)? itemUpdated,
    TResult? Function()? cartCleared,
  }) {
    return itemUpdated?.call(itemId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(List<CartItem> cartItems)? loadSuccess,
    TResult Function(String message)? loadError,
    TResult Function(int itemId)? itemAdded,
    TResult Function(int itemId)? itemRemoved,
    TResult Function(int itemId)? itemUpdated,
    TResult Function()? cartCleared,
    required TResult orElse(),
  }) {
    if (itemUpdated != null) {
      return itemUpdated(itemId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartIdleState value) idle,
    required TResult Function(CartLoadingState value) loading,
    required TResult Function(CartLoadSuccessState value) loadSuccess,
    required TResult Function(CartLoadErrorState value) loadError,
    required TResult Function(CartItemAddedState value) itemAdded,
    required TResult Function(CartItemRemovedState value) itemRemoved,
    required TResult Function(CartItemUpdatedState value) itemUpdated,
    required TResult Function(CartClearedState value) cartCleared,
  }) {
    return itemUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartIdleState value)? idle,
    TResult? Function(CartLoadingState value)? loading,
    TResult? Function(CartLoadSuccessState value)? loadSuccess,
    TResult? Function(CartLoadErrorState value)? loadError,
    TResult? Function(CartItemAddedState value)? itemAdded,
    TResult? Function(CartItemRemovedState value)? itemRemoved,
    TResult? Function(CartItemUpdatedState value)? itemUpdated,
    TResult? Function(CartClearedState value)? cartCleared,
  }) {
    return itemUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartIdleState value)? idle,
    TResult Function(CartLoadingState value)? loading,
    TResult Function(CartLoadSuccessState value)? loadSuccess,
    TResult Function(CartLoadErrorState value)? loadError,
    TResult Function(CartItemAddedState value)? itemAdded,
    TResult Function(CartItemRemovedState value)? itemRemoved,
    TResult Function(CartItemUpdatedState value)? itemUpdated,
    TResult Function(CartClearedState value)? cartCleared,
    required TResult orElse(),
  }) {
    if (itemUpdated != null) {
      return itemUpdated(this);
    }
    return orElse();
  }
}

abstract class CartItemUpdatedState implements CartState {
  const factory CartItemUpdatedState(final int itemId) =
      _$CartItemUpdatedStateImpl;

  int get itemId;
  @JsonKey(ignore: true)
  _$$CartItemUpdatedStateImplCopyWith<_$CartItemUpdatedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CartClearedStateImplCopyWith<$Res> {
  factory _$$CartClearedStateImplCopyWith(_$CartClearedStateImpl value,
          $Res Function(_$CartClearedStateImpl) then) =
      __$$CartClearedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CartClearedStateImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartClearedStateImpl>
    implements _$$CartClearedStateImplCopyWith<$Res> {
  __$$CartClearedStateImplCopyWithImpl(_$CartClearedStateImpl _value,
      $Res Function(_$CartClearedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CartClearedStateImpl implements CartClearedState {
  const _$CartClearedStateImpl();

  @override
  String toString() {
    return 'CartState.cartCleared()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CartClearedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() idle,
    required TResult Function() loading,
    required TResult Function(List<CartItem> cartItems) loadSuccess,
    required TResult Function(String message) loadError,
    required TResult Function(int itemId) itemAdded,
    required TResult Function(int itemId) itemRemoved,
    required TResult Function(int itemId) itemUpdated,
    required TResult Function() cartCleared,
  }) {
    return cartCleared();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? idle,
    TResult? Function()? loading,
    TResult? Function(List<CartItem> cartItems)? loadSuccess,
    TResult? Function(String message)? loadError,
    TResult? Function(int itemId)? itemAdded,
    TResult? Function(int itemId)? itemRemoved,
    TResult? Function(int itemId)? itemUpdated,
    TResult? Function()? cartCleared,
  }) {
    return cartCleared?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? idle,
    TResult Function()? loading,
    TResult Function(List<CartItem> cartItems)? loadSuccess,
    TResult Function(String message)? loadError,
    TResult Function(int itemId)? itemAdded,
    TResult Function(int itemId)? itemRemoved,
    TResult Function(int itemId)? itemUpdated,
    TResult Function()? cartCleared,
    required TResult orElse(),
  }) {
    if (cartCleared != null) {
      return cartCleared();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CartIdleState value) idle,
    required TResult Function(CartLoadingState value) loading,
    required TResult Function(CartLoadSuccessState value) loadSuccess,
    required TResult Function(CartLoadErrorState value) loadError,
    required TResult Function(CartItemAddedState value) itemAdded,
    required TResult Function(CartItemRemovedState value) itemRemoved,
    required TResult Function(CartItemUpdatedState value) itemUpdated,
    required TResult Function(CartClearedState value) cartCleared,
  }) {
    return cartCleared(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CartIdleState value)? idle,
    TResult? Function(CartLoadingState value)? loading,
    TResult? Function(CartLoadSuccessState value)? loadSuccess,
    TResult? Function(CartLoadErrorState value)? loadError,
    TResult? Function(CartItemAddedState value)? itemAdded,
    TResult? Function(CartItemRemovedState value)? itemRemoved,
    TResult? Function(CartItemUpdatedState value)? itemUpdated,
    TResult? Function(CartClearedState value)? cartCleared,
  }) {
    return cartCleared?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CartIdleState value)? idle,
    TResult Function(CartLoadingState value)? loading,
    TResult Function(CartLoadSuccessState value)? loadSuccess,
    TResult Function(CartLoadErrorState value)? loadError,
    TResult Function(CartItemAddedState value)? itemAdded,
    TResult Function(CartItemRemovedState value)? itemRemoved,
    TResult Function(CartItemUpdatedState value)? itemUpdated,
    TResult Function(CartClearedState value)? cartCleared,
    required TResult orElse(),
  }) {
    if (cartCleared != null) {
      return cartCleared(this);
    }
    return orElse();
  }
}

abstract class CartClearedState implements CartState {
  const factory CartClearedState() = _$CartClearedStateImpl;
}
