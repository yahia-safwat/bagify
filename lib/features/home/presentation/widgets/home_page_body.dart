import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../common/widgets/error_widget.dart';
import '../../../../common/widgets/loading_widget.dart';
import '../../../product/presentation/providers/providers.dart';
import '../../../product/presentation/widgets/product_grid.dart';

class HomePageBody extends ConsumerWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productsAsync = ref.watch(productControllerProvider);

    return productsAsync.when(
      loading: () => const LoadingWidget(),
      error: (err, stack) => ErrWidget(error: err),
      data: (products) => ProductGrid(products: products),
      // data: (products) => ProductList(products: products),
    );
  }
}
