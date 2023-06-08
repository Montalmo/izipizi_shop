import 'package:flutter/material.dart';

import '../config/theme.dart';

class AdditionalButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressCallback;

  const AdditionalButton({
    super.key,
    required this.title,
    required this.onPressCallback,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Stack(
        children: [
          Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.0),
              border: Border.all(width: 2, color: AppColors.blue),
            ),
            child: Center(
              child: Text(
                title,
                style: AppTextStyles.buttonTitle.copyWith(
                  color: AppColors.blue,
                ),
              ),
            ),
          ),
          Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: onPressCallback,
              borderRadius: BorderRadius.circular(14.0),
              splashColor: AppColors.blue.withOpacity(.4),
            ),
          ),
        ],
      ),
    );
  }
}