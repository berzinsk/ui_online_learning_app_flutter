import 'package:flutter/material.dart';

import '../resources/constants/colors.dart';
import '../resources/constants/text_styles.dart';
import '../resources/extensions/text_style.dart';
import './navbar_item.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 102,
      decoration: BoxDecoration(
        color: AppColors.kTextColorNeutral50,
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(16), topRight: Radius.circular(16)),
      ),
      child: SafeArea(
        top: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            NavbarItem(
              iconName: 'search',
              title: 'Search',
              isActive: true,
            ),
            NavbarItem(
              iconName: 'learning',
              title: 'My Learning',
            ),
            NavbarItem(
              iconName: 'downloads',
              title: 'Downloads',
            ),
            NavbarItem(
              iconName: 'leaderboard',
              title: 'Leaderboard',
            ),
            NavbarItem(
              iconName: 'account',
              title: 'Account',
              hasColoredIcon: true,
              isLastItem: true,
            ),
          ],
        ),
      ),
    );
  }
}
