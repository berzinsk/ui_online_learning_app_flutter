import 'package:flutter/material.dart';

import '../../resources/constants/colors.dart';
import '../../resources/constants/text_styles.dart';

class LearningStatus extends StatelessWidget {
  final String iconName;
  final int number;
  final String name;

  const LearningStatus({
    Key? key,
    required this.iconName,
    required this.number,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.kTextColorNeutral50,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 0,
              blurRadius: 20,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 12,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 44,
              height: 44,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                color: AppColors.kBrandColorSecondary,
              ),
              child: Image(
                image: AssetImage('asset/images/$iconName.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Column(
                children: [
                  Text(
                    '$number',
                    style: TextStyles.kTextXlBold,
                  ),
                  Text(
                    name,
                    style: TextStyles.kTextSmBold,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
