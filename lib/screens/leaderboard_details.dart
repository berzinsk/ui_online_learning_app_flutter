import 'package:flutter/material.dart';

import './leaderboard/leaderboard_details_header.dart';
import '../resources/constants/colors.dart';

class LeaderboardDetails extends StatelessWidget {
  const LeaderboardDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const LeaderboardDetailsHeader(),
        Padding(
          padding: const EdgeInsets.fromLTRB(24, 32, 24, 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              LeaderboardBadge(icon: 'icon_crown_badge.png'),
              LeaderboardBadge(icon: 'icon_diamond_badge.png'),
              LeaderboardBadge(icon: 'icon_trophy_badge.png'),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              LeaderboardBadge(icon: 'icon_star_badge.png'),
              LeaderboardBadge(icon: 'icon_sword_badge.png'),
              SizedBox(width: 98),
            ],
          ),
        )
      ],
    );
  }
}

class LeaderboardBadge extends StatelessWidget {
  final String icon;

  const LeaderboardBadge({
    Key? key,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.kBrandColorPrimary100,
        borderRadius: BorderRadius.circular(64),
      ),
      child: Image(
        width: 50,
        height: 50,
        image: AssetImage('asset/images/$icon'),
      ),
    );
  }
}
