import 'package:flutter/material.dart';

import '../resources/constants/colors.dart';
import '../resources/constants/text_styles.dart';
import '../resources/extensions/text_style.dart';

class Leaderboard extends StatelessWidget {
  const Leaderboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
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
        ),
      ],
    );
  }
}

class LeaderboardItem extends StatelessWidget {
  final int rank;
  final String imageName;
  final String username;
  final int score;

  const LeaderboardItem({
    Key? key,
    required this.rank,
    required this.imageName,
    required this.username,
    required this.score,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '$rank',
          style: TextStyles.kTextBold18,
        ),
        if (rank == 2) Image.asset('asset/images/icon_arrow_up.png'),
        if (rank == 1)
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Image.asset('asset/images/icon_crown.png'),
          ),
        if (rank == 3) Image.asset('asset/images/icon_arrow_up.png'),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                width: 2,
                color: AppColors.kTextColorNeutral50,
              ),
            ),
            width: 100,
            height: 100,
            child: CircleAvatar(
              backgroundImage: AssetImage(
                'asset/images/$imageName',
              ),
            ),
          ),
        ),
        Text(
          '@$username',
          style: TextStyles.kTextXsRegular
              .withColor(AppColors.kTextColorNeutral50),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 2),
          child: Text(
            '$score',
            style:
                TextStyles.kTextXsBold.withColor(AppColors.kTextColorNeutral50),
          ),
        ),
      ],
    );
  }
}
