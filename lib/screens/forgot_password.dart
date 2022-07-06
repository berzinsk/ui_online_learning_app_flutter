import 'package:flutter/material.dart';

import '../resources/constants/colors.dart';
import '../resources/constants/text_styles.dart';
import '../resources/extensions/text_style.dart';
import '../components/primary_button.dart';
import '../components/input_field.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Forgot Password',
              style: TextStyles.kDisplaySmBold.withFontSize(22),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                'Enter the email address associated with your account',
                style: TextStyles.kTextSmRegular
                    .withFontSize(13)
                    .withColor(AppColors.kNeutralColor500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 0,
                        blurRadius: 20,
                        offset: const Offset(0, 6),
                      ),
                    ]),
                child: InputField(
                  hintText: 'Email',
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
            ),
            PrimaryButton(title: 'Reset Password', onClick: () {}),
          ],
        ));
  }
}
