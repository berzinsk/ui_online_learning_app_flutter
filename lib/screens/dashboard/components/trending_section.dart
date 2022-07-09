import 'package:flutter/material.dart';

import '../../../resources/constants/text_styles.dart';

class TrendingSection extends StatelessWidget {
  const TrendingSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Trending',
                  style: TextStyles.kTextXlSemiBold,
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    splashFactory: NoSplash.splashFactory,
                  ),
                  onPressed: () {},
                  child: Text(
                    'See all',
                    style: TextStyles.kTextSmMedium,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 16),
            height: 200,
            child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 150,
                  height: 200,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image(
                      fit: BoxFit.cover,
                      image:
                          AssetImage('asset/images/trending_course_$index.png'),
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(
                width: 16,
              ),
              itemCount: 5,
              scrollDirection: Axis.horizontal,
            ),
          )
        ],
      ),
    );
  }
}
