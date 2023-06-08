import 'package:flutter/material.dart';

import '../config/theme.dart';

class SqButton extends StatelessWidget {
  final IconData? buttonIcon;
  final VoidCallback onTapCallBack;
  final double side;
  final double borderRadius;

  const SqButton({
    super.key,
    required this.side,
    required this.borderRadius,
    required this.buttonIcon,
    required this.onTapCallBack,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: side,
        height: side,
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.gray),
          borderRadius: BorderRadius.circular(
            borderRadius,
          ),
        ),
        child: Center(
          child: Icon(buttonIcon),
        ),
      ),
      SizedBox(
        width: side,
        height: side,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: AppColors.blue.withOpacity(.4),
            borderRadius: BorderRadius.circular(
              borderRadius,
            ),
            onTap: onTapCallBack,
          ),
        ),
      )
    ]);
  }
}
