import 'package:flutter/material.dart';

import './leaderboard/leaderboard_header.dart';

class Leaderboard extends StatelessWidget {
  const Leaderboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        LeaderboardHeader(),
      ],
    );
  }
}
