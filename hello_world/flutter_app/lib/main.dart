import 'package:flutter/cupertino.dart';
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
      // С помощью ROW можно распологать виджеты горизонтально.
      body: Row(
        // Предвижение по главной оси(Х)
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // Смещение виджетов к оси.
        crossAxisAlignment: CrossAxisAlignment.end,
        //
        //
        // Линия выравнивания текста.
        // crossAxisAlignment: CrossAxisAlignment.baseline,
        //
        // Выравнивание текста по нижней линии самого текста.
        // textBaseline: TextBaseline.alphabetic,
        // Выравнивание текста по нижней границе текстового пространства.
        // textBaseline: TextBaseline.ideographic,

        children: [
          Container(
            color: Colors.blue,
            padding: EdgeInsets.all(50),
            // Если в контейнере не содержиться объект, то контейнер автоматически заполняет собой все поле выделенное ему.
            child: Text("1"),
          ),
          Container(
            color: Colors.red,
            padding: EdgeInsets.all(40),
            child: Text("2"),
          ),
          Container(
            color: Colors.green,
            padding: EdgeInsets.all(50),
            child: Text("3"),
          )
        ],

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
