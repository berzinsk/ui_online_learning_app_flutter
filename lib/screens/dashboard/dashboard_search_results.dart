import 'package:flutter/material.dart';

import '../../resources/constants/colors.dart';
import '../../resources/constants/text_styles.dart';
import '../../resources/extensions/text_style.dart';

class DashboardSearchResults extends StatelessWidget {
  const DashboardSearchResults({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 56,
              padding: const EdgeInsets.fromLTRB(16, 0, 8, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: AppColors.kNeutralRegular400),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Image(
                    image: AssetImage('asset/images/arrow_left_brand.png'),
                  ),
                  Expanded(
                    child: TextField(
                      style: TextStyles.kTextXsRegular
                          .withColor(AppColors.kBrandColorAccentBlack),
                      decoration: InputDecoration(
                        hintText: 'Find course',
                        // filled: true,
                        hintStyle: TextStyles.kTextXsRegular,
                        contentPadding: const EdgeInsets.all(16),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    style: ButtonStyle(
                      padding:
                          MaterialStateProperty.all(const EdgeInsets.all(8)),
                      splashFactory: NoSplash.splashFactory,
                      overlayColor: MaterialStateColor.resolveWith(
                          (states) => Colors.transparent),
                      minimumSize: MaterialStateProperty.all(Size.zero),
                    ),
                    onPressed: () {},
                    child: const Image(
                      image: AssetImage('asset/images/icon_close_gray.png'),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
