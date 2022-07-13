import 'package:flutter/material.dart';

import '../../../resources/constants/colors.dart';
import '../../../resources/constants/text_styles.dart';
import '../../../resources/extensions/text_style.dart';
import './course_details_tag.dart';

class CourseDetailsOverview extends StatelessWidget {
  const CourseDetailsOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Do you want to move your career to UI/UX Designer and start from scratch to advanced? Do you want to be a UI/UX Designer that is ready for work? Are you a UI/UX Designer who wants to add skills? This class suits you!',
          style: TextStyles.kTextXsRegular
              .withColor(AppColors.kBrandColorAccentBlack),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Row(
            children: [
              CourseDetailsTag(
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: const Image(
                        width: 24,
                        height: 24,
                        image: AssetImage(
                            'asset/images/normal_karlis_berzins.jpeg'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        'Karlis Berzins',
                        style: TextStyles.kTextXsRegular
                            .withColor(AppColors.kBrandColorPrimary),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
