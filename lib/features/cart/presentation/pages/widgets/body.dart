import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/models/cart_item_model.dart';
import '../../providers/provider.dart';
import '../../widgets/cart_item.dart';

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
      return CartItemWidget(item: item, ref: ref);
    },
  );
}
