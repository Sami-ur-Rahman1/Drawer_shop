import 'package:drawer_shop/models/category_model.dart';
import 'package:drawer_shop/models/models.dart';
import 'package:flutter/material.dart';
import 'package:drawer_shop/widgets/widget.dart';

class CatalogScreen extends StatelessWidget {
  // const HomeScreen({super.key});
static const String routeName = '/catalog';
///////////////route method/////////
static Route route({required Category category}) {
  return MaterialPageRoute(
    settings: RouteSettings(name: routeName),
    builder: (_) => CatalogScreen(category: category),
    );
}

final Category category;

const CatalogScreen({required this.category});



  @override
  Widget build(BuildContext context) {
    final List<Product> categoryProducts = Product.products.where((product) => product.catrgory == category.name).toList();

    return Scaffold(
    appBar: CustomAppBar(title: category.name),    
//////////////////////Bottom Navigation Bar/////////////////    
    bottomNavigationBar: CustomNavBar(),
    body: GridView.builder(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0, 
        vertical: 16.0),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, childAspectRatio: 1.15), 
      itemCount: categoryProducts.length,
      itemBuilder: (BuildContext context, int index) {
        return Center(
          child: ProductCard(
            product: categoryProducts[index],
            widthFactor: 2.2,
            )
          );
      },
      )
    
    


    );
  }
}
