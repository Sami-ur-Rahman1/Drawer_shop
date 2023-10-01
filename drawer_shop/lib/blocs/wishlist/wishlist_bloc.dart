import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:drawer_shop/models/models.dart';
import 'package:drawer_shop/models/wishlist_model.dart';
import 'package:equatable/equatable.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  WishlistBloc() : super(WishlistLoading());
  @override
  Stream<WishlistState> mapEventToState(
    WishlistEvent event,
  ) async* {
    if (event is StartWishlist) {
      yield* _mapStartWishlistToState();
    }
    else if (event is AddWishlistProduct) {
      yield* _mapAddWishlistProductToState(event, state);
    }
    else if (event is RemoveWishlistProduct) {
      yield* _mapRemoveWishlistProductToState(event, state);
  }
  }
       Stream<WishlistState> _mapStartWishlistToState() async*{
     yield WishlistLoading();
     try {
      await Future<void>.delayed(Duration(seconds: 1));
      // emit(WishlistLoaded(wishlist: Wishlist(products: [])));
      yield const WishlistLoaded();
 ////////emit(const WishlistLoaded(wishlist: Wishlist(products: []);)    
  } catch (_) {}
 }

    Stream<WishlistState> _mapAddWishlistProductToState(
     AddWishlistProduct event,
      WishlistState state,
    ) async*{
      if (state is WishlistLoaded) {
      try {
        yield WishlistLoaded(wishlist: Wishlist(products: List.from(state.wishlist.products)..add(event.product),),);
    } catch (_) {}
  }
}
    Stream<WishlistState> _mapRemoveWishlistProductToState(
     RemoveWishlistProduct event,
     WishlistState state,
    ) async*{
      if (state is WishlistLoaded) {
      try {
        yield WishlistLoaded(wishlist: Wishlist(products: List.from(state.wishlist.products)..remove(event.product),),);
    } catch (_) {}
  }
} 
}
