import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../domain/models/product_model.dart';
import 'widgets/body.dart';

class ProductDetailsPage extends ConsumerWidget {
  final ProductModel product;

  const ProductDetailsPage({super.key, required this.product});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text(product.title)),
      body: ProductDetailsPageBody(product: product),
    );
  }
}
