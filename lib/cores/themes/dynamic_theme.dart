import 'dart:async';

import 'package:my_base_flutter/cores/themes/app_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';

typedef ThemedWidgetBuilder = Widget Function(
    BuildContext context, AppThemeType data);

typedef ThemeDataWithBrightnessBuilder = ThemeData Function(AppThemeType type);

class DynamicTheme extends StatefulWidget {
  const DynamicTheme({
    Key key,
    this.themedWidgetBuilder,
    this.defaultTheme = AppThemeType.Maroon,
  }) : super(key: key);

  /// Builder that gets called when the brightness or theme changes
  final ThemedWidgetBuilder themedWidgetBuilder;

  /// The default brightness on start
  ///
  /// Defaults to `Brightness.light`
  final AppThemeType defaultTheme;

  @override
  DynamicThemeState createState() => DynamicThemeState();

  static DynamicThemeState of(BuildContext context) {
    return context.findAncestorStateOfType<State<DynamicTheme>>();
  }
}

class DynamicThemeState extends State<DynamicTheme> {
  AppThemeType _appThemeType;

  AppThemeType get appThemeType => _appThemeType;
  static const String _sharedPreferencesKey = 'appThemeType';

  @override
  void initState() {
    super.initState();
    _initVariables();
  }

  /// Initializes the variables
  void _initVariables() {
    _appThemeType = widget.defaultTheme;
  }

  /// Sets the new brightness
  /// Rebuilds the tree
  Future<void> setAppThemeType(AppThemeType type) async {
    // Update state with new values
    setState(() {
      _appThemeType = type;
    });
    // Save the brightness
    await _saveAppThemeType(type);
  }

  /// Saves the provided brightness in `SharedPreferences`
  Future<void> _saveAppThemeType(AppThemeType type) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_sharedPreferencesKey, type.index);
  }

  @override
  Widget build(BuildContext context) {
    return widget.themedWidgetBuilder(context, _appThemeType);
  }
}
