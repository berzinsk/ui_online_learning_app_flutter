import 'package:flutter/material.dart';

import '../resources/constants/colors.dart';
import '../resources/constants/text_styles.dart';
import '../resources/extensions/text_style.dart';
import './my_learning/learning_status.dart';

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

class MyLearningItem extends StatelessWidget {
  const MyLearningItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 158,
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
      child: Row(
        children: [
          const Flexible(
            flex: 4,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              child: Image(
                height: 158,
                fit: BoxFit.fitHeight,
                image: AssetImage(
                  'asset/images/search_result_image_0.png',
                ),
              ),
            ),
          ),
          Flexible(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Design',
                    style: TextStyles.kTextXsRegular
                        .withColor(AppColors.kBrandColorPrimary),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4),
                    child: Text(
                      'UX/UI Design Course 2022',
                      style: TextStyles.kTextSmMedium
                          .withColor(AppColors.kBrandColorAccentBlack),
                    ),
                  ),
                  Text(
                    '15 videos',
                    style: TextStyles.kTextXsRegular
                        .withColor(AppColors.kBrandColorAccentBlack),
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const MyLearningProgressBar(),
                      Text(
                        '90%',
                        style: TextStyles.kTextXsMedium
                            .withColor(AppColors.kBrandColorAccentBlack),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyLearningProgressBar extends StatelessWidget {
  const MyLearningProgressBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 116,
          height: 6,
          decoration: BoxDecoration(
            color: AppColors.kBrandColorPrimary.withOpacity(0.1),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        Container(
          width: 116 * 0.9,
          height: 6,
          decoration: BoxDecoration(
            color: AppColors.kBrandColorPrimary,
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ],
    );
  }
}
