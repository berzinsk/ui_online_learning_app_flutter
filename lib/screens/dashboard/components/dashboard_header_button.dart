import 'package:flutter/material.dart';

class DashboardHeaderButton extends StatelessWidget {
  final String iconName;
  final void Function() onPressed;

  const DashboardHeaderButton({
    required this.iconName,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(40, 40),
        backgroundColor: Colors.white,
        padding: EdgeInsets.zero,
        splashFactory: NoSplash.splashFactory,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      onPressed: onPressed,
      child: Image(
        image: AssetImage('asset/images/$iconName.png'),
      ),
    );
  }
}
