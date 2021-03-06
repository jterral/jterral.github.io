import 'package:flutter/material.dart';

import 'cityparkings/cityparkings_screen.dart';
import 'home/home_screen.dart';
import 'theme/theme.dart';

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      key: ValueKey('MainApp'),
      theme: JootlTheme.main,
      title: "Jonathan Terral",
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(key: ValueKey('HomeScreen')),
        '/cityparkings': (context) =>  CityParkingsScreen(key: ValueKey('CityScreen')),
        '/cityparkings/privacy-policy': (context) =>  CityParkingsScreen(key: ValueKey('CityScreen')),
        '/cityparkings/support': (context) =>  CityParkingsScreen(key: ValueKey('CityScreen'))
      }
    );
  }
}