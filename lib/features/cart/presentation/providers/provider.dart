import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../application/cart_service.dart';
import '../../data/repositories/cart_repository_impl.dart';
import '../../domain/repositories/cart_repository.dart';
import '../controllers/cart_controller.dart';
import '../controllers/cart_states.dart';

// controller provider
final cartControllerProvider =
    StateNotifierProvider<CartController, CartState>((ref) {
  return CartController(ref.read(cartServiceProvider));
});

// service provider
final cartServiceProvider = Provider<CartService>((ref) {
  return CartService(ref.read(cartRepositoryProvider));
});

// repository provider
final cartRepositoryProvider = Provider<CartRepository>((ref) {
  return CartRepositoryImpl();
});

// cart operation provider
final cartOperationStateProvider = StateProvider<bool>((ref) => false);
