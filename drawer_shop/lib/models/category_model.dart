import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imageUrl;

  const Category({
  required this.name,
  required this.imageUrl,
  });


  @override
  List<Object?> get props => [name, imageUrl];
  
  static List<Category> categories = [
    Category(
      name: 'Furniture', 
      imageUrl: 'https://cdn.shopify.com/s/files/1/0429/7654/2881/products/seating-furniture-logan-chair-36199620706522.jpg?v=1672229778'
      ),
    Category(
      name: 'Shoes', 
      imageUrl: 'https://cdn.shopify.com/s/files/1/0075/3929/4305/collections/G22_WA_AP_NAV-Shoes.jpg?v=1645999375'
      ),
    Category(
      name: 'Watches', 
      imageUrl: 'https://cdn.anscommerce.com/catalog/brandstore/johnson/17_7_20/Sale.jpg'
      ),
    Category(
      name: 'Jwellery', 
      imageUrl: 'https://static-01.daraz.pk/p/37ee4c3a580ac757ad8ff5f91846b2c7.jpg_720x720.jpg_.webp'
      ),  
  ];
}
  