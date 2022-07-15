import 'package:flutter/material.dart';

import '../../../../resources/constants/colors.dart';
import '../../../../resources/constants/text_styles.dart';
import '../../../../resources/extensions/text_style.dart';

class CourseDetailsReview extends StatelessWidget {
  const CourseDetailsReview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Customer Reviews',
          style: TextStyles.kTextMdMedium
              .withColor(AppColors.kBrandColorAccentBlack),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(40, 16, 40, 16),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            height: 64,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.kBrandColorPrimary),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Image(
                  image: AssetImage('asset/images/icon_star_filled.png'),
                ),
                const Image(
                  image: AssetImage('asset/images/icon_star_filled.png'),
                ),
                const Image(
                  image: AssetImage('asset/images/icon_star_filled.png'),
                ),
                const Image(
                  image: AssetImage('asset/images/icon_star_filled.png'),
                ),
                const Image(
                  image: AssetImage('asset/images/icon_star_filled.png'),
                ),
                Text(
                  '4.7 out of 5',
                  style: TextStyles.kTextXsRegular
                      .withColor(AppColors.kBrandColorPrimary),
                ),
              ],
            ),
          ),
        ),
        Text(
          '40 customer reviews',
          style: TextStyles.kTextSmBold,
        ),
        Column(
          children: [
            Row(
              children: [],
            ),
          ],
        ),
      ],
    );
  }
}
