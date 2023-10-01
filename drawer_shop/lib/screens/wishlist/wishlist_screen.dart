import 'package:drawer_shop/models/models.dart';
import 'package:flutter/material.dart';
import 'package:drawer_shop/widgets/widget.dart';

class WishlistScreen extends StatelessWidget {
  // const HomeScreen({super.key});
static const String routeName = '/wishlist';
///////////////route method/////////
static Route route() {
  return MaterialPageRoute(
    settings: RouteSettings(name: routeName),
    builder: (_) => WishlistScreen(),
    );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: CustomAppBar(title: 'Wishlist'),
    
//////////////////////Bottom Navigation Bar/////////////////    
    bottomNavigationBar: CustomNavBar(),
    body: 
    GridView.builder(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0, 
        vertical: 16.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1, childAspectRatio: 2.2), 
      itemCount: Product.products.length,
      itemBuilder: (BuildContext context, int index) {
        return Center(
          child: ProductCard(
            product: Product.products[index],
            widthFactor: 1.1,
            leftPosition: 100,
            isWishlist: true,
            )
          );
      },
      ),
    );
  }
}


