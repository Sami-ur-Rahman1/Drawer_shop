import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String catrgory;
  final String imageUrl;
  final double price;
  final bool isRecommended;
  final bool isPopular;

  const Product({
    required this.name,
    required this.catrgory,
    required this.imageUrl,
    required this.price,
    required this.isPopular,
    required this.isRecommended,
  });

  @override
  List<Object?> get props => [
    name,
    catrgory,
    imageUrl,
    price,
    isPopular,
    isRecommended,
  ];

static List<Product> products = [
  Product(name: 'Watches #1', 
  catrgory: 'Watches', 
  imageUrl: 'https://m.media-amazon.com/images/I/71fJ8PJ8ooL._AC_UL1500_.jpg', 
  price: 200.99, 
  isPopular: false, 
  isRecommended: true),
  Product(name: 'Watches #2', 
  catrgory: 'Watches', 
  imageUrl: 'https://static-01.daraz.pk/p/235071ab2cb05d398fd0858f1ebd5f2d.jpg', 
  price: 300.99, 
  isPopular: false, 
  isRecommended: true),
  Product(name: 'Watches #3', 
  catrgory: 'Watches', 
  imageUrl: 'https://rafiqsonsonline.com/wp-content/uploads/2021/08/8355-CRM-BLU.jpg', 
  price: 240.99, 
  isPopular: true, 
  isRecommended: true),
  Product(name: 'Shoes #1', 
  catrgory: 'Shoes', 
  imageUrl: 'https://cdn.shopify.com/s/files/1/0522/2357/4165/products/AFP-000246903_1024x1024.jpg?v=1614149342', 
  price: 240.99, 
  isPopular: true, 
  isRecommended: true),
  Product(name: 'Shoes #2', 
  catrgory: 'Shoes', 
  imageUrl: 'https://cdn.shopify.com/s/files/1/1265/1005/products/cb87694edd4582cf95dee4584986b12a.jpg?v=1661940676', 
  price: 240.99, 
  isPopular: true, 
  isRecommended: true),
];
}