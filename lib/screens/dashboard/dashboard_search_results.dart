import 'package:flutter/material.dart';

import './components/dasboard_search_page_search_box.dart';

class DashboardSearchResults extends StatelessWidget {
  const DashboardSearchResults({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SearchPageSearchBox(),
          ],
        ),
      ),
    );
  }
}
