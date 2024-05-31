import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/models/cart_item_model.dart';
import '../providers/provider.dart';

class CartItemWidget extends StatelessWidget {
  final CartItem item;
  final WidgetRef ref;

  const CartItemWidget({required this.item, required this.ref, super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:
          Image.asset(item.image, width: 50, height: 50, fit: BoxFit.cover),
      title: Text(item.title),
      subtitle: Text(
        'Quantity: ${item.quantity}\nPrice: \$${item.price.toStringAsFixed(2)}',
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: const Icon(Icons.remove),
            onPressed: () {
              if (item.quantity > 1) {
                ref
                    .read(cartControllerProvider.notifier)
                    .updateItemQuantity(item.id, item.quantity - 1);
              } else {
                ref
                    .read(cartControllerProvider.notifier)
                    .removeItemFromCart(item.id);
              }
            },
          ),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => ref
                .read(cartControllerProvider.notifier)
                .updateItemQuantity(item.id, item.quantity + 1),
          ),
        ],
      ),
      onLongPress: () => _showDeleteConfirmationDialog(context),
    );
  }

  void _showDeleteConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Delete Item'),
          content: const Text(
              'Are you sure you want to delete this item from the cart?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(), // Cancel
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                ref
                    .read(cartControllerProvider.notifier)
                    .removeItemFromCart(item.id);
                Navigator.of(context).pop(); // Confirm
              },
              child: const Text('Delete'),
            ),
          ],
        );
      },
    );
  }
}
