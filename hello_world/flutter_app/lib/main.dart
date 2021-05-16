import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      body: RichText(
        // Виджет RiachText может помочь - изменить стиль, только у отдельной части текста.
        text: TextSpan(
          // Контейнер - может использоваться для стилизации.
          // Виджет TextSpan имеет св-ва text и children: <тип объектов которые передаются данному свойству>[],
          style: GoogleFonts.lobster(
            textStyle: TextStyle(
              fontSize: 30.00,
              // color: Color(0xFFA94AF3) // If I want to use the HEX color code.
              color: Colors.yellowAccent,
            ),
          ),
          children: <TextSpan>[
            TextSpan(text: 'Hello,'),
            TextSpan(text: 'World', style: TextStyle(color: Colors.green[200])),
            TextSpan(text: '!')
            // TextSpan() - можно до бесконечности встраивать в каждый виджет и подвиджетbuild()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(child: Text("ADD")),
      backgroundColor: Color(0x612FDFEE),
    );
  }
}
