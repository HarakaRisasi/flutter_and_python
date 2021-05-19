import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_app/customIcons.dart';
import 'package:flutter_app/event.dart';

void main() => runApp(HarakaTestApp());
// runApp делает переданный ей виджет, корневым виджетом дерева.
// Поскольку MaterialApp - это высокоуровневый виджет, то передаем его непосредственно в ф-ю runApp().

class HarakaTestApp extends StatelessWidget {
  // HarakaTestApp - это StateLess виджет - он не может изменяться в runTime режиме.
  // Соответственно в него нельзя вносить изменения без полной пересборки приложения.

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
  // Final - говорит о том, что значение в список будет установлено только один раз,
  // и в дальнейшем изменяться не будет.
  // <T> - явно указывается тип. Его можно и не указывать.
  //*List - это аналог массива в других ЯП.
  final List<Event> events = [
    Event(name: 'name1', location: 'location1', startDateTime: DateTime.now()),
    Event(name: 'name2', location: 'location2', startDateTime: DateTime.now()),
    Event(name: 'name3', location: 'location3', startDateTime: DateTime.now()),
    Event(name: 'name4', location: 'location4', startDateTime: DateTime.now()),
    Event(name: 'name5', location: 'location5', startDateTime: DateTime.now()),
    Event(name: 'name6', location: 'location6', startDateTime: DateTime.now()),
    Event(name: 'name7', location: 'location7', startDateTime: DateTime.now()),
    Event(name: 'name8', location: 'location8', startDateTime: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Реализует базовую структуру визуального макета материального дизайна.
      appBar: AppBar(
        title: Text("Flutter tutorial", style: GoogleFonts.raleway()),
        centerTitle: true,
        backgroundColor: Colors.black38,
      ),

      body: ListView.builder(
        //* Так как был изменен главный виджет ListView.separate на ListView.builder
        //* нужно сделать HOT RESET.
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(20),

        // itemCount - нужен для устранения ошибки - выпадания за пределы списка элементов.
        // Считает кол-во элементов списка и выводит их.
        itemCount: events.length,

        itemBuilder: (_, index) => Text(
          // В функции нет элемента, второй параметр - это Index.
          // выводит элементы списка по их индексу

          //* Так как теперь элементами коллекции являются события - то,
          // когда по индексу получаю события.
          // Можно вывести по одному методу объекта класса (в данном случае"Event").
          // events[index].name,
          // events[index].startDateTime.toString()

          // Но также можно вывести и несколько\все методы объекта класса Event.
          "$index\n ${events[index].name} - ${events[index].location} - ${events[index].startDateTime.toString()}",
          style: TextStyle(fontSize: 30),
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
