import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../common/widgets/bottom_nav.dart';
import 'widgets/body.dart';

class CartPage extends ConsumerWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cart')),
      body: const CartPageBody(),
      bottomNavigationBar: const BottomNav(currentIndex: 2),
    );
  }
}
