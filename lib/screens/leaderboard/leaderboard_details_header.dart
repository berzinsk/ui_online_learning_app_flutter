import 'package:flutter/material.dart';

import '../../resources/constants/colors.dart';
import '../../resources/constants/text_styles.dart';
import '../../resources/extensions/text_style.dart';

class LeaderboardDetailsHeader extends StatelessWidget {
  const LeaderboardDetailsHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 32, 16, 32),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
        gradient: LinearGradient(
          colors: [
            AppColors.kBrandColorDark,
            AppColors.kBrandLight,
          ],
        ),
      ),
      child: SafeArea(
        bottom: false,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Image.asset(
                  'asset/images/arrow_left_brand.png',
                  color: AppColors.kTextColorNeutral50,
                ),
                const SizedBox(width: 8),
                Text(
                  'Badges',
                  style: TextStyles.kTextSmMedium
                      .withColor(AppColors.kTextColorNeutral50),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                    color: AppColors.kTextColorNeutral50,
                    width: 2,
                  ),
                ),
                child: const CircleAvatar(
                  radius: 98,
                  backgroundImage:
                      AssetImage('asset/images/normal_karlis_berzins.jpeg'),
                ),
              ),
            ),
            Text(
              'Karlis Berzins',
              style: TextStyles.kTextXlRegular
                  .withColor(AppColors.kTextColorNeutral50),
            ),
            const SizedBox(height: 4),
            Text(
              '@berzinsk',
              style: TextStyles.kTextMdMedium,
            ),
          ],
        ),
      ),
    );
  }
}
