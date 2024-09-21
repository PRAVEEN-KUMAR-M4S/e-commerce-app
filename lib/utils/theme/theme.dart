import 'package:flutter/material.dart';
import 'package:grocery_app/utils/theme/custom_theme/app_bar_theme.dart';
import 'package:grocery_app/utils/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:grocery_app/utils/theme/custom_theme/check_box_theme.dart';
import 'package:grocery_app/utils/theme/custom_theme/chip_theme.dart';
import 'package:grocery_app/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:grocery_app/utils/theme/custom_theme/outline_button_theme.dart';
import 'package:grocery_app/utils/theme/custom_theme/text_theme.dart';
import 'package:grocery_app/utils/theme/custom_theme/textfield_theme.dart';

class EAppTheme {
  EAppTheme._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      textTheme: EAppTextTheme.lightText,
      elevatedButtonTheme: EAppElevatedButtonTheme.lightButton,
      appBarTheme: EAppAppBarTheme.lightAppBarTheme,
      inputDecorationTheme: EAppTextfieldTheme.lightTextFieldTheme,
      bottomSheetTheme: EAppBottomSheetTheme.lightBottomSheet,
      checkboxTheme: EAppCheckBoxTheme.lightCheckBoxTheme,
      chipTheme: EAppChipTheme.lightChipTheme,
      outlinedButtonTheme: EAppOutlineButtonTheme.lightOutlineButtonTheme);
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      textTheme: EAppTextTheme.darkText,
      elevatedButtonTheme: EAppElevatedButtonTheme.darkTheme,
      appBarTheme: EAppAppBarTheme.darkAppBarTheme,
      inputDecorationTheme: EAppTextfieldTheme.darkTextFieldTheme,
      bottomSheetTheme: EAppBottomSheetTheme.darkBottomSheet,
      checkboxTheme: EAppCheckBoxTheme.darkCheckBoxTheme,
      chipTheme: EAppChipTheme.darkChipTheme,
      outlinedButtonTheme: EAppOutlineButtonTheme.darkOutlineButtonTheme);
}
