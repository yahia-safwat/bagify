import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../product/domain/models/product_model.dart';
import '../../application/services/wishlist_service.dart';
import '../../domain/repositories/wishlist_repository.dart';
import '../../data/repositories/wishlist_repository_impl.dart';
import '../controllers/wishlist_controller.dart';

// controller provider
final wishlistProvider =
    StateNotifierProvider<WishlistController, List<ProductModel>>((ref) {
  final service = ref.watch(wishlistServiceProvider);
  return WishlistController(service);
});

// service provider
final wishlistServiceProvider = Provider<WishlistService>((ref) {
  final repository = ref.watch(wishlistRepositoryProvider);
  return WishlistService(repository);
});

// repository provider
final wishlistRepositoryProvider = Provider<WishlistRepository>((ref) {
  return WishlistRepositoryImpl();
});
