import 'package:flutter/material.dart';

import './components/dashboard_header.dart';
import './components/featured_section.dart';
import './components/trending_section.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            DashboardHeader(),
            FeaturedSection(),
            TrendingSection(),
          ],
        ),
      ),
    );
  }
}
