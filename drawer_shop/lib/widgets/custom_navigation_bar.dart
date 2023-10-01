import 'package:drawer_shop/screens/cart/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.black,
      child: Container(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
////////////////////First Icon///////////////////            
            IconButton(onPressed: () {
              Navigator.pushNamed(context, '/');
            }, icon: Icon(Icons.home, color: Colors.white,)),

////////////////////Sceond Icon///////////////////
            IconButton(onPressed: () {
              Navigator.pushNamed(context, '/cart');
              // Get.to(CartScreen());
            }, icon: Icon(Icons.shopping_cart, color: Colors.white)),

////////////////////Third Icon///////////////////
            IconButton(onPressed: () {
              Navigator.pushNamed(context, '/user');
            }, icon: Icon(Icons.person, color: Colors.white)),
          ],
        ),
      ),
    );
  }
}

