import 'package:flutter/material.dart';

import '../constants/constants.dart' as constants;

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Image(
            image: AssetImage('asset/images/onboarding_1.png'),
          ),
          Text(
            'Learn from expert',
            style: constants.kDisplaySmBold,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Text(
              'Get Access to the best course from professional',
              style: constants.kTextSemiBold,
            ),
          ),
        ],
      ),
    );
    ;
  }
}
