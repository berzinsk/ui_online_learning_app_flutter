import 'package:flutter/material.dart';

import '../../resources/constants/colors.dart';
import '../../resources/constants/text_styles.dart';
import '../../resources/extensions/text_style.dart';

class MemoryRow extends StatelessWidget {
  const MemoryRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '100 MB out of 32 GB used',
          style: TextStyles.kTextXsRegular
              .withColor(AppColors.kBrandColorAccentBlack),
        ),
        Text(
          'Delete All',
          style: TextStyles.kTextXsBold.withColor(AppColors.kBrandColorPrimary),
        ),
      ],
    );
  }
}
