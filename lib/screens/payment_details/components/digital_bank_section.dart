import 'package:flutter/material.dart';

import '../../../resources/constants/colors.dart';
import '../../../resources/constants/text_styles.dart';
import '../../../resources/extensions/text_style.dart';
import './bank_row.dart';

class DigitalBankSection extends StatelessWidget {
  const DigitalBankSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: AppColors.kBrandColorPrimary,
          width: 1,
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Digital Bank',
                style: TextStyles.kTextMdMedium
                    .withColor(AppColors.kBrandColorAccentBlack),
              ),
              Image(
                image: const AssetImage('asset/images/icon_arrow_down.png'),
                color: AppColors.kBrandColorAccentBlack,
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: BankRow(
              name: 'Bank Jago',
              icon: 'asset/images/logo_jago.png',
              selected: true,
            ),
          ),
          const BankRow(
            name: 'blu by BCA',
            icon: 'asset/images/logo_blu.png',
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: BankRow(
              name: 'Jenius',
              icon: 'asset/images/logo_jenius.png',
            ),
          ),
        ],
      ),
    );
  }
}
