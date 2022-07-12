import 'package:flutter/material.dart';

import '../../../model/search_result.dart';

import '../../../resources/constants/colors.dart';
import '../../../resources/constants/text_styles.dart';
import '../../../resources/extensions/text_style.dart';
import './search_result_tag.dart';

class DashboardSearchResultItem extends StatelessWidget {
  final SearchResult searchResult;

  const DashboardSearchResultItem({
    Key? key,
    required this.searchResult,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, top: 20, right: 16),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            spreadRadius: 0,
            blurRadius: 20,
            offset: const Offset(0, 20),
          ),
        ],
      ),
      height: 152,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.kTextColorNeutral50,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              child: Image(
                width: MediaQuery.of(context).size.width * 0.368,
                height: 152,
                fit: BoxFit.fitHeight,
                image: AssetImage('asset/images/${searchResult.image}.png'),
              ),
            ),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 152,
                      child: Text(
                        searchResult.name,
                        maxLines: 2,
                        style: TextStyles.kTextSmMedium.withColor(
                          AppColors.kBrandColorAccentBlack,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SearchResultTag(
                          child: Text(
                            searchResult.author,
                            style: TextStyles.kTextXsRegular
                                .withColor(AppColors.kBrandColorAccentBlack),
                          ),
                        ),
                        Text(
                          '\$${searchResult.price}',
                          style: TextStyles.kDisplaySmMedium,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SearchResultTag(
                          child: Row(
                            children: [
                              Text(
                                '${searchResult.rating}',
                                style: TextStyles.kTextXsBold
                                    .withColor(AppColors.kSemanticDanger400),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 2),
                                child: Image(
                                  image: AssetImage(
                                      'asset/images/icon_star_search_filled.png'),
                                ),
                              ),
                              Text(
                                '${searchResult.reviews}',
                                style: TextStyles.kTextXsRegular.withColor(
                                    AppColors.kBrandColorAccentBlack),
                              ),
                            ],
                          ),
                        ),
                        if (searchResult.isBestSeller)
                          SearchResultTag(
                            shouldHighlight: true,
                            child: Text(
                              'Best Seller',
                              style: TextStyles.kTextXsRegular
                                  .withColor(AppColors.kBrandColorAccentBlack),
                            ),
                          ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
