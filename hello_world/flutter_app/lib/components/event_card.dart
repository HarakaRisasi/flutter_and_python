import 'package:flutter_app/models/event.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EventCard extends StatefulWidget {
  const EventCard({
    Key? key,
    required this.event,
  }) : super(key: key);

  final Event event;

  @override
  // Создаю State который может изменяться, при помощи метода
  // который может изменяться - createState().
  _EventCardState createState() => _EventCardState();
}
// _ - Делает переменную приватной.
class _EventCardState extends State<EventCard> {
  bool _isEnabled = true;


  @override
  Widget build(BuildContext context) {
    return Card(
      // Применить цвет для виджета (*"Лучше все цвета хранить в отдельном файле")
      color: Colors.lightGreenAccent,
      // Применить эффект, который как бы поднимает виджет над базовым пространством.
      elevation: 4,
      // Изменение цвета тени.
      shadowColor: Colors.blue,
      // Увеличение вертикального марджина.
      margin: EdgeInsets.all(10),

      // Создает список плитки.
      child: ListTile(
        enabled: _isEnabled,
        // Заголовок
        title: Text(
          widget.event.name,
          // Изменение стиля заголовка (шрифт)
          style: TextStyle(fontSize: 30),
        ),
        // Дополнительный контент - отображается ниже title.
        subtitle: Text('${widget.event.location} ${widget.event.startDateTime.toString()}'),
        // Виджет (иконка), отображается перед title.
        leading: Icon(
          Icons.local_activity,
          size: 40,
          color: Colors.black,
        ),
        // Виджет (иконка), отображается после title.
        trailing: IconButton(
          icon: _isEnabled ? Icon(Icons.lock_outline): Icon(Icons.lock_open),
          // Повесил колбэк на виджет.
          onPressed: () => setState(() => _isEnabled = !_isEnabled),
        ),

        // Повесить колбэк - на саму карточку, чтобы он срабатывал при нажатии.
        // В консоль будет выводится информация (при помощи функции), когда пользователь коснется плитки.
        // * Это можно использовать, когда обдумываешь как делать логирование действий пользователя.
        onTap: () => print("${widget.event.name} - tap!"),

        // Колбэк на более долгое нажатие.
        onLongPress: () => print("${widget.event.name} - longPress!"),

        // Disable на все нажатия.
        // enabled: false,

        // Это можно использовать, когда надо чтобы пользователь мог выделить объект
        // *(коротким\длинным тапом).
        selected: true,
      ),
    );
  }
}
