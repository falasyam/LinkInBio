import 'package:flutter/material.dart';
import 'package:link/page/home.dart';
import 'package:link/config/themes.dart';
import 'package:link/widgets/theme_inherited_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
   @override
  Widget build(BuildContext context) {
    return ThemeSwitcherWidget(
      initialDarkModeOn: false,
      child: MainActivity(),
    );
  }
}

class MainActivity extends StatelessWidget {
  const MainActivity({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fala Syam',
      theme:ThemeSwitcher.of(context).isDarkModeOn?darkTheme(context):lightTheme(context),
      home: Home(),
    );
  }
}
