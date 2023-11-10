import 'package:flutter/material.dart';

class BottomNavItem extends StatelessWidget {
  BottomNavItem(
      {super.key,
      required this.iconPath,
      required this.titleIcon,
      required this.textTheme});
  String iconPath;
  String titleIcon;

  TextTheme textTheme;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          child: Image.asset(iconPath),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          titleIcon,
          style: textTheme.labelSmall,
        )
      ],
    );
  }
}
