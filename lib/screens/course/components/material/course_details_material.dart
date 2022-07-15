import 'package:flutter/material.dart';

import '../../../../resources/constants/colors.dart';
import '../../../../resources/constants/text_styles.dart';
import '../../../../resources/extensions/text_style.dart';
import './course_details_material_row.dart';

class CourseDetailsMaterial extends StatelessWidget {
  const CourseDetailsMaterial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: AppColors.kBrandColorPrimary,
        ),
      ),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Introduction to UX',
                    style: TextStyles.kTextMdBold
                        .withColor(AppColors.kBrandColorAccentBlack),
                  ),
                  Text(
                    '5 videos',
                    style: TextStyles.kTextSmRegular,
                  ),
                ],
              ),
              const Image(
                image: AssetImage('asset/images/icon_arrow_down.png'),
              ),
            ],
          ),
          Container(
            height: 380,
            padding: const EdgeInsets.fromLTRB(8, 16, 8, 0),
            child: ListView.separated(
              itemBuilder: ((context, index) {
                return const CourseDetailsMaterialRow();
              }),
              separatorBuilder: ((context, index) {
                return const SizedBox(height: 16);
              }),
              itemCount: 5,
            ),
          ),
        ],
      ),
    );
  }
}
