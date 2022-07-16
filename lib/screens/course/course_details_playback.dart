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
                padding: const EdgeInsets.only(top: 16, bottom: 20),
                child: Text(
                  'Understand how UI & UX implement it in everyday life',
                  style: TextStyles.kTextMdMedium
                      .withColor(AppColors.kBrandColorAccentBlack),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  CourseDetailsPlaybackButton(
                    name: 'Discussion',
                    iconName: 'icon_message_question',
                    enabled: true,
                  ),
                  CourseDetailsPlaybackButton(
                    name: 'Download',
                    iconName: 'icon_download',
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: const Image(
                        width: 40,
                        height: 40,
                        image: AssetImage(
                            'asset/images/normal_karlis_berzins.jpeg'),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border:
                                Border.all(color: AppColors.kBrandColorPrimary),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Flexible(
                                child: Text(
                                  'Hey, It\'s fantastic to take this course. I\'m a marketing student who is interested in this field. Do we have to know code in UI/UX?',
                                  style: TextStyles.kTextSmRegular,
                                ),
                              ),
                              Text(
                                '8:30 AM',
                                style: TextStyles.kTextXsRegular,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CourseDetailsPlaybackButton extends StatelessWidget {
  final String name;
  final String iconName;
  final bool enabled;

  const CourseDetailsPlaybackButton({
    Key? key,
    required this.name,
    required this.iconName,
    this.enabled = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        splashFactory: NoSplash.splashFactory,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        backgroundColor: enabled ? AppColors.kBrandColorPrimary : Colors.white,
        side: BorderSide(color: AppColors.kBrandColorPrimary),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        minimumSize: const Size(100, 56),
      ),
      onPressed: () {},
      child: Row(
        children: [
          Text(
            name,
            style: TextStyles.kTextMdSemiBold.withColor(enabled
                ? AppColors.kTextColorNeutral50
                : AppColors.kBrandColorPrimary),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Image(
              color: enabled
                  ? AppColors.kTextColorNeutral50
                  : AppColors.kBrandColorPrimary,
              image: AssetImage('asset/images/$iconName.png'),
            ),
          ),
        ],
      ),
    );
  }
}
