import 'package:flutter/material.dart';

import '../resources/constants/colors.dart';
import '../resources/constants/text_styles.dart';
import '../resources/extensions/text_style.dart';

class NavbarItem extends StatelessWidget {
  final String title;
  final String iconName;
  final bool isActive;
  final bool isLastItem;
  final bool hasColoredIcon;

  const NavbarItem({
    Key? key,
    required this.title,
    required this.iconName,
    this.isActive = false,
    this.isLastItem = false,
    this.hasColoredIcon = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16, right: isLastItem ? 0 : 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('asset/images/icon_navbar_$iconName.png'),
            color: hasColoredIcon ? null : AppColors.kNeutralRegular400,
          ),
          if (isActive)
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(
                title,
                style: TextStyles.kTextXsRegular
                    .withColor(AppColors.kBrandColorAccentBlack),
              ),
            ),
        ],
      ),
    );
  }
}
