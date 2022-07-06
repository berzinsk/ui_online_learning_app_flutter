import 'package:flutter/material.dart';

import '../resources/constants/colors.dart';
import '../resources/constants/text_styles.dart';
import '../resources/extensions/text_style.dart';

class InputField extends StatelessWidget {
  final String hintText;
  final BorderRadius borderRadius;
  final bool obscureText;

  const InputField({
    Key? key,
    required this.hintText,
    required this.borderRadius,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        TextField(
          style: TextStyles.kTextXsRegular
              .withColor(AppColors.kBrandColorAccentBlack),
          obscureText: obscureText,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(
                top: 16, bottom: 16, left: 16, right: obscureText ? 56 : 16),
            hintStyle: TextStyles.kTextXsRegular,
            hintText: hintText,
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: borderRadius,
            ),
          ),
        ),
        if (obscureText)
          const Padding(
            padding: EdgeInsets.only(right: 16),
            child: Align(
              alignment: Alignment.centerRight,
              child: Image(
                image: AssetImage('asset/images/icon_password_hidden.png'),
              ),
            ),
          ),
      ],
    );
  }
}
