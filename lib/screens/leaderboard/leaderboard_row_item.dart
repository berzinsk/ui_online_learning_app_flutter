import 'package:flutter/material.dart';

import '../../resources/constants/colors.dart';
import '../../resources/constants/text_styles.dart';
import '../../resources/extensions/text_style.dart';

class LeaderboardRowItem extends StatelessWidget {
  const LeaderboardRowItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerLeft,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 32),
          child: Container(
            height: 76,
            decoration: BoxDecoration(
              color: AppColors.kBrandColorPrimary100,
              borderRadius: const BorderRadius.horizontal(
                left: Radius.circular(64),
                right: Radius.circular(16),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 56, right: 26),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '@berzinsk',
                        style: TextStyles.kTextXsRegular
                            .withColor(AppColors.kBrandColorAccentBlack),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        '5002',
                        style: TextStyles.kTextXsBold
                            .withColor(AppColors.kBrandColorAccentBlack),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('asset/images/icon_arrow_up_thin.png'),
                      Text(
                        '4',
                        style: TextStyles.kTextSemiBold18,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              border: Border.all(
                width: 2,
                color: AppColors.kBrandColorPrimary,
              )),
          child: const CircleAvatar(
            radius: 38,
            backgroundImage:
                AssetImage('asset/images/normal_karlis_berzins.jpeg'),
          ),
        ),
      ],
    );
  }
}
