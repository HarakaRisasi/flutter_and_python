import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_app/customIcons.dart';

void main() => runApp(HarakaTestApp());
// runApp делает переданный ей виджет, корневым виджетом дерева.
// Поскольку MaterialApp - это высокоуровневый виджет, то передаем его непосредственно в ф-ю runApp().

class HarakaTestApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "HarakaTestApp",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home - это виджет, который отобразит все, что будет на экране при старте.
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Реализует базовую структуру визуального макета материального дизайна.
      appBar: AppBar(
        title: Text("Flutter tutorial", style: GoogleFonts.raleway()),
        centerTitle: true,
        backgroundColor: Colors.black38,
      ),
      body: Padding(
        // Padding - будет по 100 со всех сторон.
        // padding: EdgeInsets.all(100) ,
        // Padding fromLTRB - указывает расстояние со всех сторон.
        padding: EdgeInsets.fromLTRB(80, 20, 80, 20),
        child: IconButton(
          icon: Icon(
            MyFlutterApp.access_alarm,
            // Был перечеркнутый квадрат вместо иконки, помогла остановка приложения (Ctrl+F2) и запуска (Shift+F10).
          ),
          color: Colors.blue,
          iconSize: 100.0,
          // onPresses - это callback который срабатывает при нажатии.
          // () - синтаксис анонимной функции.
          onPressed: () {
            print("Button has been pressed.");
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("ADD"),
        onPressed: () {
          print("Hello, you did it?");
        },
        // onPressed: null, - если не требуется передавать классу колбэк то заполняем
        // функцию значением null.
      ),
      backgroundColor: Color(0x612FDFEE),
    );
  }
}
