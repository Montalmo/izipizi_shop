import 'package:equatable/equatable.dart';

import '../models/models.dart';

class Wishlist extends Equatable {
  List<Product> products;

  Wishlist({
    this.products = const <Product>[],
  });

  @override
  List<Object?> get props => [
        products,
      ];
}
