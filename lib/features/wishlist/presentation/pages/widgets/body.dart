import 'package:flutter/material.dart';

import '../../../../product/domain/models/product_model.dart';
import '../../widgets/wishlist_item.dart';

class WishlistPageBody extends StatelessWidget {
  const WishlistPageBody({super.key, required this.wishlist});

  final List<ProductModel> wishlist;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: wishlist.length,
      itemBuilder: (context, index) {
        final product = wishlist[index];
        return WishlistItem(product: product);
      },
    );
  }
}
