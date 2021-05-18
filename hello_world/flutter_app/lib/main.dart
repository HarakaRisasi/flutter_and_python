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

      // В данной комбинации виджетов, все они были помещены внутрь контейнера,
      // и разместились внурти его соответственно выравниванию.
      body: Container(
        color: Colors.black54,
        // SizedBox - в данном случае является родительским виджетом,
        // в соответствии с иерархией, его параметры изменят потомков.
        width: 200,
        height: 400,

        // Stack - Позволяет наслаивать виджеты находящиеся по иерархии ниже его.
        // !!! Поскольку во Flutter иерархия виджета позволяет влиять на тех кто ниже,
        // поэтому можно видеть такой результат.
        child: Stack(
          // Выравнивание виджетов.
          alignment: Alignment.center,
          children: [
            Container(
              color: Colors.blue,
              padding: EdgeInsets.all(150),
              // Если в контейнере не содержиться объект, то контейнер автоматически заполняет собой все поле выделенное ему.
              child: Text("1"),
            ),
            Container(
              color: Colors.red,
              padding: EdgeInsets.all(100),
              child: Text("2"),
            ),

            // Position - позволяет менять позицию для конкретного виджета.
            Positioned(
              // от верхнего края контейнера.
              top: -20,
              // от левого края контейнера.
              // bottom: 20,
              left: 15,
              width: 180,

              child: Container(
                color: Colors.green,
                padding: EdgeInsets.all(50),
                child: Text("3"),
              ),
            ),
          ],
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
