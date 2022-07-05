import 'package:flutter/material.dart';

import '../resources/constants/colors.dart';
import '../resources/constants/text_styles.dart';

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
    return TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: borderRadius,
        ),
      ),
    );
  }
}
