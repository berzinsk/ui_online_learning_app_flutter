import 'package:flutter/material.dart';

import '../../../resources/constants/text_styles.dart';
import '../../../resources/constants/colors.dart';
import '../../../resources/extensions/text_style.dart';

class DashboardSearchResultRow extends StatelessWidget {
  const DashboardSearchResultRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RichText(
          text: TextSpan(
            text: '230',
            style: TextStyles.kTextXlSemiBold,
            children: [
              TextSpan(
                text: ' Total Results',
                style: TextStyles.kTextXlRegular,
              ),
            ],
          ),
        ),
        TextButton(
          style: ButtonStyle(
            splashFactory: NoSplash.splashFactory,
            overlayColor: MaterialStateProperty.all(Colors.transparent),
          ),
          onPressed: () {},
          child: Text(
            'Filter',
            style: TextStyles.kTextSmMedium
                .withColor(AppColors.kBrandColorAccentBlack),
          ),
        ),
      ],
    );
  }
}
