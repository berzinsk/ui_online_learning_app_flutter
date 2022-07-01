import 'package:flutter/material.dart';

import '../resources/constants/constants.dart' as constants;

enum OnboardingScreen {
  first,
  second,
  third,
}

class Onboarding extends StatelessWidget {
  final OnboardingScreen screen;
  const Onboarding({
    Key? key,
    required this.screen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            image: getImage(screen),
          ),
          Text(
            getTitle(screen),
            style: constants.kDisplaySmBold30,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 20),
            child: Text(
              getDescription(screen),
              style: constants.kDisplaySmBold30,
            ),
          ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              splashFactory: NoSplash.splashFactory,
              minimumSize: Size.zero,
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
              backgroundColor: constants.kBranchColorPrimary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: Text(
              'Get Started',
              style: constants.kTextButtonPrimary,
            ),
          ),
        ],
      ),
    );
  }

  AssetImage getImage(OnboardingScreen screen) {
    switch (screen) {
      case OnboardingScreen.first:
        {
          return const AssetImage('asset/images/onboarding_1.png');
        }
      case OnboardingScreen.second:
        {
          return const AssetImage('asset/images/onboarding_2.png');
        }
      case OnboardingScreen.third:
        {
          return const AssetImage('asset/images/onboarding_3.png');
        }
    }
  }

  String getTitle(OnboardingScreen screen) {
    switch (screen) {
      case OnboardingScreen.first:
        {
          return 'Learn from expert';
        }
      case OnboardingScreen.second:
        {
          return 'Anytime, Anywhere';
        }
      case OnboardingScreen.third:
        {
          return 'Explore New Skills';
        }
    }
  }

  String getDescription(OnboardingScreen screen) {
    switch (screen) {
      case OnboardingScreen.first:
        {
          return 'Get Access to the best course from professional';
        }
      case OnboardingScreen.second:
        {
          return 'Learn With Pleasure With Us, Wherever You Are!';
        }
      case OnboardingScreen.third:
        {
          return 'Make your life easier and keep your skill up';
        }
    }
  }
}
