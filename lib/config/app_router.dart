import 'package:ecommerce_start/screens/cart/cart_screen.dart';
import 'package:ecommerce_start/screens/home/home_screen.dart';
import 'package:ecommerce_start/screens/wishlist/wishlist_screen.dart';
import 'package:ecommerce_start/screens/product/product_screen.dart';
import 'package:flutter/material.dart';

import '../screens/catalog/catalog_screen.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('This is route: ${settings.name}');

    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case CartScreen.routeName:
        return CartScreen.route();
      case WishlistScreen.routeName:
        return WishlistScreen.route();
      case ProductScreen.routeName:
        return ProductScreen.route();
      case CatalogScreen.routeName:
        return CatalogScreen.route();

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: RouteSettings(name: '/error'),
      builder: (_) => Scaffold(
        appBar: AppBar(title: Text('Error')),
      ),
    );
  }
}
