import 'package:flutter/material.dart';

import '../../resources/constants/colors.dart';
import '../../resources/constants/text_styles.dart';
import '../../resources/extensions/text_style.dart';
import './leaderboard_item.dart';
import '../../model/leaderboard_data_item.dart';

class LeaderboardHeader extends StatelessWidget {
  final List<LeaderboardDataItem> standings;

  const LeaderboardHeader({
    Key? key,
    required this.standings,
  }) : super(key: key);

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
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: LeaderboardItem(
                      item: standings[1],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 48),
                    child: LeaderboardItem(
                      item: standings[0],
                    ),
                  ),
                  LeaderboardItem(
                    item: standings[2],
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
