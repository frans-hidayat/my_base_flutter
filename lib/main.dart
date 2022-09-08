import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:my_base_flutter/cores/themes/app_theme.dart';
import 'package:my_base_flutter/cores/themes/dynamic_theme.dart';
import 'package:my_base_flutter/features/main_screen.dart';
import 'package:my_base_flutter/generated/l10n.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  int appThemeIndex = prefs.getInt("appThemeType") ?? AppThemeType.maroon.index;
  runApp(MyApp(appThemeIndex));
}

class MyApp extends StatelessWidget {
  final int appThemeIndex;

  MyApp(this.appThemeIndex);

  @override
  Widget build(BuildContext context) {
    return DynamicTheme(
      defaultTheme: AppThemeType.values[appThemeIndex],
      themedWidgetBuilder: (context, type) {
        return MaterialApp(
          title: 'FraMe',
          theme: appTheme[type],
          locale: const Locale('id'),
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: AppLocalizations.delegate.supportedLocales,
          routes: {
            '/': (context) => MainScreen(),
          },
          initialRoute: '/',
        );
      },
    );
  }
}
