import 'package:carousel_slider/carousel_slider.dart';
import 'package:drawer_shop/blocs/wishlist/wishlist_bloc.dart';
import 'package:drawer_shop/models/wishlist_model.dart';
import 'package:flutter/material.dart';
import 'package:drawer_shop/widgets/widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../models/product_model.dart';

class ProductScreen extends StatelessWidget {
  // const HomeScreen({super.key});
  static const String routeName = '/product';
///////////////route method/////////
  static Route route({required Product product}) {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => ProductScreen(product: product),
    );
  }

  final Product product;

  const ProductScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: product.name),

//////////////////////Bottom Navigation Bar/////////////////
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Container(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
//////////////////  BUTTON 1  /////////////////              
              IconButton(
                  icon: Icon(
                    Icons.share,
                    color: Colors.white,
                  ),
                  onPressed: () {}),
//////////////////  BUTTON 2  ///////////////// 
             
//_________________ ORIGINAL CODE _______________
             IconButton(
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.white,
                  ),
                  onPressed: () {}),

//___________________ MODIFIED CODE FOR BLOC ________________            
              // BlocBuilder<WishlistBloc, WishlistState>(
              //   builder: (context, state) {
              //     return IconButton(
              //         icon: Icon(Icons.favorite, color: Colors.white),
              //         onPressed: () {
              //           context
              //                 .read<WishlistBloc>()
              //                 .add(AddWishlistProduct(product));
              //         });
              //   },
              // ),

//////////////////  BUTTON 3  /////////////////              
              ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Color(255)),
                  onPressed: () {},
                  child: Text('ADD TO CART',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: Colors.white,
                          )))
            ],
          ),
        ),
      ),
/////////////////////Product Details////////////////////////
      body: ListView(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 1.5,
              viewportFraction: 0.9,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
            ),
            items: [
              HeroCarouselCard(
                product: product,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  alignment: Alignment.bottomCenter,
                  color: Colors.black.withAlpha(50),
                ),
                Container(
                  margin: const EdgeInsets.all(5.0),
                  width: MediaQuery.of(context).size.width - 10,
                  height: 50,
                  color: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          product.name,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: Colors.white),
                        ),
                        Text(
                          '${product.price}',
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
/////////////////////it's a kind of Drop-down////////////
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ExpansionTile(
              initiallyExpanded: true,
              title: Text(
                'Product Information',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              children: [
                ListTile(
                  title: Text(
                    'It is a very great product, it is very cheap compaire to the marke price. Do buy this product if your intrested.',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ExpansionTile(
              title: Text(
                'Delivery Information',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              children: [
                ListTile(
                  title: Text(
                    'This product will at your door step with in 1 week. This shipping cost is also free.',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
