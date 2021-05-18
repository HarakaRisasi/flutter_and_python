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
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.blue,
            padding: EdgeInsets.all(50),
            // Если в контейнере не содержиться объект, то контейнер автоматически заполняет собой все поле выделенное ему.
            child: Text("1"),
          ),
          // Что если в контейнере не обернутом виджетом Expanded находится много контента?
          // Проблема решается с того, что этот контейнер оборачивается в Expanded.
          // После чего используется его св-во Flex
          // Flex - представляет собой Flex Factor значение которого по умолчанию равно 1
          // Тут математика долей >>>
          // - Если сумма долей всех контейнеров(в данном случае) = 3,
          //   тоесть каждый контейнер занимает по 1\3 общего пространства.
          //   А значит можно увеличить долю распределения у нужного контейнера.
          // Например поднять ее значение Flex = 2, значит общая сумма долей теперь будет равна 4,
          // а доля моего контейнера будет равна 2/4.
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.red,
              padding: EdgeInsets.all(50),
              child: Text("22222222222222222222222",
                  style: TextStyle(fontSize: 40)),
            ),
          ),

          // Заполнение виджетом всего доступного на главной оси пространства.
          Expanded(
            child: Container(
              color: Colors.green,
              padding: EdgeInsets.all(50),
              child: Text("3"),
            ),
          ),
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
