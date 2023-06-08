import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:izipizi_shop/config/theme.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.isMainAppBar = false,
    this.isReviewAppBar = false,
    this.title = '',
  });

  final bool isMainAppBar;
  final bool isReviewAppBar;
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(
        color: AppColors.blue,
      ),
      backgroundColor: Colors.white,
      elevation: 4,
      shadowColor: Color.fromRGBO(255, 255, 255, .32),
      title: isMainAppBar
          ? SvgPicture.asset('assets/svg/title_logo.svg')
          : Text(
              title,
              style: Theme.of(context).textTheme.titleSmall,
            ),
      centerTitle: true,
      actions: [
        isReviewAppBar
            ? IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/svg/priperties_icon.svg'),
              )
            : IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/wishlist');
                },
                icon: SvgPicture.asset('assets/svg/heart_icon.svg'),
              ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
