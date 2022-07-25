import 'package:flutter/material.dart';

import '../../resources/constants/colors.dart';
import '../../resources/constants/text_styles.dart';
import '../../resources/extensions/text_style.dart';

class DownloadCard extends StatelessWidget {
  const DownloadCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 16, 32, 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.kBrandColorPrimary),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.472,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'UX/UI Design Course 2022',
                  style: TextStyles.kTextSmBold
                      .withColor(AppColors.kBrandColorAccentBlack),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Maja Indira',
                        style: TextStyles.kTextXsRegular
                            .withColor(AppColors.kNeutralColor500),
                      ),
                      Text(
                        '100 MB',
                        style: TextStyles.kTextXsBold
                            .withColor(AppColors.kNeutralColor500),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Image(
            image: AssetImage('asset/images/icon_delete.png'),
          ),
        ],
      ),
    );
  }
}
