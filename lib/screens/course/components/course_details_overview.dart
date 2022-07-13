import 'package:flutter/material.dart';

import '../../../resources/constants/colors.dart';
import '../../../resources/constants/text_styles.dart';
import '../../../resources/extensions/text_style.dart';
import './course_details_overview_tags.dart';

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
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: CourseDetailsOverviewTags(),
        ),
      ],
    );
  }
}
