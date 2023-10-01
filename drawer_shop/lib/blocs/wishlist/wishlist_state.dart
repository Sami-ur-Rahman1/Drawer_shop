part of 'wishlist_bloc.dart';

abstract class WishlistState extends Equatable {
  const WishlistState();
  
  @override
  List<Object> get props => [];
}

///////////////////// Loading Class///////////////////
// class WishlistLoading extends WishlistState {}
////////// Some thing I added is WishlistInitial
class WishlistLoading extends WishlistState {}



///////////////////// Loaded Class///////////////////
class WishlistLoaded extends WishlistState {
  final Wishlist wishlist;

  const WishlistLoaded({this.wishlist = const Wishlist()});

    @override
  List<Object> get props => [wishlist];
}

///////////////////// Error Class///////////////////
class WishlistError extends WishlistState {}
