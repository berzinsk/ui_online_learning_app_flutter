import 'package:flutter/material.dart';

import './components/dasboard_search_page_search_box.dart';
import './components/dashboard_search_result_row.dart';
import './components/dashboard_search_result_item.dart';

class DashboardSearchResults extends StatelessWidget {
  const DashboardSearchResults({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 16, top: 16, right: 16),
            child: SearchPageSearchBox(),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 4, 0),
            child: DashboardSearchResultRow(),
          ),
          Expanded(
            child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return const DashboardSearchResultItem();
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(height: 20),
              itemCount: 4,
            ),
          ),
        ],
      ),
    );
  }
}
