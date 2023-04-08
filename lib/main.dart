import 'package:flutter/material.dart';
import 'package:flutter_web/pages/home.dart';
import 'config/themes.dart';
import 'package:flutter_web/widgets/theme_inherited_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ThemeSwitcherWidget (
      initialDarkModeOn: false,
      child: WildanFuady(),
    );
  }
}
class WildanFuady extends StatelessWidget {

  const WildanFuady({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  title: 'Your App Title',
  theme: ThemeData(
    primarySwatch: Colors.blue,
    appBarTheme: AppBarTheme(
      textTheme: TextTheme(
        headline6: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  ),
  home: Home(),
);

  }
}