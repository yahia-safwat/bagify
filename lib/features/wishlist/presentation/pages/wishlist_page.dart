import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../common/widgets/bottom_nav.dart';
import '../providers/wishlist_providers.dart';
import 'widgets/body.dart';

class WishlistPage extends ConsumerWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final wishlist = ref.watch(wishlistProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Wishlist'),
      ),
      body: WishlistPageBody(wishlist: wishlist),
      bottomNavigationBar: const BottomNav(currentIndex: 1),
    );
  }
}
