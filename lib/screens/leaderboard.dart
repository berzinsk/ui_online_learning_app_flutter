import 'package:flutter/material.dart';

import './leaderboard/leaderboard_header.dart';
import './leaderboard/leaderboard_row_item.dart';
import '../model/leaderboard_data_item.dart';

const leaderboardData = [
  LeaderboardDataItem(
    imageName: 'normal_karlis_berzins.jpeg',
    username: 'berzinsk',
    score: 5300,
    rank: 1,
  ),
  LeaderboardDataItem(
    imageName: 'normal_karlis_berzins.jpeg',
    username: 'azizsuzy',
    score: 5002,
    rank: 2,
  ),
  LeaderboardDataItem(
    imageName: 'normal_karlis_berzins.jpeg',
    username: 'saraaurea',
    score: 4879,
    rank: 3,
  ),
  LeaderboardDataItem(
    imageName: 'normal_karlis_berzins.jpeg',
    username: 'siskosofia',
    score: 4735,
    rank: 4,
  ),
  LeaderboardDataItem(
    imageName: 'normal_karlis_berzins.jpeg',
    username: 'annettdejana',
    score: 4673,
    rank: 5,
  ),
  LeaderboardDataItem(
    imageName: 'normal_karlis_berzins.jpeg',
    username: 'kelseykaleb',
    score: 4543,
    rank: 6,
  ),
];

class Leaderboard extends StatelessWidget {
  final topList = leaderboardData.where((e) => e.rank < 4).toList();
  final bottomList = leaderboardData.where((e) => e.rank > 3).toList();

  Leaderboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: LeaderboardHeader(standings: topList),
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
