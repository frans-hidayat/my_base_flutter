import 'dart:math';

import 'package:flutter/material.dart';
import 'package:my_base_flutter/cores/themes/app_theme.dart';
import 'package:my_base_flutter/cores/themes/dynamic_theme.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Theme"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Text(
              "Text headline1",
              style: Theme.of(context).textTheme.headline1,
            ),
            Text(
              "Text headline2",
              style: Theme.of(context).textTheme.headline2,
            ),
            Text(
              "Text headline3",
              style: Theme.of(context).textTheme.headline3,
            ),
            Text(
              "Text headline4",
              style: Theme.of(context).textTheme.headline4,
            ),
            Text(
              "Text headline5",
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              "Text headline6",
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              "Text subtitle1",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            Text(
              "Text subtitle2",
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(
              "Text bodyText1",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              "Text bodyText2",
              style: Theme.of(context).textTheme.bodyText2,
            ),
            Text(
              "Text caption",
              style: Theme.of(context).textTheme.caption,
            ),
            Text(
              "Text button",
              style: Theme.of(context).textTheme.button,
            ),
            Text(
              "Text overline",
              style: Theme.of(context).textTheme.overline,
            ),
            TextField(),
            RaisedButton(
              onPressed: () {
                DynamicTheme.of(context)
                    .setAppThemeType(AppThemeType.values[Random().nextInt(3)]);
              },
              child: Text("Change Theme"),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
