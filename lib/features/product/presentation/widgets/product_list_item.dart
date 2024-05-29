import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routes/app_routes.dart';
import '../../domain/models/product_model.dart';
import 'product_list.dart';

class ProductListItem extends ConsumerWidget {
  const ProductListItem({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ProductModel product = ref.watch(currentProduct);

    return ListTile(
      leading: Image.asset(
        product.image,
        width: 50,
        height: 50,
        fit: BoxFit.cover,
      ),
      title: Text(product.title),
      subtitle: Text('\$${product.price.toStringAsFixed(2)}'),
      onTap: () => _onTap(context, product),
    );
  }

  void _onTap(BuildContext context, ProductModel product) {
    // Navigate to ProductDetailsPage and pass the product as an argument
    context.push(AppRoutes.productDetails, extra: product);
  }
}
