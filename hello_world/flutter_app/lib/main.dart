import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      body: SvgPicture.asset("assets/img/image2vector.svg", alignment: Alignment, ),
      // При использовании assets - не забыть расскоментировать assets во pubspec.yaml
      floatingActionButton: FloatingActionButton(child: Text("ADD")),
      backgroundColor: Color(0x612FDFEE),
    );
  }
}
