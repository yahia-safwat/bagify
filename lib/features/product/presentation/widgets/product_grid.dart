import 'package:flutter/material.dart';

import '../../domain/models/product_model.dart';
import 'product_grid_item.dart';

class ProductGrid extends StatelessWidget {
  final List<ProductModel> products;

  const ProductGrid({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 4.0,
        mainAxisSpacing: 4.0,
        childAspectRatio: 0.7, // Adjust as needed
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ProductGridItem(product: products[index]);
      },
    );
  }
}
