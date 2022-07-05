import 'package:flutter/material.dart';

import '../resources/constants/colors.dart';
import '../resources/constants/text_styles.dart';
import '../resources/extensions/text_style.dart';
import '../components/input_field.dart';
import '../components/primary_button.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(),
          Text(
            'Get Started',
            style: TextStyles.kDisplaySmBold,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              'Please fill in the form below and you will get the access.',
              style: TextStyles.kTextSmRegular,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  spreadRadius: 0,
                  blurRadius: 20,
                  offset: const Offset(0, 6),
                ),
              ],
            ),
            child: Column(
              children: const [
                InputField(
                  hintText: 'Name',
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                InputField(hintText: 'Email', borderRadius: BorderRadius.zero),
                InputField(
                  hintText: 'Password',
                  borderRadius: BorderRadius.zero,
                  obscureText: true,
                ),
                InputField(
                  hintText: 'Password',
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                  obscureText: true,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: PrimaryButton(
              onClick: () {},
              title: 'Create Account',
            ),
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
