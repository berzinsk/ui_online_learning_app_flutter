// ignore_for_file: prefer_adjacent_string_concatenation, prefer_interpolation_to_compose_strings

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
      crossAxisAlignment: CrossAxisAlignment.start,
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
        Text(
          'Last Updated : January 2022',
          style: TextStyles.kTextXsRegular
              .withColor(AppColors.kBrandColorAccentBlack),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Text(
            'Subtitle : Yes',
            style: TextStyles.kTextXsRegular
                .withColor(AppColors.kBrandColorAccentBlack),
          ),
        ),
        Text(
          'In this class, you will study UI/UX Design from the beginning to being a proficient and working project to make you as UI/UX Designer ready to work.\n\n' +
              'In this class, we will work on a case study Online Class Mobile Application, in learning all the essential elements inside UI/UX Design.\n\n' +
              'After studying this class, you will be able to make:\n\n' +
              '1. Design Thinking\n' +
              '2. User Flow\n' +
              '3. Wireframe\n' +
              '4. UI Style Guide\n' +
              '5. UI/UX Design\n' +
              '6. UI/UX Prototype\n' +
              '7. User Research Documents\n' +
              '8. UX Case Study\n',
          style: TextStyles.kTextXsRegular
              .withColor(AppColors.kBrandColorAccentBlack),
        ),
      ],
    );
  }
}
