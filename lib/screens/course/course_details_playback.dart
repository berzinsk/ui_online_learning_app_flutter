import 'package:flutter/material.dart';

import '../../resources/constants/colors.dart';
import '../../resources/constants/text_styles.dart';
import '../../resources/extensions/text_style.dart';

class CourseDetailsPlayback extends StatelessWidget {
  const CourseDetailsPlayback({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: const Image(
                  fit: BoxFit.fitHeight,
                  height: 443,
                  image: AssetImage(
                      'asset/images/image_course_playback_placeholder.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  'Understand how UI & UX implement it in everyday life',
                  style: TextStyles.kTextMdMedium
                      .withColor(AppColors.kBrandColorAccentBlack),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
