import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:demo_firebase_app/home_page.dart';

import 'generated/l10n.dart';

// entry point.
void main() => runApp(FitnessApp());

// Класс будет расширять функциональность виджета - StatelessWidget.
// StatelessWidget - не имеют внутреннего состояния (не имеет реактивных параметров, которые бы меняли состояние виджета)
class FitnessApp extends StatelessWidget {
  @override
  // context - будет определять место данного виджета внутри иерархии среди др. виджетов.
  Widget build(BuildContext context) {
    // Widget build должен возвращять MaterialApp()
    return MaterialApp(
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', ''), // English, no country code
        const Locale('ru', ''), // Spanish, no country code
      ],
      // Инстанс класса MaterialApp - будет отвечать за все приложение.
      title: "MyFitnessApp",
      theme: ThemeData(primaryColor: Color.fromRGBO(50, 65, 85, 1)),
      home: HomePage(),
    );
  }
}
