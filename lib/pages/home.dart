import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:switch_to_dark_theme/blocs/theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeChanger _themeChanger = Provider.of<ThemeChanger>(context);

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              "github.com/ahmeteminkara",
              style: TextStyle(fontSize: 25),
              textAlign: TextAlign.center,
            ),
            Text(
              "( Provider library used )",
              style: TextStyle(
                fontSize: 15,
                color: Theme.of(context).textTheme.body1.color.withOpacity(0.3),
              ),
              textAlign: TextAlign.center,
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: <Widget>[
                OutlineButton(
                    onPressed: () => _themeChanger.setTheme(ThemeData.dark()),
                    child: Text("Dark")),
                OutlineButton(
                    onPressed: () => _themeChanger.setTheme(ThemeData.light()),
                    child: Text("Light")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
