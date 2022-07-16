import 'package:flutter/material.dart';

import '../resources/constants/colors.dart';
import '../resources/constants/text_styles.dart';
import '../resources/extensions/text_style.dart';
import './dashboard/components/search_result_tag.dart';

class PurchaseCourse extends StatelessWidget {
  const PurchaseCourse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Order details',
              style: TextStyles.kTextXlSemiBold,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: const Image(
                      width: 70,
                      height: 70,
                      fit: BoxFit.fitWidth,
                      image: AssetImage('asset/images/trending_course_0.png'),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'UX/UI Design Course 2022',
                            style: TextStyles.kTextSmMedium
                                .withColor(AppColors.kBrandColorAccentBlack),
                          ),
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SearchResultTag(
                                child: Text(
                                  'Karlis Berzins',
                                  style: TextStyles.kTextXsRegular.withColor(
                                      AppColors.kBrandColorAccentBlack),
                                ),
                              ),
                              SearchResultTag(
                                child: Row(
                                  children: [
                                    Text(
                                      '4.7',
                                      style: TextStyles.kTextXsBold.withColor(
                                          AppColors.kSemanticDanger400),
                                    ),
                                    const Image(
                                      image: AssetImage(
                                          'asset/images/icon_star_search_filled.png'),
                                    ),
                                    Text(
                                      '(2349)',
                                      style: TextStyles.kTextXsRegular
                                          .withColor(
                                              AppColors.kBrandColorAccentBlack),
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                '\$49',
                                style: TextStyles.kDisplayXsRegular,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
