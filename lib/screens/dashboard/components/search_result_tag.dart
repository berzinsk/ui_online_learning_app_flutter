import 'package:flutter/material.dart';

import '../../../resources/constants/colors.dart';

class SearchResultTag extends StatelessWidget {
  final Widget child;
  final bool shouldHighlight;

  const SearchResultTag({
    Key? key,
    required this.child,
    this.shouldHighlight = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: shouldHighlight
            ? AppColors.kSemanticWarning200
            : AppColors.kNeutralColor200,
        borderRadius: BorderRadius.circular(16),
      ),
      child: child,
    );
  }
}
