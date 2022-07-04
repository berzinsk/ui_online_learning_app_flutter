import 'package:flutter/material.dart';

import '../resources/constants/colors.dart';
import '../resources/constants/text_styles.dart';

class PrimaryButton extends StatelessWidget {
  final String title;
  final void Function() onClick;

  const PrimaryButton({Key? key, required this.title, required this.onClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onClick,
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(double.infinity, 56),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        backgroundColor: AppColors.kBrandColorPrimary,
        splashFactory: NoSplash.splashFactory,
      ),
      child: Text(
        title,
        style: TextStyles.kTextSmSemiBold,
      ),
    );
  }
}
