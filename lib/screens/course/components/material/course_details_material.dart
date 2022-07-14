import 'package:flutter/material.dart';

import '../../../../resources/constants/colors.dart';
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
          )),
      width: MediaQuery.of(context).size.width,
      child: CourseDetailsMaterialRow(),
    );
  }
}
