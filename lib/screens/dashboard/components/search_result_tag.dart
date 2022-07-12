import 'package:flutter/material.dart';

import '../../../resources/constants/colors.dart';

class SearchResultTag extends StatelessWidget {
  final Widget child;
  const SearchResultTag({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppColors.kNeutralColor200,
        borderRadius: BorderRadius.circular(16),
      ),
      child: child,
    );
  }
}
