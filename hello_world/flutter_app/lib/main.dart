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
      body: Column(
        // ***********************************************************************************************////////////
        // body: SizedBox()
        // параметры:
        // expand - расширяет поле виджета на максимум.
        // fromSize - устанавливает размер child виджета по переданному аргументу в child - виджет size.
        // shrink - уменьшает настолько на сколько возможно.
        //
        //   width: 300,
        //   height: 300,
        //   // width: double.infinity,
        //   // height: double.infinity,
        //   child: Container(
        //     color: Colors.lightGreenAccent,
        //     child: Text('Hello'),
        //   ),
        // ),
        // <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<</////////>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.blue,
            padding: EdgeInsets.all(50),
            // Если в контейнере не содержиться объект, то контейнер автоматически заполняет собой все поле выделенное ему.
            child: Text("1"),
          ),

          // ***********************************************************************************************////////////
          // Если нужно поменять расстояние между виджетами(получить пустое пространство).
          // То между ними ставится SizedBox()
          SizedBox(
            height: 200,
          ),
          // <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<</////////>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

          Container(
            color: Colors.red,
            padding: EdgeInsets.all(40),
            child: Text("2"),
          ),

          SizedBox(
            height: 30,
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
