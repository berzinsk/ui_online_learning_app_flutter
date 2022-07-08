import 'package:flutter/material.dart';

import '../../../resources/constants/text_styles.dart';

class FeaturedSection extends StatelessWidget {
  const FeaturedSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Featured',
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
        ],
      ),
    );
  }
}
