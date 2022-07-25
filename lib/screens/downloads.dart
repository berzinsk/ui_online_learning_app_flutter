import 'package:flutter/material.dart';

import '../resources/constants/colors.dart';
import '../resources/constants/text_styles.dart';
import '../resources/extensions/text_style.dart';
import './downloads/memory_row.dart';
import './downloads/download_card.dart';
import '../components/primary_button.dart';

class Downloads extends StatelessWidget {
  const Downloads({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.fromLTRB(16, 32, 16, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Downloads',
              style: TextStyles.kTextSmSemiBold
                  .withColor(AppColors.kBrandColorAccentBlack),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 32, bottom: 20),
              child: MemoryRow(),
            ),
            const DownloadCard(),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: PrimaryButton(
                title: 'Find more to download',
                onClick: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
