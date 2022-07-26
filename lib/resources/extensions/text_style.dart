import 'package:flutter/material.dart';

extension TextStyleHelper on TextStyle {
  TextStyle withColor(Color value) => copyWith(color: value);
  TextStyle withFontSize(double value) => copyWith(fontSize: value);
}
