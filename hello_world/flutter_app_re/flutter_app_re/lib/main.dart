// StateLess - статичны. Не имеют внутреннего состояния и зависят только от конфигурационных параметров и от родительских.
// StatelessWidget и StatefulWidgetFull - наследуются от класса Widget.

/**
 * Переопределение метода в объектно-ориентированном программировании —
 * одна из возможностей языка программирования, позволяющая подклассу
 * или дочернему классу обеспечивать специфическую реализацию метода,
 * уже реализованного в одном из суперклассов или родительских классов.
 *
 * Пример:
 * Если в Суперклассе определен метод voice(){ print("Голос")};
 * НО - у класса потомка - этот же(унаследованный) метод принимает значение voice(){ print("Привет-Люди!!!")};
 * Произошло - Переопределение Метода.
 * */

/**
 * Понятие «Материал» — это метафора.
 * Всё в этой дизайн-системе вдохновлено физическим,
 * т.е. нашим реальным миром вместе с его текстурами и поверхностями,
 * включая и тот факт, что свет имеет отражения, а объекты отбрасывают тени.
 * «Материал» можно сказать переосмысливает бумагу и чернила.
 * */

/**
 * Компоненты — это интерактивные строительные блоки для создания пользовательского интерфейса.
 * Они имеют встроенную (по умолчанию) систему состояний, чтобы пользователь понимал когда элемент в фокусе,
 * выбран, активирован или когда произошла ошибка.
 * Также, компоненты передают состояния наведения, нажатия, перетаскивания и отключения.
 * Библиотеки компонентов доступны для Android, iOS, Flutter и интернета.
 *
 * Компоненты охватывают и закрывают широкий спектр интерфейсных потребностей, например:
 *
 * - Отображение: размещение и организация контента с использованием таких компонентов,
 * как карточки (cards), список (list) и набор действий (sheets).
 *
 * - Навигация: позволяет пользователям перемещаться по продукту с помощью таких компонентов,
 *   как боковая панель навигации (navigation drawers) и вкладки (tabs).
 *
 * - Действия: позволяет пользователям выполнять задачи с помощью таких компонентов,
 *   как плавающая кнопка (floating action button сокращенно FAB).
 *
 * - Ввод: позволяет пользователям вводить информацию или делать выбор с помощью таких компонентов,
 *   как текстовые поля, chips (не знаю как перевести) и элементы выбора (чекбоксы, радио-кнопки и свитчеры).
 *
 * - Коммуникация: оповещение пользователей о важной информации и сообщениях с помощью таких компонентов,
 *   как snackbars (не знаю как перевести), баннеры и диалоговые окна.
 */


import 'package:flutter/material.dart';

// - Создаю функцию main()
// - в ней вызываю тот виджет, который будет отображаться при старте приложения.
void main() => runApp(SimpleWidget());

class ScreeWidget extends StatelessWidget {
  const ScreeWidget({Key key}) : super(key: key);
  // Материальный дизайн - это подход к дизайну, который успешно объединил лучшие черты пользовательского опыта и хороший дизайн.
  @override
  Widget build(BuildContext context) {
    // MaterialApp виджет обеспечивает довольно много функциональных возможностей , с поддержкой тем, навигации и локализации.
    return MaterialApp(
    // На данный момент мы устанавливаем только свойство home , указывая первый экран / виджет для отображения - Scaffold
      // home - виджет оформления.
      // Scaffold() - слой представления(на нем располагаются виджеты элементов и оформления).
      home: Scaffold(
        appBar: AppBar,
      ),
    );
  }
}


// Создаю класс, который наследуется от StatelessWidget
class SimpleWidget extends StatelessWidget {
  // Метод переопределяет объявление методов в базовом классе.
  @override
  // Наследуясь от класса StatelessWidget необходимо переопределить метод build.
  // Двоеточие ":" - обратится в конструктор класса и передать туда аргументы.
  Widget build(BuildContext context) {
    // Оборачиваю виджет Text в контейнер.
    return Container(
        //child Дочерний элемент, содержащийся в контейнере.
        child: Center(
          // Виджет build() будет возвращать виджет Text()
          // Передаю в конструктор строку и указываю направление текста.
            child: Text(
      "Hello!",
      textDirection: TextDirection.ltr,
    )));
  }
}
