import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:calculator/screens/button_screen.dart';
import 'package:calculator/screens/calculate_screen.dart';


class MyHomePage extends StatelessWidget {
  MyHomePage({Key key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: NeumorphicFloatingActionButton(
        child: Icon(Icons.add, size: 30),
        onPressed: () {
          NeumorphicTheme.of(context).themeMode =
                      NeumorphicTheme.isUsingDark(context)
                          ? ThemeMode.light
                          : ThemeMode.dark;
        },
      ),
      backgroundColor: NeumorphicTheme.baseColor(context),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              CalculateScreen(),
              ButtonScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
