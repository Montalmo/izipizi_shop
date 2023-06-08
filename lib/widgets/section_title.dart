import 'package:flutter/material.dart';
import '../config/theme.dart';

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          title,
          style: AppTextStyles.h2Title,
        ),
      ),
    );
  }
}
