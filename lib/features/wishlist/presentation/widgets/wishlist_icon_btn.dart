import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../product/domain/models/product_model.dart';
import '../providers/wishlist_providers.dart';

class WishlistIconButton extends ConsumerWidget {
  final ProductModel product;

  const WishlistIconButton({super.key, required this.product});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final wishlist = ref.watch(wishlistProvider);
    final isInWishlist = wishlist.contains(product);

    return IconButton(
      icon: Icon(
        isInWishlist ? Icons.favorite : Icons.favorite_border,
        color: isInWishlist ? Colors.red : Colors.grey,
      ),
      onPressed: () {
        if (isInWishlist) {
          ref.read(wishlistProvider.notifier).removeProduct(product);
        } else {
          ref.read(wishlistProvider.notifier).addProduct(product);
        }
      },
    );
  }
}
