import 'package:flutter/material.dart';

import '../../../../resources/constants/colors.dart';
import '../../../../resources/constants/text_styles.dart';
import '../../../../resources/extensions/text_style.dart';

class CourseDetailsMaterialRow extends StatelessWidget {
  const CourseDetailsMaterialRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Understand how UI & UX implement it in everyday life',
                style: TextStyles.kTextXsSemiBold,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 2),
                child: Text(
                  'Video 21:00 mins',
                  style: TextStyles.kTextXsRegular
                      .withColor(AppColors.kBrandColorAccentBlack),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Container(
            width: 56,
            height: 56,
            decoration: BoxDecoration(
              color: AppColors.kBrandColorSecondary,
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Image(
              image: AssetImage('asset/images/icon_play.png'),
            ),
          ),
        )
      ],
    );
  }
}
