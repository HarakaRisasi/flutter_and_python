import 'package:flutter_app/models/event.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/components/event_card.dart';

class HomeScreen extends StatelessWidget {
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

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Создает визуальную основу для виджетов материального дизайна.
    return Scaffold(
    // Создает панель приложения для материального дизайна.
      appBar: AppBar(
        title: Text("Flutter tutorial", style: GoogleFonts.raleway()),
        centerTitle: true,
        backgroundColor: Colors.black38,
      ),

      // Первичное содержимое scaffold.
      body: ListView.builder(
      // Создает прокручиваемый линейный массив виджетов, которые создаются по запросу.
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(20),
        // улучшает способность ListView оценивать максимальныйразмер прокрутки.
        itemCount: events.length,

        // Card - создает Matirial Disign card - оборачивает вложенный виджет в форму.
        itemBuilder: (_, index) => EventCard(event: events[index]),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("ADD"),
        onPressed: () {
          print("Hello, you did it?");
        },
        // onPressed: null, - если не требуется передавать классу колбэк то заполняем
        // функцию значением null.
      ),
    );
  }
}
