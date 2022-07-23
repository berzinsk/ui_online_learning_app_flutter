import 'package:flutter/material.dart';

import '../resources/constants/colors.dart';
import '../resources/constants/text_styles.dart';
import '../resources/extensions/text_style.dart';
import '../components/primary_button.dart';

class OrderPlaced extends StatelessWidget {
  const OrderPlaced({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.fromLTRB(16, 20, 16, 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Order details',
              style: TextStyles.kTextXlSemiBold
                  .withColor(AppColors.kBrandColorAccentBlack),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: RichText(
                text: TextSpan(
                  text: 'Your order of',
                  style: TextStyles.kTextMdMedium
                      .withColor(AppColors.kBrandColorAccentBlack),
                  children: [
                    TextSpan(
                      text: ' \$56 ',
                      style: TextStyles.kTextMdBold
                          .withColor(AppColors.kBrandColorAccentBlack),
                    ),
                    const TextSpan(text: ' has been placed!\n\n'),
                    const TextSpan(
                      text:
                          'Thank you for your order! It will be delivered after you have made your paymen.',
                    ),
                    const TextSpan(text: 'Please pay by '),
                    TextSpan(
                      text: '10/01/2022 9.41 (GMT+7).\n\n',
                      style: TextStyles.kTextMdBold
                          .withColor(AppColors.kBrandColorAccentBlack),
                    ),
                    const TextSpan(
                        text:
                            'We have sent an email to you with these details and payment instructions.')
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: AppColors.kBrandColorPrimary100,
                  ),
                  padding: const EdgeInsets.all(16),
                  child: const Image(
                    image: AssetImage('asset/images/logo_jago.png'),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 20),
              child: PrimaryButton(title: '648001013840531', onClick: () {}),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    splashFactory: NoSplash.splashFactory,
                    fixedSize: const Size(60, 60),
                    backgroundColor: AppColors.kBrandColorPrimary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {},
                  child: const Image(
                    image: AssetImage('asset/images/arrow_right_white.png'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
