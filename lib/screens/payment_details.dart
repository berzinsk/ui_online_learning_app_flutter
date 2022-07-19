import 'package:flutter/material.dart';

import '../resources/constants/colors.dart';
import '../resources/constants/text_styles.dart';
import '../resources/extensions/text_style.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Order Details',
              style: TextStyles.kTextXlSemiBold
                  .withColor(AppColors.kBrandColorAccentBlack),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                'Select payment method',
                style: TextStyles.kTextSmMedium
                    .withColor(AppColors.kBrandColorAccentBlack),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: DigitalBankSection(),
            ),
          ],
        ),
      ),
    );
  }
}

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

class BankRow extends StatelessWidget {
  final String name;
  final String icon;
  final bool selected;

  const BankRow({
    Key? key,
    required this.name,
    required this.icon,
    this.selected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          width: 1,
          color: AppColors.kBrandColorPrimary,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: AppColors.kBrandColorPrimary,
                        width: 1,
                      ),
                    ),
                  ),
                  if (selected)
                    Container(
                      width: 14,
                      height: 14,
                      decoration: BoxDecoration(
                        color: AppColors.kBrandColorPrimary,
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  name,
                  style: TextStyles.kTextSmMedium
                      .withColor(AppColors.kBrandColorAccentBlack),
                ),
              ),
            ],
          ),
          Image(
            image: AssetImage(icon),
          ),
        ],
      ),
    );
  }
}
