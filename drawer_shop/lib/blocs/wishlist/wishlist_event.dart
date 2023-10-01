part of 'wishlist_bloc.dart';

abstract class WishlistEvent extends Equatable {
  const WishlistEvent();

  @override
  List<Object> get props => [];
}

///////////////////// Start Wishlist Class///////////////////
class StartWishlist extends WishlistEvent {}

///////////////////// Add Wishlist Product Class///////////////////
class AddWishlistProduct extends WishlistEvent {
  final Product product;

  const AddWishlistProduct(this.product);

   @override
   List<Object> get props => [product];
}

///////////////////// Remove Wishlist Product Class///////////////////
class RemoveWishlistProduct extends WishlistEvent {
  final Product product;

  const RemoveWishlistProduct(this.product);

   @override
   List<Object> get props => [product];
}
