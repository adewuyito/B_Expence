import 'package:b_expence/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:b_expence/utils/constants/colors.dart';

class BAppBarTheme {
  BAppBarTheme._();

  /* LIGHT APPBAR THEME */
  static const lightTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: BColors.transparent,
    surfaceTintColor: BColors.transparent,
    iconTheme: IconThemeData(color: BColors.black, size: BSizes.iconLg),
    actionsIconTheme: IconThemeData(color: BColors.black, size: BSizes.iconLg),
    titleTextStyle: TextStyle(
      fontSize: BSizes.fontSizeLg,
      fontWeight: FontWeight.w600,
      color: BColors.black,
    ),
  );

  /* DARK APPBAR THEME */
  static const darkTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: BColors.transparent,
    surfaceTintColor: BColors.transparent,
    iconTheme: IconThemeData(color: BColors.black, size: BSizes.iconLg),
    actionsIconTheme: IconThemeData(color: BColors.white, size: BSizes.iconLg),
    titleTextStyle: TextStyle(
      fontSize: BSizes.fontSizeLg,
      fontWeight: FontWeight.w600,
      color: BColors.white,
    ),
  );
}
