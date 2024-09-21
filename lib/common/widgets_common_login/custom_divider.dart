import 'package:flutter/material.dart';
import 'package:grocery_app/utils/constants/color.dart';

class CustomDivider extends StatelessWidget {
  final String text;
  const CustomDivider({
    super.key,
    required this.isDark,
    required this.text,
  });

  final bool isDark;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Divider(
            color: isDark ? EAppColor.darkGrey : EAppColor.grey,
            thickness: 0.6,
            indent: 60,
            endIndent: 5,
          ),
        ),
        Text(
          text,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            color: isDark ? EAppColor.darkGrey : EAppColor.grey,
            thickness: 0.6,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}
