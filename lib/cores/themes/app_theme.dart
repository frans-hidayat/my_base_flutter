import 'package:flutter/material.dart';
import 'app_colors.dart';

enum AppThemeType { Maroon, Dark, Green }

Color _textColorLight = Colors.black;
Color _textColorDark = Colors.white;

final appTheme = {
  AppThemeType.Maroon: ThemeData(
    primarySwatch: AppColors.maroon,
    primaryColor: AppColors.maroon,
    accentColor: AppColors.maroon[50],
    iconTheme: IconThemeData(
      color: AppColors.maroon,
    ),
    textTheme: TextTheme(
      headline1: TextStyle(color: _textColorLight),
      headline2: TextStyle(color: _textColorLight),
      headline3: TextStyle(color: _textColorLight),
      headline4: TextStyle(color: _textColorLight),
      headline5: TextStyle(color: _textColorLight),
      headline6: TextStyle(color: _textColorLight),
      subtitle1: TextStyle(color: _textColorLight),
      subtitle2: TextStyle(color: _textColorLight),
      bodyText1: TextStyle(color: _textColorLight),
      bodyText2: TextStyle(color: _textColorLight),
      caption: TextStyle(color: _textColorLight),
      button: TextStyle(color: _textColorLight),
      overline: TextStyle(color: _textColorLight),
    ),
    buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.accent),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.maroon,
      foregroundColor: Colors.white,
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: AppColors.maroon[50],
  ),
  AppThemeType.Dark: ThemeData(
    primarySwatch: AppColors.black,
    primaryColor: AppColors.black,
    accentColor: AppColors.black[50],
    iconTheme: IconThemeData(
      color: AppColors.black,
    ),
    textTheme: TextTheme(
      headline1: TextStyle(color: _textColorDark),
      headline2: TextStyle(color: _textColorDark),
      headline3: TextStyle(color: _textColorDark),
      headline4: TextStyle(color: _textColorDark),
      headline5: TextStyle(color: _textColorDark),
      headline6: TextStyle(color: _textColorDark),
      subtitle1: TextStyle(color: _textColorDark),
      subtitle2: TextStyle(color: _textColorDark),
      bodyText1: TextStyle(color: _textColorDark),
      bodyText2: TextStyle(color: _textColorDark),
      caption: TextStyle(color: _textColorDark),
      button: TextStyle(color: _textColorDark),
      overline: TextStyle(color: _textColorDark),
    ),
    buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.accent),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.black,
      foregroundColor: AppColors.black[50],
    ),
    buttonColor: _textColorDark,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: AppColors.black[800],
  ),
  AppThemeType.Green: ThemeData(
    primarySwatch: AppColors.green,
    primaryColor: AppColors.green,
    accentColor: AppColors.green[50],
    iconTheme: IconThemeData(
      color: AppColors.green,
    ),
    textTheme: TextTheme(
      headline1: TextStyle(color: _textColorLight),
      headline2: TextStyle(color: _textColorLight),
      headline3: TextStyle(color: _textColorLight),
      headline4: TextStyle(color: _textColorLight),
      headline5: TextStyle(color: _textColorLight),
      headline6: TextStyle(color: _textColorLight),
      subtitle1: TextStyle(color: _textColorLight),
      subtitle2: TextStyle(color: _textColorLight),
      bodyText1: TextStyle(color: _textColorLight),
      bodyText2: TextStyle(color: _textColorLight),
      caption: TextStyle(color: _textColorLight),
      button: TextStyle(color: _textColorLight),
      overline: TextStyle(color: _textColorLight),
    ),
    buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.accent),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: AppColors.green,
      foregroundColor: Colors.white,
    ),
    buttonColor: _textColorDark,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: AppColors.green[50],
  )
};
