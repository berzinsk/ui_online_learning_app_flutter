import 'package:flutter/material.dart';

import './leaderboard/leaderboard_details_header.dart';

class LeaderboardDetails extends StatelessWidget {
  const LeaderboardDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: const [
        LeaderboardDetailsHeader(),
      ],
    );
  }
}
