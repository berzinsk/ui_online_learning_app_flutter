import 'package:flutter/material.dart';

import '../../resources/constants/colors.dart';
import '../../resources/constants/text_styles.dart';
import '../../resources/extensions/text_style.dart';
import './leaderboard_item.dart';

class LeaderboardHeader extends StatelessWidget {
  const LeaderboardHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 32, 16, 20),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Leaderboard',
              style: TextStyles.kTextSmSemiBold,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Week',
                        style: TextStyles.kTextSmBold
                            .withColor(AppColors.kTextColorNeutral50),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          'Month',
                          style: TextStyles.kTextSmBold
                              .withColor(AppColors.kBrandColorSecondary),
                        ),
                      ),
                      Text(
                        'Year',
                        style: TextStyles.kTextSmBold
                            .withColor(AppColors.kBrandColorSecondary),
                      ),
                    ],
                  ),
                  Text(
                    'My Rank',
                    style: TextStyles.kTextXlBold
                        .withColor(AppColors.kTextColorNeutral50),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(bottom: 4),
                    child: LeaderboardItem(
                      rank: 2,
                      imageName: 'normal_karlis_berzins.jpeg',
                      username: 'berzinsk',
                      score: 5002,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 48),
                    child: LeaderboardItem(
                      rank: 1,
                      imageName: 'normal_karlis_berzins.jpeg',
                      username: 'berzinsk',
                      score: 5300,
                    ),
                  ),
                  LeaderboardItem(
                    rank: 3,
                    imageName: 'normal_karlis_berzins.jpeg',
                    username: 'berzinsk',
                    score: 4879,
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
