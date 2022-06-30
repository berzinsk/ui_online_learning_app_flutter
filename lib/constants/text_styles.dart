import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart' as app_colors;

var kDisplaySmBold = GoogleFonts.inter(
  textStyle: const TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: app_colors.kBrandColorAccentBlack,
  ),
);

var kTextSemiBold = GoogleFonts.inter(
  textStyle: const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: app_colors.kNeutralColor500,
  ),
);

var kTextButtonPrimary = GoogleFonts.inter(
  textStyle: const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: app_colors.kTextColorNeutral50,
  ),
);
