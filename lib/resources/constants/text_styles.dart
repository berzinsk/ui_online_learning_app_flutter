import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

class TextStyles {
  static TextStyle textSemiBold = GoogleFonts.inter(
    textStyle: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppColors.kNeutralColor500,
    ),
  );

  static TextStyle kDisplaySmBold = GoogleFonts.inter(
    textStyle: TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: AppColors.kBrandColorAccentBlack,
    ),
  );

  static TextStyle kTextSemiBold14 = GoogleFonts.inter(
    textStyle: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppColors.kNeutralColor500,
    ),
  );

  static TextStyle kTextSemiBold18 = GoogleFonts.inter(
    textStyle: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: AppColors.kBrandColorAccentBlack,
    ),
  );

  static TextStyle kTextXsSemiBold = GoogleFonts.inter(
    textStyle: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.bold,
      color: AppColors.kBrandColorAccentBlack,
    ),
  );

  static TextStyle kTextButtonPrimary = GoogleFonts.inter(
    textStyle: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppColors.kTextColorNeutral50,
    ),
  );

  static TextStyle kTextSmSemiBold = GoogleFonts.inter(
    textStyle: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColors.kTextColorNeutral50,
    ),
  );

  static TextStyle kTextSmRegular = GoogleFonts.inter(
    textStyle: TextStyle(
      fontSize: 14,
      height: 1.5,
      fontWeight: FontWeight.normal,
      color: AppColors.kBrandColorAccentBlack,
    ),
  );

  static TextStyle kDisplayXsBold = GoogleFonts.inter(
    textStyle: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: AppColors.kBrandColorAccentBlack,
    ),
  );

  static TextStyle kTextXsRegular = GoogleFonts.inter(
    textStyle: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: AppColors.kNeutralRegular400,
    ),
  );
}
