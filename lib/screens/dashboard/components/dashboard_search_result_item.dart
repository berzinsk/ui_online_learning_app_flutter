import 'package:flutter/material.dart';

import '../../../resources/constants/colors.dart';
import '../../../resources/constants/text_styles.dart';
import '../../../resources/extensions/text_style.dart';
import './search_result_tag.dart';

class DashboardSearchResultItem extends StatelessWidget {
  const DashboardSearchResultItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, top: 20, right: 16),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            spreadRadius: 0,
            blurRadius: 20,
            offset: const Offset(0, 20),
          ),
        ],
      ),
      height: 152,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.kTextColorNeutral50,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            const ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              child: Image(
                width: 132,
                height: 152,
                fit: BoxFit.fitHeight,
                image: AssetImage('asset/images/search_result_image_0.png'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 152,
                      child: Text(
                        maxLines: 2,
                        'UX/UI Design Course 2022',
                        style: TextStyles.kTextSmMedium.withColor(
                          AppColors.kBrandColorAccentBlack,
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.yellow,
                      child: Text('Saample'),
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     SearchResultTag(
                    //       child: Text(
                    //         'Maja Indira',
                    //         style: TextStyles.kTextXsRegular
                    //             .withColor(AppColors.kBrandColorAccentBlack),
                    //       ),
                    //     ),
                    //     Text('\$49'),
                    //   ],
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
