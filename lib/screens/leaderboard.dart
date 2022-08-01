import 'package:flutter/material.dart';

import './leaderboard/leaderboard_header.dart';
import './leaderboard/leaderboard_row_item.dart';

class Leaderboard extends StatelessWidget {
  const Leaderboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: LeaderboardHeader(),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: const [
              LeaderboardRowItem(
                imageName: 'normal_karlis_berzins',
                username: 'berzinsk',
                score: 5002,
                rank: 4,
              ),
              SizedBox(height: 16),
              LeaderboardRowItem(
                imageName: 'normal_karlis_berzins',
                username: 'annettdejana',
                score: 4673,
                rank: 5,
              ),
              SizedBox(height: 16),
              LeaderboardRowItem(
                imageName: 'normal_karlis_berzins',
                username: 'kelseykaleb',
                score: 4543,
                rank: 6,
              ),
            ],
          ),
        )
      ],
    );
  }
}
