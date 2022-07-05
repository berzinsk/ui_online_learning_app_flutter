import 'package:flutter/material.dart';

import '../resources/constants/colors.dart';
import '../resources/constants/text_styles.dart';
import '../resources/extensions/text_style.dart';

class SuccessMessage extends StatelessWidget {
  final bool showRegisterLink;
  final String title;
  final String text;

  const SuccessMessage({
    Key? key,
    this.showRegisterLink = false,
    required this.title,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(),
          const Padding(
            padding: EdgeInsets.only(bottom: 16),
            child:
                Image(image: AssetImage('asset/images/icon_success_blue.png')),
          ),
          Text(
            title,
            style: TextStyles.kDisplaySmBold.withFontSize(22),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Text(
              text,
              style: TextStyles.kTextSmRegular.withFontSize(13),
              textAlign: TextAlign.center,
            ),
          ),
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
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: showRegisterLink
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Text(
                            'Don\'t have an account?',
                            style: TextStyles.kTextSmRegular,
                          ),
                        ),
                        Text(
                          'Sign Up',
                          style: TextStyles.textSemiBold
                              .withColor(AppColors.kBrandColorPrimary),
                        ),
                      ],
                    )
                  : null,
            ),
          ),
        ],
      ),
    );
  }
}
