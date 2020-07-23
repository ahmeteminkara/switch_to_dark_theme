import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:switch_to_dark_theme/blocs/theme.dart';
import 'package:switch_to_dark_theme/pages/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ThemeChanger>(
      builder: (_) => ThemeChanger(ThemeData.dark()),
      child: MaterialAppWithTheme(),
    );
  }
}

class MaterialAppWithTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Provider.of<ThemeChanger>(context);

    return MaterialApp(
      title: 'Flutter Theme Changer',
      theme: theme.getTheme,
      home: HomePage(),
    );
  }
}
