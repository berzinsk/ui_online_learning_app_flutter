import 'package:flutter/material.dart';

import '../../../resources/constants/text_styles.dart';
import '../../../resources/constants/colors.dart';
import '../../../resources/extensions/text_style.dart';
import './dashboard_header_button.dart';

class DashboardHeader extends StatelessWidget {
  const DashboardHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 32, top: 20),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.kBrandColorDark,
            AppColors.kBrandLight,
          ],
        ),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(32),
          bottomRight: Radius.circular(32),
        ),
      ),
      child: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hi, Karlis ✌️',
                  style: TextStyles.kDisplayXsBold
                      .withColor(AppColors.kTextColorNeutral50),
                ),
                Row(
                  children: [
                    DashboardHeaderButton(
                      iconName: 'icon_shopping_cart_blue',
                      onPressed: () {},
                    ),
                    DashboardHeaderButton(
                      iconName: 'icon_bell_blue',
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
