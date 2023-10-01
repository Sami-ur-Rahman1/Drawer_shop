import 'package:flutter/material.dart';

import '../models/product_model.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final double widthFactor;
  final double leftPosition;
  final bool isWishlist;

  const ProductCard({
    super.key,
    required this.product,
    this.widthFactor = 2.5,
    this.leftPosition = 5,
    this.isWishlist = false,
  });

  @override
  Widget build(BuildContext context) {
    final double widthValue = MediaQuery.of(context).size.width / widthFactor;

    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/product', arguments: product);
      },
      child: Stack(
        children: [
          Container(
            width: widthValue,
            height: 150,
            child: Image.network(product.imageUrl,
            fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 60,
            left: leftPosition,
            child: Container(
              width: widthValue - 5 - leftPosition,
              //MediaQuery.of(context).size.width / 2.5,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.black.withAlpha(50)
              ),
            ),
          ),
          Positioned(
            top: 65,
            left: leftPosition + 5,
            child: Container(
              width: widthValue - 15 - leftPosition,
              //MediaQuery.of(context).size.width / 2.5 - 10,
              height: 60,
              decoration: BoxDecoration(color: Colors.black,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text(
                          product.name, 
                          style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),),
                        Text(
                        '\$${Product.products[0].price}', 
                          style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),),
                        ],
                      ),
                    ),
                    Expanded(
                      child: IconButton(icon: Icon(Icons.add_circle, color: Colors.white,),
                      onPressed: () {},
                      ),
                    ),
                    isWishlist?Expanded(
                      child: IconButton(icon: Icon(Icons.delete, 
                      color: Colors.white,),
                      onPressed: () {},
                      ),
                    ): SizedBox(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

