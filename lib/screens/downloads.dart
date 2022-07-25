import 'package:flutter/material.dart';

import '../resources/constants/colors.dart';
import '../resources/constants/text_styles.dart';
import '../resources/extensions/text_style.dart';
import '../components/primary_button.dart';

class Downloads extends StatelessWidget {
  const Downloads({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.fromLTRB(16, 32, 16, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Downloads',
              style: TextStyles.kTextSmSemiBold
                  .withColor(AppColors.kBrandColorAccentBlack),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '100 MB out of 32 GB used',
                    style: TextStyles.kTextXsRegular
                        .withColor(AppColors.kBrandColorAccentBlack),
                  ),
                  Text(
                    'Delete All',
                    style: TextStyles.kTextXsBold
                        .withColor(AppColors.kBrandColorPrimary),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(16, 16, 32, 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: AppColors.kBrandColorPrimary),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.472,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'UX/UI Design Course 2022',
                          style: TextStyles.kTextSmBold
                              .withColor(AppColors.kBrandColorAccentBlack),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Maja Indira',
                                style: TextStyles.kTextXsRegular
                                    .withColor(AppColors.kNeutralColor500),
                              ),
                              Text(
                                '100 MB',
                                style: TextStyles.kTextXsBold
                                    .withColor(AppColors.kNeutralColor500),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Image(
                    image: AssetImage('asset/images/icon_delete.png'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: PrimaryButton(
                title: 'Find more to download',
                onClick: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
