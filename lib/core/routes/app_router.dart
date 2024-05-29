import 'package:flutter/material.dart';

import '../../features/home/presentation/pages/home_page.dart';
import '../../features/product/domain/models/product_model.dart';
import '../../features/product/presentation/pages/product_details/product_details_page.dart';
import 'app_routes.dart';

import 'package:go_router/go_router.dart';

class AppRouter {
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: AppRoutes.home,
        name: AppRoutes.home,
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: AppRoutes.productDetails,
        name: AppRoutes.productDetails,
        builder: (context, state) {
          final product = state.extra as ProductModel;
          return ProductDetailsPage(product: product);
        },
      ),
    ],
    errorBuilder: (context, state) => Scaffold(
      body: Center(
        child: Text('No route found for ${state.error}'),
      ),
    ),
  );
}
