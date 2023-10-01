import 'package:drawer_shop/widgets/widget.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  // const HomeScreen({super.key});
static const String routeName = '/cart';

///////////////route method/////////
static Route route() {
  return MaterialPageRoute(
    settings: RouteSettings(name: routeName),
    builder: (_) => CartScreen(),
    );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: CustomAppBar(title: 'Cart'),
    bottomNavigationBar: CustomNavBar(),);
  }
}

