import 'package:flutter/material.dart';

import '../resources/constants/colors.dart';
import '../resources/constants/text_styles.dart';
import '../resources/extensions/text_style.dart';
import '../components/primary_button.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 32, 16, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Account',
              style: TextStyles.kTextSmSemiBold
                  .withColor(AppColors.kBrandColorAccentBlack),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      const CircleAvatar(
                        backgroundImage: AssetImage(
                          'asset/images/normal_karlis_berzins.jpeg',
                        ),
                        radius: 32,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16, bottom: 8),
                        child: Text(
                          'Karlis Berzins',
                          style: TextStyles.kTextMdBold
                              .withColor(AppColors.kBrandColorAccentBlack),
                        ),
                      ),
                      TextButton(
                        style: ButtonStyle(
                          overlayColor:
                              MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                              return Colors.transparent;
                            },
                          ),
                          splashFactory: NoSplash.splashFactory,
                        ),
                        onPressed: () {},
                        child: Text(
                          'View Profile',
                          style: TextStyles.kTextSmMedium
                              .withColor(AppColors.kBrandColorAccentBlack),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: AppColors.kBrandColorPrimary,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Achievements',
                        style: TextStyles.kTextMdMedium
                            .withColor(AppColors.kBrandColorAccentBlack),
                      ),
                      Text(
                        '5 e-certificates',
                        style: TextStyles.kTextSmRegular,
                      ),
                    ],
                  ),
                  const Image(
                    image: AssetImage('asset/images/icon_chevron_right.png'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 157,
                    child: PrimaryButton(
                      title: 'Sign Out',
                      onClick: () {},
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
