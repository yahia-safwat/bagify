import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/provider.dart';

class CartPageBody extends ConsumerWidget {
  const CartPageBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cartItemsAsync = ref.watch(cartControllerProvider);

    return cartItemsAsync.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (err, stack) => Center(child: Text('Error: $err')),
      data: (cartItems) => ListView.builder(
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          final item = cartItems[index];
          return ListTile(
            leading: Image.asset(item.image,
                width: 50, height: 50, fit: BoxFit.cover),
            title: Text(item.title),
            subtitle: Text(
                'Quantity: ${item.quantity}\nPrice: \$${item.price.toStringAsFixed(2)}'),
            trailing: IconButton(
              icon: const Icon(Icons.remove_shopping_cart),
              onPressed: () => ref
                  .read(cartControllerProvider.notifier)
                  .removeItemFromCart(item.id),
            ),
          );
        },
      ),
    );
  }
}
