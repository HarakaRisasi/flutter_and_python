import 'package:flutter/material.dart';
import 'generated/l10n.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        // Через контекст я говорю - надо получить Theme из глобального виджета и достать из Theme .primaryColor.
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          title: Text(S.of(context).material_app_title),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(child: AudioWidget()),
            Container(child: AudioWidget()),
          ],
        ),
      ),
    );
  }
}

class AudioWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          IconButton(icon: Icon(Icons.play_arrow), onPressed: (null)),
          Text('00:37'),
          Slider(value: 0, onChanged: (null)),
          Text('1:15'),
        ],
      ),
    );
  }
}
