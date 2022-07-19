import 'package:flutter/material.dart';

import '../../../resources/constants/colors.dart';
import '../../../resources/constants/text_styles.dart';
import '../../../resources/extensions/text_style.dart';

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
