import 'package:flutter/material.dart';

import '../resources/constants/text_styles.dart';
import '../resources/constants/colors.dart';
import '../resources/extensions/text_style.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding:
              const EdgeInsets.only(left: 16, right: 16, bottom: 32, top: 20),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                AppColors.kBrandColorDark,
                AppColors.kBrandLight,
              ],
            ),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(32),
              bottomRight: Radius.circular(32),
            ),
          ),
          child: SafeArea(
            bottom: false,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Hi, Karlis ✌️',
                      style: TextStyles.kDisplayXsBold
                          .withColor(AppColors.kTextColorNeutral50),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
