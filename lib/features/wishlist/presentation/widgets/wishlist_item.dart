import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routes/app_routes.dart';
import '../../../product/domain/models/product_model.dart';
import '../../../wishlist/presentation/providers/wishlist_providers.dart';

class WishlistItem extends ConsumerWidget {
  final ProductModel product;
  const WishlistItem({super.key, required this.product});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final wishlist = ref.watch(wishlistProvider);

    // Check if the product is in the wishlist
    final isInWishlist = wishlist.contains(product);

    return ListTile(
      leading: Image.asset(
        product.image,
        width: 50,
        height: 50,
        fit: BoxFit.cover,
      ),
      title: Text(product.title),
      subtitle: Text('\$${product.price.toStringAsFixed(2)}'),
      trailing: IconButton(
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
      ),
      onTap: () => _onTap(context, product),
    );
  }

  void _onTap(BuildContext context, ProductModel product) {
    // Navigate to ProductDetailsPage and pass the product as an argument
    context.push(AppRoutes.productDetails, extra: product);
  }
}
