import 'package:flutter/material.dart';

import '../../../../resources/constants/colors.dart';
import '../../../../resources/constants/text_styles.dart';

class CourseDetailsReviewProgress extends StatelessWidget {
  final int stars;
  final int percentage;
  final bool showBottomPadding;

  const CourseDetailsReviewProgress({
    Key? key,
    required this.stars,
    required this.percentage,
    this.showBottomPadding = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: showBottomPadding ? 16 : 0),
      child: Row(
        children: [
          SizedBox(
            width: 50,
            child: Text(
              stars == 1 ? '$stars Star' : '$stars Stars',
              style: TextStyles.kTextSmBold,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 18),
              child: Stack(
                children: [
                  Container(
                    height: 10,
                    decoration: BoxDecoration(
                      color: AppColors.kNeutralColor200,
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  Container(
                    height: 10,
                    width: 2.43 * percentage,
                    decoration: BoxDecoration(
                      color: AppColors.kSemanticWarning500,
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 36,
            child: Text(
              '$percentage%',
              style: TextStyles.kTextSmMedium,
            ),
          ),
        ],
      ),
    );
  }
}
