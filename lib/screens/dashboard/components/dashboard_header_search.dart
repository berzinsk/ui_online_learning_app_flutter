import 'package:flutter/material.dart';

import '../../../resources/constants/colors.dart';
import '../../../resources/constants/text_styles.dart';
import '../../../resources/extensions/text_style.dart';

class DashboardHeaderSearch extends StatelessWidget {
  const DashboardHeaderSearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 48),
      width: MediaQuery.of(context).size.width,
      height: 56,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: Colors.white,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.search,
            color: AppColors.kNeutralRegular400,
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: TextField(
                style: TextStyles.kTextXsRegular
                    .withFontSize(14)
                    .withColor(AppColors.kBrandColorAccentBlack),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Find Course',
                  hintStyle: TextStyles.kTextXsRegular.withFontSize(14),
                ),
              ),
            ),
          ),
          Icon(
            Icons.mic_none,
            color: AppColors.kNeutralRegular400,
          )
        ],
      ),
    );
  }
}
