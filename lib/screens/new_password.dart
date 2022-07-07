import 'package:flutter/material.dart';

import '../resources/constants/text_styles.dart';
import '../resources/extensions/text_style.dart';
import '../components/input_field.dart';
import '../components/primary_button.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({Key? key}) : super(key: key);

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
            'New Password',
            style: TextStyles.kDisplaySmBold.withFontSize(22),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Text(
              'Enter the new password to secure your account',
              style: TextStyles.kTextSmRegular.withFontSize(13),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20,
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 0,
                    offset: const Offset(0, 6),
                  ),
                ],
              ),
              child: Column(children: const [
                InputField(
                  hintText: 'New password',
                  obscureText: true,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                SizedBox(
                  height: 1,
                ),
                InputField(
                  hintText: 'Confirm password',
                  obscureText: true,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                )
              ]),
            ),
          ),
          PrimaryButton(
            title: 'Reset Password',
            onClick: () {},
          ),
        ],
      ),
    );
  }
}
