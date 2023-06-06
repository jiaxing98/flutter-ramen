import 'package:flutter/material.dart';
import 'package:flutter_ramen/resources/fonts.dart';
import 'package:flutter_ramen/resources/text_styles.dart';

ThemeData themeHermesDark = ThemeData(
  fontFamily: fontRobotoCondensed,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: Color(0xFFFF770F),
    onPrimary: Colors.white,
    secondary: Color(0xFF000010),
    onSecondary: Colors.white,
    error: Colors.red,
    onError: Colors.red,
    background: Color(0xFFFAFAFA),
    onBackground: Colors.black,
    surface: Color(0xFFFAFAFA),
    onSurface: Colors.black,
  ),
  dividerTheme: const DividerThemeData(
    color: Colors.grey,
  ),
  dialogTheme: const DialogTheme(
    backgroundColor: Color(0xFFFAFAFA),
  ),
  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: Color(0xFFFF770F),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: const Color(0xFFFAFAFA),
    titleTextStyle: tsAppBarTitle.copyWith(color: Colors.black),
  ),
  textTheme: TextTheme(
    displayLarge: tsExtraBold800.copyWith(color: Colors.black),
    displayMedium: tsBold700.copyWith(color: Colors.black),
    displaySmall: tsSemiBold600.copyWith(color: Colors.black),
    headlineMedium: tsMedium500.copyWith(color: Colors.black),
    headlineSmall: tsRegular400.copyWith(color: Colors.black),
    titleLarge: tsLight300.copyWith(color: Colors.black),
    labelLarge: tsButton.copyWith(color: Colors.black),
  ),
  textButtonTheme: TextButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
      foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
      overlayColor: MaterialStateProperty.all<Color>(Colors.blue),
      shadowColor: MaterialStateProperty.all<Color>(Colors.blue),
      surfaceTintColor: MaterialStateProperty.all<Color>(Colors.blue),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
      foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
      overlayColor: MaterialStateProperty.all<Color>(Colors.blue),
      shadowColor: MaterialStateProperty.all<Color>(Colors.blue),
      surfaceTintColor: MaterialStateProperty.all<Color>(Colors.blue),
    ),
  ),
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
      foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
      overlayColor: MaterialStateProperty.all<Color>(Colors.blue),
      shadowColor: MaterialStateProperty.all<Color>(Colors.blue),
      surfaceTintColor: MaterialStateProperty.all<Color>(Colors.blue),
    ),
  ),
  scaffoldBackgroundColor: const Color(0xFFFAFAFA),
);
