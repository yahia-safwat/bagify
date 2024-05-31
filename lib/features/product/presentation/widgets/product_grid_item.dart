import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routes/app_routes.dart';
import '../../../wishlist/presentation/providers/wishlist_providers.dart';
import '../../domain/models/product_model.dart';

class ProductGridItem extends ConsumerWidget {
  final ProductModel product;

  const ProductGridItem({super.key, required this.product});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final wishlist = ref.watch(wishlistProvider);

    // Check if the product is in the wishlist
    final isInWishlist = wishlist.contains(product);

    return GestureDetector(
      onTap: () => _onTap(context, product),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 4.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8.0),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Image.asset(
                          product.image,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          product.title,
                          style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 4.0),
                        Text(
                          '\$${product.price.toStringAsFixed(2)}',
                          style: const TextStyle(
                            fontSize: 14.0,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: IconButton(
                  icon: Icon(
                    isInWishlist ? Icons.favorite : Icons.favorite_border,
                    color: isInWishlist ? Colors.red : Colors.grey,
                  ),
                  onPressed: () {
                    if (isInWishlist) {
                      ref
                          .read(wishlistProvider.notifier)
                          .removeProduct(product);
                    } else {
                      ref.read(wishlistProvider.notifier).addProduct(product);
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onTap(BuildContext context, ProductModel product) {
    // Navigate to ProductDetailsPage and pass the product as an argument
    context.push(AppRoutes.productDetails, extra: product);
  }
}
