import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:izipizi_shop/blocs/wishlist/wishlist_bloc.dart';

import '../../widgets/widgets.dart';
import '../../models/product_model.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  static const String routeName = '/wishlist';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => WishlistScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(isMainAppBar: false, title: 'Wishlist'),
      bottomNavigationBar: CustomNavigationBar(
        activePage: 3,
      ),
      body: BlocBuilder<WishlistBloc, WishlistState>(
        builder: (context, state) {
          if (state is WishlistLoading) {
            return CircularProgressIndicator();
          }
          if (state is WishlistLoaded) {
            return GridView.builder(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 16.0,
                mainAxisSpacing: 16.0,
                crossAxisCount: 2,
                childAspectRatio: .725,
              ),
              itemCount: state.wishlist.products.length,
              itemBuilder: (context, index) {
                return ProducrCard(
                  product:  state.wishlist.products[index],
                );
              },
            );
          } else {
            return Center(
              child: Text('Somesing going wrong'),
            );
          }
        },
      ),
    );
  }
}
