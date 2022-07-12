import 'package:flutter/material.dart';

import '../../../resources/constants/colors.dart';
import '../../../resources/constants/text_styles.dart';
import '../../../resources/extensions/text_style.dart';

class CourseDetailTabButton extends StatelessWidget {
  final String title;
  final bool isActive;

  const CourseDetailTabButton({
    Key? key,
    required this.title,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
        backgroundColor: isActive
            ? AppColors.kBrandColorPrimary
            : AppColors.kTextColorNeutral50,
        side: BorderSide(color: AppColors.kBrandColorPrimary),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      onPressed: (() {}),
      child: Text(
        title,
        style: TextStyles.kTextSmSemiBold.withColor(isActive
            ? AppColors.kTextColorNeutral50
            : AppColors.kBrandColorPrimary),
      ),
    );
  }
}
