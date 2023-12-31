import 'package:drawer_shop/models/category_model.dart';
import 'package:drawer_shop/models/models.dart';
import 'package:drawer_shop/screens/cart/cart_screen.dart';
import 'package:drawer_shop/screens/screens.dart';
import 'package:flutter/material.dart';

import '../screens/home_screen.dart';



class AppRouter {
  static Route onGenerateRought(RouteSettings settings) {
    print('this is route: ${settings.name}');

    switch (settings.name) {
      case '/':
       return HomeScreen.route();
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