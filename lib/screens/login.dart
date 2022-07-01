import 'package:flutter/material.dart';

import '../resources/constants/constants.dart' as constants;
import '../resources/extensions/text_style.dart';

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
          Text('Learn Everywhere and Anytime',
              style: constants.kTextSemiBold18),
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sign in to your account',
                  style: constants.kTextXsSemiBold,
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot?',
                    style: constants.kTextSemiBold14
                        .withColor(constants.kBranchColorPrimary),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.yellow,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Username'),
                Text('Password'),
              ],
            ),
          ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              minimumSize: Size(double.infinity, 56),
            ),
            child: Text('Sign In'),
          ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              minimumSize: Size(double.infinity, 56),
            ),
            child: Text('Sign In With Google'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Don\'t have an account?'),
              Text('Sign Up'),
            ],
          )
        ],
      ),
    );
  }
}
