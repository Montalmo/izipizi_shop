import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:izipizi_shop/models/models.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  WishlistBloc() : super(WishlistLoading()) {
    on<WishlistStart>(_onStartWishlist);
    on<AddWishlistProduct>(_onAddWishlistProduct);
    on<RemoveWishlistProduct>(_onRemoveWishlistProdu);
  }

  Future<void> _onStartWishlist(
      WishlistStart event, Emitter<WishlistState> emiter) async {
    emit(
      WishlistLoaded(wishlist: event.wishlist),
    );
  }

  Future<void> _onAddWishlistProduct(
      AddWishlistProduct event, Emitter<WishlistState> emiter) async {
    final state = this.state;
    if (state is WishlistLoaded) {
      if (!Wishlist(products: state.wishlist.products)
          .products
          .contains(event.product)) {
        emit(
          
          WishlistLoaded(
            wishlist: Wishlist(
              products: List.from(
                state.wishlist.products..add(event.product),
              ),
            ),
          ),
        );
      }
    }
  }

  Future<void> _onRemoveWishlistProdu(
      RemoveWishlistProduct event, Emitter<WishlistState> emiter) async {
    final state = this.state;
    if (state is WishlistLoaded) {
      if (Wishlist(products: state.wishlist.products)
          .products
          .contains(event.product)) {
        emit(
          WishlistLoaded(
            wishlist: Wishlist(
              products: List.from(
                state.wishlist.products
                  ..removeWhere((element) =>
                      element.productId == event.product.productId),
              ),
            ),
          ),
        );
      }
    }
  }
}
