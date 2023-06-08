import 'package:flutter/material.dart';
import 'package:izipizi_shop/config/theme.dart';

class CustomNavigationBar extends StatefulWidget {
  int activePage;

  CustomNavigationBar({super.key, required this.activePage});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 56,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/');
              },
              icon: Icon(
                Icons.home,
                color:
                    widget.activePage == 0 ? AppColors.black : AppColors.gray,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/cart');
              },
              icon: Icon(
                Icons.shopping_cart,
                color:
                    widget.activePage == 1 ? AppColors.black : AppColors.gray,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/user');
              },
              icon: Icon(
                Icons.person,
                color:
                    widget.activePage == 2 ? AppColors.black : AppColors.gray,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
