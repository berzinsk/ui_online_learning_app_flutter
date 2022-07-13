import 'package:flutter/material.dart';

import '../../../resources/constants/colors.dart';

class CourseDetailsTag extends StatelessWidget {
  final Widget child;

  const CourseDetailsTag({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.kBrandColorPrimary,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: child,
    );
  }
}
