import 'package:b_expence/utils/theme/custom_theme/appbar_theme.dart';
import 'package:b_expence/utils/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:b_expence/utils/theme/custom_theme/checkbox_theme.dart';
import 'package:b_expence/utils/theme/custom_theme/chip_theme.dart';
import 'package:b_expence/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:b_expence/utils/theme/custom_theme/outlined_button_theme.dart';
import 'package:b_expence/utils/theme/custom_theme/text_field_theme.dart';
import 'package:b_expence/utils/theme/custom_theme/text_theme.dart';
import 'package:b_expence/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class BAppTheme {
  BAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: BColors.primary,
    scaffoldBackgroundColor: BColors.light,
    textTheme: BTextTheme.lightTextTheme,
    elevatedButtonTheme: BElevatedButtonTheme.lightTheme,
    appBarTheme: BAppBarTheme.lightTheme,
    bottomSheetTheme: BBottomSheetTheme.lightTheme,
    checkboxTheme: BCheckBoxTheme.lightTheme,
    chipTheme: BChipTheme.lightTheme,
    outlinedButtonTheme: BOutlinedButtonTheme.lightTheme,
    inputDecorationTheme: BTextField.lightTheme
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    // fontFamily: ,
    brightness: Brightness.dark,
    primaryColor: BColors.primary,
    scaffoldBackgroundColor: Colors.black,
    textTheme: BTextTheme.darkTextTheme,
    elevatedButtonTheme: BElevatedButtonTheme.darkTheme,
    appBarTheme: BAppBarTheme.darkTheme,
    bottomSheetTheme: BBottomSheetTheme.darkTheme,
    checkboxTheme: BCheckBoxTheme.darkTheme,
    chipTheme: BChipTheme.darkTheme,
    outlinedButtonTheme: BOutlinedButtonTheme.darkTheme,
    inputDecorationTheme: BTextField.darkTheme
  );
}
