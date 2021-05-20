# flutter_and_python
Полезное о Flutter.

- Фреймворк с открытым исходным кодом для разработки приложений на Android и IOS.
- Все приложения пишутся на языке Dart.
- Главным приимуществом является HotReload.
- Движок написан на C++.
- Для рендеринга Flutter использует графическую библиотеку - Google Skia.
- Все элементы, которые рендерятся на устройстве, представляют собой виджеты.
- Сам фреймворк состоит из двух наборов виджетов, соответствующих конкретным описаниям дизайна:
  MaterialDisign от Google и Cupetino для имитации дизайна приложений в IOS.

Виджеты:
- Основная идея заключается в том, что разработчик создает пользовательский интерфейс из виджетов.
- Часть виджетов находится во фреймворке (AppBar, Text, Button, ....).
- Другую часть нужно составить самостоятельно из готовых деталей (как в конструкторе.)
- Виджеты бывают 2-х типов

--StateLess - статичны.
  Не имеют внутреннего состояния и зависят только от конфигурационных параметров и от родительских.
--SteteFull - поддерживают изменение состояния.
  Являются динамическими и могут изменить свой внешний вид в зависимости от какого-нибудь
  события вызванного действием пользователя или когда он получает данные (CheckBox, Slider, Radio, TextField).

Dart
- это ОО язык программирования. Позиционируется как замена JS.
