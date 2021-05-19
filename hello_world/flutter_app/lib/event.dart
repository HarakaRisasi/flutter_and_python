import 'package:flutter/cupertino.dart';

class Event {
  // late - говорит о том, что переменная будет инициализирована позже.
  // У события должно быть название.
  late String name;

  // У события должно быть место.
  late String location;

  // У события должна быть дата начала.
  late DateTime startDateTime;

// По умолчанию конструкторы класса создают и возвращают новый объект этого класса.
// Но, возможно, не всегда потребуется создавать новый объект класса.
// Возможно, мы захотим использовать и возвращать из конструктора уже имеющийся объект.
// Для этой цели в языке Dart применяются фабричные конструкторы или конструкторы,
// которые предваряются ключевым словом factory.

// Создаем конструктор.
// *Упрощенный способ создать конструктор.
//   Event({required this.name, required this.location, required this.startDateTime});

  Event({required String name, required String location, required DateTime startDateTime}) {
      // Теперь нужно взять полученные значения и установить их в поля класса.
      // this.name - обращаюсь к полю класса late String name.
      // и присваиваю ему значение переданное через аргумент
      // или(пришедшее в качестве параметра), String name.
    this.name = name;
    this.location = location;
    this.startDateTime = startDateTime;
  }
}

// Теперь при создании нового объекта,
// можно в качестве параметров указать (name, location, startDateTime)
// var e = Event("e1", "l1", DateTime.now());