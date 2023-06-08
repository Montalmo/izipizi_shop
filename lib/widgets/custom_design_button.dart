import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../config/theme.dart';

class CustomDesignButton extends StatelessWidget {
  final VoidCallback onClickCallback;

  const CustomDesignButton({
    super.key,
    required this.onClickCallback,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36.0,
      width: 129.0,
      child: Stack(
        children: [
          Container(
            height: 36.0,
            width: 129.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.0),
              color: AppColors.black.withOpacity(.3),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Cвій дизайн',
                  style: AppTextStyles.h4Title,
                ),
                const SizedBox(
                  width: 4.0,
                ),
                SvgPicture.asset('assets/svg/brush_icon.svg')
              ],
            ),
          ),
          Material(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(14.0),
            child: InkWell(
              onTap: onClickCallback,
              borderRadius: BorderRadius.circular(14.0),
              splashColor: AppColors.blue.withOpacity(.4),
            ),
          )
        ],
      ),
    );
  }
}
