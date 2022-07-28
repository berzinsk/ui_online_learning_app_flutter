import 'package:flutter/material.dart';

import '../resources/constants/colors.dart';
import '../resources/constants/text_styles.dart';
import '../resources/extensions/text_style.dart';
import './my_learning/learning_status.dart';
import './my_learning/my_learning_item.dart';

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
            ),
            const MyLearningItem(),
          ],
        ),
      ),
    );
  }
}
