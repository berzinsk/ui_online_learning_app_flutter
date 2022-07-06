import 'package:flutter/material.dart';

import '../resources/constants/text_styles.dart';
import '../resources/constants/colors.dart';
import '../resources/extensions/text_style.dart';
import '../components/primary_button.dart';
import '../components/input_field.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.23),
          Text('Learn Everywhere and Anytime',
              style: TextStyles.kTextSemiBold18),
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sign in to your account',
                  style: TextStyles.kTextXsSemiBold,
                ),
                TextButton(
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Forgot?',
                    style: TextStyles.textSemiBold
                        .withColor(AppColors.kBrandColorPrimary),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 0,
                    blurRadius: 20,
                    offset: const Offset(0, 6),
                  )
                ],
              ),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  InputField(
                    hintText: 'Username',
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                  ),
                  SizedBox(
                    height: 1,
                  ),
                  InputField(
                    hintText: 'Password',
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    obscureText: true,
                  ),
                ],
              ),
            ),
          ),
          PrimaryButton(
            title: 'Sign In',
            onClick: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                minimumSize: const Size(double.infinity, 56),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                splashFactory: NoSplash.splashFactory,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(
                    image: AssetImage('asset/images/icon_google.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      'Sign In With Google',
                      style: TextStyles.kTextSmSemiBold
                          .withColor(AppColors.kBrandColorAccentBlack),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Row(
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
            ),
          )
        ],
      ),
    );
  }
}
