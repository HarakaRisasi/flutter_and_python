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

      body: Center(
        child: Container(
          color: Colors.lightGreen,
          width: 400,
          height: 400,
          /**
           * Устанавливает жесткие границы для виджетов внутри контейнера,
           * те виджеты, что не влазят при RoW по горизонтали или при Column
           * по вертикали, wrap выносит в следущий ряд\колонну.
           * */
          child: Wrap(
            // Устанавливает направление (по какой оси) размещения виджетов,
            // внутри контейнера.
            direction: Axis.horizontal,
            // При направлении главной оси .horizontal - spacing >>>
            // Устанавливает пустоту между виджетами по горизонтали.
            spacing: 20,
            // Устанавливает пустоту между виджетами по вертикали.
            runSpacing: 40,
            // Соответственно при .vertical - run и runSpacing инвертируются.

            /*
            * Таким образом можно выровнять виджеты внутри контейнера, не только относительно
            * оси, но также относительно сторон контейнера.**/
            alignment: WrapAlignment.center,
            // Работает по тому же принципу что и runSpacing, только выравнивает виджеты
            // в противоположном для alignment направлении.
            runAlignment: WrapAlignment.center,

            // Выстраивает виджеты в направлении по вертикали (сверху вниз \ снизу вверх)
            verticalDirection: VerticalDirection.up,

            // Выстраивает виджеты в направлении по горизонтали (С лева на право \ с права налево)
            textDirection: TextDirection.rtl,

            children: [
              Container(
                color: Colors.black,
                width: 100,
                height: 100,
                child: Text(
                  "AB",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                color: Colors.red,
                width: 100,
                height: 100,
              ),
              Container(
                color: Colors.red,
                width: 100,
                height: 100,
              ),
              Container(
                color: Colors.black,
                width: 100,
                height: 100,
                child: Text(
                  "BC",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
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
