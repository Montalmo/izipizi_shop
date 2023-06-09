part of 'wishlist_bloc.dart';

abstract class WishlistEvent extends Equatable {
  const WishlistEvent();

  @override
  List<Object> get props => [];
}

class WishlistStart extends WishlistEvent {
  final Wishlist wishlist;

  WishlistStart({required this.wishlist});
}

class AddWishlistProduct extends WishlistEvent {
  final Product product;

  const AddWishlistProduct({required this.product});

  @override
  List<Object> get props => [
        product,
      ];
}

class RemoveWishlistProduct extends WishlistEvent {
  final Product product;

  const RemoveWishlistProduct({required this.product});

  @override
  List<Object> get props => [
        product,
      ];
}
