import 'package:flutter/material.dart';

import '../resources/constants/colors.dart';
import '../resources/constants/text_styles.dart';
import '../resources/extensions/text_style.dart';

class MyLearning extends StatelessWidget {
  const MyLearning({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Learning',
              style: TextStyles.kTextSmSemiBold
                  .withColor(AppColors.kBrandColorAccentBlack),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 20),
              child: Row(
                children: const [
                  LearningStatus(
                    iconName: 'icon_in_progress',
                    number: 6,
                    name: 'In Progress',
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  LearningStatus(
                    iconName: 'icon_checkmark',
                    number: 5,
                    name: 'Finished',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

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
