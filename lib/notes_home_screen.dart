import 'package:flutter/material.dart';
import 'navigation_drawer_widget.dart';

class NotesHomeScreen extends StatefulWidget {
  const NotesHomeScreen({Key? key}) : super(key: key);

  @override
  _NotesHomeScreenState createState() => _NotesHomeScreenState();
}
    bool _push = false;
    bool _push2 = false;
    bool _push3 = false;

class _NotesHomeScreenState extends State<NotesHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
        BottomNavigationBarItem(
        icon: Icon(Icons.search),
    title: Text("Поиск"),
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.add_alert_rounded),
    title: Text("Напоминания"),
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.add_circle_outline_sharp),
    title: Text("Добавить"),
    )
    ],),
        drawer: navDrawer(context),
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text('Список дел'),
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.volume_off)),
            TextButton(onPressed: () {}, child: Text('Help'),
              style: TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary),
            ),
          ],
        ),

      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          children: [
            Row(
              children: [
                Checkbox(value: _push, onChanged: (val) {
                  setState(() {
                    _push = !_push;
                  });
                }),
                const Text('Test Version',
                style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(value: _push2, onChanged: (val) {
                  setState(() {
                    _push2 = !_push2;
                  });
                }),
                const Text('Test Version',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(value: _push3, onChanged: (val) {
                  setState(() {
                    _push3 = !_push3;
                  });
                }),
                const Text('Test Version',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),

          ],
        ),
      ),

    );
  }
}
