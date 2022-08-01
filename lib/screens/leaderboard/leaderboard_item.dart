import 'package:flutter/material.dart';

import '../../resources/constants/colors.dart';
import '../../resources/constants/text_styles.dart';
import '../../resources/extensions/text_style.dart';
import '../../model/leaderboard_data_item.dart';

class LeaderboardItem extends StatelessWidget {
  final LeaderboardDataItem item;

  const LeaderboardItem({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '${item.rank}',
          style: TextStyles.kTextBold18,
        ),
        if (item.rank == 2) Image.asset('asset/images/icon_arrow_up.png'),
        if (item.rank == 1)
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Image.asset('asset/images/icon_crown.png'),
          ),
        if (item.rank == 3) Image.asset('asset/images/icon_arrow_up.png'),
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
                'asset/images/${item.imageName}',
              ),
            ),
          ),
        ),
        Text(
          '@${item.username}',
          style: TextStyles.kTextXsRegular
              .withColor(AppColors.kTextColorNeutral50),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 2),
          child: Text(
            '${item.score}',
            style:
                TextStyles.kTextXsBold.withColor(AppColors.kTextColorNeutral50),
          ),
        ),
      ],
    );
  }
}
