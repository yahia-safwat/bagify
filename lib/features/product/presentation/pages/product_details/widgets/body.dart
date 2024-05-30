import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/routes/app_routes.dart';
import '../../../../../cart/domain/models/cart_item_model.dart';
import '../../../../../cart/presentation/controllers/cart_states.dart';
import '../../../../../cart/presentation/providers/provider.dart';
import '../../../../domain/models/product_model.dart';

class ProductDetailsPageBody extends ConsumerWidget {
  const ProductDetailsPageBody({super.key, required this.product});

  final ProductModel product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<CartState>(cartControllerProvider, (previous, next) {
      next.whenOrNull(
        itemAdded: (itemId) {
          // Navigate to the cart page when the item is successfully added
          context.pushNamed(AppRoutes.cart);

          // Reset the state to idle after navigation
          ref.read(cartControllerProvider.notifier).resetState();
        },
      );
    });

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            Center(
              child: Image.asset(
                product.image,
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Price: \$${product.price.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              'Size: ${product.size}',
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 8),
            const Text(
              'Description:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text(
              product.description,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 40),
            Center(
              child: ElevatedButton.icon(
                onPressed: () {
                  final cartItem = CartItem(
                    id: product.id,
                    title: product.title,
                    price: product.price,
                    quantity: 1,
                    image: product.image,
                  );
                  ref
                      .read(cartControllerProvider.notifier)
                      .addItemToCart(cartItem);
                },
                icon: const Icon(Icons.shopping_cart),
                label: const Text('Add to Cart'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
