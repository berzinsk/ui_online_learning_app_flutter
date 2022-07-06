import 'package:flutter/material.dart';

import '../resources/constants/colors.dart';
import '../resources/constants/text_styles.dart';
import '../resources/extensions/text_style.dart';
import '../components/primary_button.dart';
import '../components/input_field.dart';

class Registration extends StatelessWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(),
          Text(
            'New Account',
            style: TextStyles.kDisplayXsBold,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Text(
              'Create new account to get access to Next Level Course by entering your mobile number',
              style: TextStyles.kTextSmRegular,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(16),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 0,
                      blurRadius: 20,
                      offset: const Offset(0, 6),
                    ),
                  ]),
              child: InputField(
                hintText: 'Mobile number',
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
          PrimaryButton(
            title: 'Verify Account',
            onClick: () {},
          ),
          const Spacer(),
          Row(
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
          ),
        ],
      ),
    );
  }
}
