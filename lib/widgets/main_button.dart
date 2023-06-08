import 'package:flutter/material.dart';

import '../config/theme.dart';

class MainButton extends StatelessWidget {
  final String title;
  final VoidCallback onClickCallBack;

  const MainButton({
    super.key,
    required this.title,
    required this.onClickCallBack,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 50.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14.0),
            gradient: AppGradients.cyanGradient,
          ),
          child: Center(
            child: Text(
              title,
              style: AppTextStyles.buttonTitle.copyWith(
                color: AppColors.white,
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onClickCallBack,
              borderRadius: BorderRadius.circular(14.0),
            ),
          ),
        ),
      ],
    );
  }
}