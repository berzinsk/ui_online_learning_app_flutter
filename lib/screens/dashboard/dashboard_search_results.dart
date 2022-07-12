import 'package:flutter/material.dart';

import './components/dasboard_search_page_search_box.dart';
import './components/dashboard_search_result_row.dart';
import './components/dashboard_search_result_item.dart';
import '../../model/search_result.dart';

const searchResults = [
  SearchResult(
    name: 'UX/UI Design Course 2022',
    author: 'Maja Indira',
    price: 49,
    rating: 4.6,
    reviews: 2349,
    image: 'search_result_image_0',
    isBestSeller: true,
  ),
  SearchResult(
    name: 'Salesforce in UX Design for 2022',
    author: 'Severin Anže',
    price: 45,
    rating: 4.6,
    reviews: 2384,
    image: 'search_result_image_1',
  ),
  SearchResult(
    name: 'Create Website UX/UI in Figma 2022',
    author: 'Yoni Saundra',
    price: 49,
    rating: 4.7,
    reviews: 2349,
    image: 'search_result_image_2',
  ),
  SearchResult(
    name: 'Salesforce in UX Design for 2022',
    author: 'Felim Matilde',
    price: 45,
    rating: 4.6,
    reviews: 2384,
    image: 'search_result_image_3',
  ),
];

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
                return DashboardSearchResultItem(
                  searchResult: searchResults[index],
                );
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
