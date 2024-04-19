import 'package:e_commerce_firebase/utils/themes/custom_themes/appbar_theme.dart';
import 'package:e_commerce_firebase/utils/themes/custom_themes/bottom_sheet_theme.dart';
import 'package:e_commerce_firebase/utils/themes/custom_themes/check_box_theme.dart';
import 'package:e_commerce_firebase/utils/themes/custom_themes/chip_theme.dart';
import 'package:e_commerce_firebase/utils/themes/custom_themes/elevated_button_theme.dart';
import 'package:e_commerce_firebase/utils/themes/custom_themes/text_themes.dart';
import 'package:e_commerce_firebase/utils/themes/custom_themes/textfield_theme.dart';
import 'package:e_commerce_firebase/utils/themes/custom_themes/outlined_button_theme.dart';
import 'package:flutter/material.dart';

class AppTheme{
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3:true,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme:MyTextTheme.lightTextTheme,
    appBarTheme: myAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: myBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: myCheckBoxTheme.lightCheckBoxThemeData,
    chipTheme: myChipTheme.lightChipTheme,
    elevatedButtonTheme: myElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: myOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TextFormFieldTheme.lightInputDecorationTheme,

  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3:true,
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme:MyTextTheme.darkTextTheme,
    appBarTheme: myAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: myBottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: myCheckBoxTheme.darkCheckBoxThemeData,
    chipTheme: myChipTheme.darkChipTheme,
    elevatedButtonTheme: myElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: myOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TextFormFieldTheme.darkInputDecorationTheme,
  );
}