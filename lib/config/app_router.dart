import 'package:flutter/material.dart';
import 'package:izipizi_shop/models/models.dart';

import '../screens/catalog/catalog_screen.dart';
import '../screens/home/home_screen.dart';
import '../screens/cart/cart_screen.dart';
import '../screens/reviews/product_reviews_page.dart';

import '../screens/product/product_screen.dart';
import '../screens/wishlist/wishlist_screen.dart';
import '../widgets/widgets.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case HomeScreen.routeName:
        return HomeScreen.route();
      case CartScreen.routeName:
        return CartScreen.route();
      case ProductScreen.routeName:
        return ProductScreen.route(product: settings.arguments as Product);
      case WishlistScreen.routeName:
        return WishlistScreen.route();
      case CatalogScreen.routeName:
        return CatalogScreen.route(category: settings.arguments as Category);
      case ProductReviewsScreen.routeName:
        return ProductReviewsScreen.route(product: settings.arguments as Product);
      default:
        return _errorRoute();
    }
  }

  static _errorRoute() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: '/error'),
      builder: (_) => const Scaffold(
        appBar: CustomAppBar(
          isMainAppBar: false,
          title: 'Error Page',
        ),
      ),
    );
  }
}
