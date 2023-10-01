import 'package:drawer_shop/blocs/wishlist/wishlist_bloc.dart';
import 'package:drawer_shop/screens/cart/cart_screen.dart';
import 'package:drawer_shop/screens/home_screen.dart';
import 'package:drawer_shop/screens/screens.dart';
import 'package:drawer_shop/config/app_router.dart';
// import 'package:drawer_shop/widgets/custom_appbar.dart';
// import 'package:drawer_shop/widgets/custom_navigation_bar.dart';
// import 'package:drawer_shop/widgets/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'config/theme.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => WishlistBloc()..add(StartWishlist())),
      ],

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Drawer Shop',
        theme: theme(),
        onGenerateRoute: AppRouter.onGenerateRought,
        initialRoute: HomeScreen.routeName,
      ),
    );
  }
}
