import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../domain/models/product_model.dart';
import 'product_list_item.dart';

// Provider for the current product
final currentProduct =
    Provider<ProductModel>((_) => throw UnimplementedError());

class ProductList extends StatelessWidget {
  final List<ProductModel> products;

  const ProductList({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ProviderScope(
          overrides: [
            currentProduct.overrideWithValue(products[index]),
          ],
          child: const ProductListItem(),
        );
      },
    );
  }
}
