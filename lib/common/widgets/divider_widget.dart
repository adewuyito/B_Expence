import 'package:b_expence/utils/constants/colors.dart';
import 'package:b_expence/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
    required this.isDark,
    required this.message,
  });

  final bool isDark;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: BSizes.spaceBtwItems),
      child: Row(
        children: [
          Flexible(
            child: Divider(
              color: isDark ? BColors.darkGrey : BColors.grey,
              thickness: .5,
              indent: 60,
              endIndent: 5,
            ),
          ),
          Text(message, style: Theme.of(context).textTheme.labelMedium),
          Flexible(
            child: Divider(
              color: isDark ? BColors.darkGrey : BColors.grey,
              thickness: .5,
              indent: 5,
              endIndent: 60,
            ),
          ),
        ],
      ),
    );
  }
}
