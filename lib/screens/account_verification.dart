import 'package:flutter/material.dart';

import '../resources/constants/colors.dart';
import '../resources/constants/text_styles.dart';

class AccountVerification extends StatelessWidget {
  const AccountVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
              ),
              Text(
                'Verifying your account',
                style: TextStyles.kDisplayXsBold,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 20),
                child: Text(
                  'We will call your registered phone number, do not accept it!',
                  style: TextStyles.kTextSmRegular,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 95),
                child: Stack(
                  children: [
                    Container(
                      height: 10,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: AppColors.kNeutralColor300),
                    ),
                    Container(
                      height: 10,
                      width: 85,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: AppColors.kSemanticSuccess500,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Image(
          image: AssetImage('asset/images/account_verification.png'),
        ),
      ],
    );
  }
}
