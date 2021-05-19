import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_app/customIcons.dart';

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
  final List<String> events = [
    "Events 1",
    "Events 2",
    "Events 3",
    "Events 4",
    "Events 5",
    "Events 6",
    "Events 7",
    "Events 8",
    "Events 9",
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

      // Задача - получить список.
      // body: ListView(
      //   padding: EdgeInsets.all(40),

      // Можно определить физику прокрутки. Тоесть, как список будет себя вести при достижении максимальной степени прокрутки.
      // physics: BouncingScrollPhysics(),
      //* Возможно также полностью остановить прокрутку.nn
      // physics: NeverScrollableScrollPhysics(),

      //* Меняет направления скролинга виджетов (в данном случае - Горизонтальное)
      // ! По умолчанию (если не использовать scrollDirection) - вертикальное.
      // scrollDirection: Axis.horizontal,

      // Изменить порядок отрисовки элементов в списке.
      // reverse: true,

      // Задача: Пройтись по списку строк и из каждой строки получить виджет (чтобы сделать список виджетов).
      // map - используется для применения функции для каждого эл-та списка.
      // *е - это строка.
      // * Так как нужен виджет - то воспользуюсь виджетом Text(передам строку как аргумент)
      // * Метод toList() - представляет список.
      //   children: events
      //       .map((e) => Text(
      //             e,
      //             style: TextStyle(fontSize: 50),
      //           ))
      //       .toList(),
      // ),

      // Конструктор для работы с большими коллекциями. Так как создаются только те виджеты, которые в данный момент на
      // экране.
      // При скроле - элементы, что уходят за границу уничтожаются, а новые будут воссозданы.
      // ! Прочерк ставится вместо того параметра, который должен быть передан для этой функции, но
      //   по какой-то причине его не нужно передавать.
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(20),

        // itemCount - нужен для устранения ошибки - выпадания за пределы списка элементов.
        // Считает кол-во элементов списка и выводит их.
        itemCount: events.length,
        
        itemBuilder: (_, index) => Text(
          // В функции нет элемента, второй параметр - это Index.
          // выводит элементы списка по их индексу
          events[index],

          //выводит индекс элементов списка как строковый тип данных.
          // index.toString(),
          style: TextStyle(fontSize: 80),
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
