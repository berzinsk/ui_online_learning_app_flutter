import 'package:flutter/material.dart';

import '../../resources/constants/colors.dart';
import '../../resources/constants/text_styles.dart';
import '../../resources/extensions/text_style.dart';

class MyLearningItem extends StatelessWidget {
  final String categoryName;
  final String courseName;
  final String imageName;
  final int videoCount;
  final double progress;
  final void Function() onStartCourse;

  const MyLearningItem({
    Key? key,
    required this.categoryName,
    required this.courseName,
    required this.imageName,
    required this.videoCount,
    required this.progress,
    required this.onStartCourse,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
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
              Flexible(
                flex: 4,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                  ),
                  child: Image(
                    height: 158,
                    fit: BoxFit.fitHeight,
                    image: AssetImage(
                      'asset/images/$imageName',
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
                        categoryName,
                        style: TextStyles.kTextXsRegular
                            .withColor(AppColors.kBrandColorPrimary),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Text(
                          courseName,
                          style: TextStyles.kTextSmMedium
                              .withColor(AppColors.kBrandColorAccentBlack),
                        ),
                      ),
                      Text(
                        '$videoCount videos',
                        style: TextStyles.kTextXsRegular
                            .withColor(AppColors.kBrandColorAccentBlack),
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyLearningProgressBar(progress: progress),
                          Text(
                            '${(progress * 100).toInt()}%',
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
        ),
        TextButton(
          style: ButtonStyle(
            overlayColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
                return Colors.transparent;
              },
            ),
            splashFactory: NoSplash.splashFactory,
          ),
          onPressed: onStartCourse,
          child: Text(
            'Start Course',
            style: TextStyles.kTextSmSemiBold
                .withColor(AppColors.kBrandColorPrimary),
          ),
        ),
      ],
    );
  }
}

class MyLearningProgressBar extends StatelessWidget {
  final double progress;

  const MyLearningProgressBar({
    Key? key,
    required this.progress,
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
          width: 116 * progress,
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
