import 'package:flutter/material.dart';

import './leaderboard/leaderboard_header.dart';
import './leaderboard/leaderboard_row_item.dart';

class Leaderboard extends StatelessWidget {
  const Leaderboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: LeaderboardHeader(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: LeaderboardRowItem(),
        ),
      ],
    );
  }
}
