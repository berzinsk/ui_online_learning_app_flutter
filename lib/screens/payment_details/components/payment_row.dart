import 'package:flutter/material.dart';

import '../../../resources/constants/colors.dart';
import '../../../resources/constants/text_styles.dart';
import '../../../resources/extensions/text_style.dart';

class PaymentRow extends StatelessWidget {
  final String name;

  const PaymentRow({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.kBrandColorPrimary),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: TextStyles.kTextMdMedium
                .withColor(AppColors.kBrandColorAccentBlack),
          ),
          const Image(
            image: AssetImage('asset/images/icon_chevron_right.png'),
          ),
        ],
      ),
    );
  }
}
