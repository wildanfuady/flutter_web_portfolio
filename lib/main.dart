import 'package:flutter/material.dart';
import 'package:flutter_web/pages/home.dart';
import 'package:flutter_web/widgets/theme_inherited_widget.dart';
import 'config/themes.dart';
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
      debugShowCheckedModeBanner: false,
      title: 'Wildan Fuady',
      theme:ThemeSwitcher.of(context).isDarkModeOn?darkTheme(context):lightTheme(context),
      home: Home(),
    );
  }
}