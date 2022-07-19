import 'package:flutter/material.dart';

import '../../resources/constants/colors.dart';
import '../../resources/constants/text_styles.dart';
import '../../resources/extensions/text_style.dart';
import './components/digital_bank_section.dart';
import '../../components/primary_button.dart';
import './components/payment_row.dart';

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
            const PaymentRow(name: 'Debit/Credit card'),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: PaymentRow(name: 'Offline Merchant'),
            ),
            PrimaryButton(
              title: 'Proceed',
              onClick: () {},
            ),
          ],
        ),
      ),
    );
  }
}
