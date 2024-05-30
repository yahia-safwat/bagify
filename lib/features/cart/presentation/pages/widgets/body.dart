import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/models/cart_item_model.dart';
import '../../providers/provider.dart';

class CartPageBody extends ConsumerWidget {
  const CartPageBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartState = ref.watch(cartControllerProvider);

    return cartState.maybeWhen(
      orElse: () => const Center(child: CircularProgressIndicator()),
      loadError: (message) => Center(child: Text(message)),
      loadSuccess: (cartItems) {
        if (cartItems.isNotEmpty) {
          return _buildCartItems(cartItems, ref);
        } else {
          return const Center(child: Text('Your cart is empty'));
        }
      },
    );
  }
}

Widget _buildCartItems(List<CartItem> cartItems, WidgetRef ref) {
  return ListView.builder(
    itemCount: cartItems.length,
    itemBuilder: (context, index) {
      final item = cartItems[index];
      return ListTile(
        leading:
            Image.asset(item.image, width: 50, height: 50, fit: BoxFit.cover),
        title: Text(item.title),
        subtitle: Text(
          'Quantity: ${item.quantity}\nPrice: \$${item.price.toStringAsFixed(2)}',
        ),
        trailing: IconButton(
          icon: const Icon(Icons.remove_shopping_cart),
          onPressed: () => ref
              .read(cartControllerProvider.notifier)
              .removeItemFromCart(item.id),
        ),
      );
    },
  );
}
