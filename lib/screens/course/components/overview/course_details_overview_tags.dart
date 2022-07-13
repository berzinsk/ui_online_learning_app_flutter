import 'package:flutter/material.dart';

import '../../../../resources/constants/colors.dart';
import '../../../../resources/constants/text_styles.dart';
import '../../../../resources/extensions/text_style.dart';
import 'course_details_tag.dart';

class CourseDetailsOverviewTags extends StatelessWidget {
  const CourseDetailsOverviewTags({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CourseDetailsTag(
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: const Image(
                  width: 24,
                  height: 24,
                  image: AssetImage('asset/images/normal_karlis_berzins.jpeg'),
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
        CourseDetailsTag(
          child: Row(
            children: [
              Image(
                color: AppColors.kSemanticWarning500,
                image: const AssetImage(
                    'asset/images/icon_star_search_filled.png'),
              ),
              Image(
                color: AppColors.kSemanticWarning500,
                image: const AssetImage(
                    'asset/images/icon_star_search_filled.png'),
              ),
              Image(
                color: AppColors.kSemanticWarning500,
                image: const AssetImage(
                    'asset/images/icon_star_search_filled.png'),
              ),
              Image(
                color: AppColors.kSemanticWarning500,
                image: const AssetImage(
                    'asset/images/icon_star_search_filled.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4),
                child: Text(
                  '4.7',
                  style: TextStyles.kTextXsRegular
                      .withColor(AppColors.kBrandColorPrimary),
                ),
              )
            ],
          ),
        ),
        CourseDetailsTag(
          child: Row(
            children: [
              const Image(
                image: AssetImage('asset/images/icon_globe.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  'English',
                  style: TextStyles.kTextXsRegular
                      .withColor(AppColors.kBrandColorPrimary),
                ),
              ),
            ],
          ),
        ),
        const CourseDetailsTag(
          child: Image(
            image: AssetImage('asset/images/icon_share.png'),
          ),
        ),
      ],
    );
  }
}
