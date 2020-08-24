import 'package:flutter/material.dart';
import 'screens/landing.dart';
import 'screens/control.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mia Zou',
      theme: ThemeData(primaryColor: Color(0xFF2d2d2e)),
      initialRoute: Landing.id,
      routes: {
        Landing.id: (context) => Landing(),
        Control.id: (context) => Control(),
      },
    );
  }
}
