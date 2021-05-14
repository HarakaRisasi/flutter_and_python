import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "HarakaTestApp",
      home: Scaffold(
        // Реализует базовую структуру визуального макета материального дизайна.
        appBar: AppBar(
          title: Text("Flutter tutorial"),
          centerTitle: true,
          backgroundColor: Colors.black38,
        ),
        body: Text(
          "Hello World!!!",
          style: TextStyle(
              fontSize: 14.00,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w300,
              decoration: TextDecoration.lineThrough,
              letterSpacing: 3.89,
              // color: Color(0xFFA94AF3) // If I want to use the HEX color code.
              color: Colors.blue[300]),
        ),
        floatingActionButton: FloatingActionButton(
          child: Text("ADD"),
        ),
        backgroundColor: Color(0x612FDFEE),
      ),
    ),
  );
  //runApp делает переданный ей виджет, корневым виджетом дерева.
  // Поскольку MaterialApp - это высокоуровневый виджет, то передаем его непосредственно в ф-ю runApp().
  // home - это виджет (в данном случае - аргумент), который отобразит все, что будет на экране при старте.
}
