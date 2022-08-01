import 'package:flutter/material.dart';

import './leaderboard/leaderboard_header.dart';
import './leaderboard/leaderboard_row_item.dart';
import '../model/leaderboard_data_item.dart';

const leaderboardData = [
  LeaderboardDataItem(
    imageName: 'normal_karlis_berzins',
    username: 'berzinsk',
    score: 5300,
    rank: 1,
  ),
  LeaderboardDataItem(
    imageName: 'normal_karlis_berzins',
    username: 'azizsuzy',
    score: 5002,
    rank: 2,
  ),
  LeaderboardDataItem(
    imageName: 'normal_karlis_berzins',
    username: 'saraaurea',
    score: 4879,
    rank: 3,
  ),
  LeaderboardDataItem(
    imageName: 'normal_karlis_berzins',
    username: 'siskosofia',
    score: 4735,
    rank: 4,
  ),
  LeaderboardDataItem(
    imageName: 'normal_karlis_berzins',
    username: 'annettdejana',
    score: 4673,
    rank: 5,
  ),
  LeaderboardDataItem(
    imageName: 'normal_karlis_berzins',
    username: 'kelseykaleb',
    score: 4543,
    rank: 6,
  ),
];

class Leaderboard extends StatelessWidget {
  final bottomList = leaderboardData.where((e) => e.rank > 3).toList();

  Leaderboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: LeaderboardHeader(),
        ),
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.fromLTRB(16, 0, 16, 32),
            itemBuilder: (context, index) {
              LeaderboardDataItem item = bottomList[index];

              return LeaderboardRowItem(
                imageName: item.imageName,
                username: item.username,
                score: item.score,
                rank: item.rank,
              );
            },
            itemCount: bottomList.length,
            separatorBuilder: (context, index) => const SizedBox(
              height: 16,
            ),
          ),
        ),
      ],
    );
  }
}
