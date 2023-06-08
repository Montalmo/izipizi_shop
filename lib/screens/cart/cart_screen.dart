import 'package:flutter/material.dart';

import '../../config/theme.dart';
import '../../widgets/widgets.dart';
import '../../models/models.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  static const String routeName = '/cart';

  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: routeName),
      builder: (_) => CartScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final List products = Product.heroProducts;

    return Scaffold(
      appBar: const CustomAppBar(isMainAppBar: false, title: 'Корзина'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Text(
                  'Корзина',
                  style: AppTextStyles.h2Title,
                ),
                const SizedBox(
                  width: 4.0,
                ),
                Text(
                  '2',
                  style: AppTextStyles.h4Body,
                )
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            BusketProductCard(
              product: products[0],
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(
        activePage: 1,
      ),
    );
  }
}
