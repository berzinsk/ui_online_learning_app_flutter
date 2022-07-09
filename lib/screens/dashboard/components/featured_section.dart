import 'package:flutter/material.dart';

import '../../../resources/constants/text_styles.dart';
import '../../../resources/constants/colors.dart';
import '../../../resources/extensions/text_style.dart';

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
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
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
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 240,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('asset/images/dashboard_featured_bg.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        const Color(0xff000000).withOpacity(0.08),
                        const Color(0xff000000).withOpacity(0.5),
                      ],
                    ),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    ),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Getting Started with Web3 Blockchain Development',
                        style: TextStyles.kTextSemiBold18
                            .withColor(AppColors.kTextColorNeutral50),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: const Image(
                                    width: 32,
                                    height: 32,
                                    image: AssetImage(
                                        'asset/images/normal_karlis_berzins.jpeg'),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Text(
                                    'Danica Sothy',
                                    style: TextStyles.kTextXsRegular.withColor(
                                        AppColors.kTextColorNeutral50),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Image(
                                  image: AssetImage(
                                      'asset/images/icon_star_filled.png'),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 3, left: 8),
                                  child: Text(
                                    '4.6',
                                    style: TextStyles.kTextBold18,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
