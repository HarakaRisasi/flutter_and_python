import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/home_screen.dart';

class HarakaTestApp extends StatelessWidget {
  // Это первый виджет который используется Main()
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "HarakaTestApp",
      // Виджет HomeScreen - накладывает сруктуру на экран.
      home: HomeScreen(),
    );
  }
}


