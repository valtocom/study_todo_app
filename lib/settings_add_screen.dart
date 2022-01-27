import 'package:flutter/material.dart';
import 'navigation_drawer_widget.dart';

class SettingsAddScreen extends StatefulWidget {
  const SettingsAddScreen({Key? key}) : super(key: key);

  @override
  _SettingsAddScreenState createState() => _SettingsAddScreenState();
}
  bool _checked = false;
  bool _night = false;

class _SettingsAddScreenState extends State<SettingsAddScreen> {
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
            SizedBox(height: 30,),
            Row(
              children: [
                Text('Ночной режим',
                style: TextStyle(fontSize: 20),
                ),
                Switch(value: _night, onChanged: (val) {
                  setState(() {
                    _night = !_night;
                  });
                }),
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Text('Открыть общий доступ',
                  style: TextStyle(fontSize: 20),
                ),
                Switch(value: _checked, onChanged: (val) {
                  setState(() {
                    _checked = !_checked;
                  });
                }),
              ],
            ),
            SizedBox(
              height: 30,),
            Text('О приложении',
            style: TextStyle(color: Colors.blue, fontSize: 16),),
            SizedBox(
              height: 10,),
            InkWell(
              child: Text('Версия приложения',
                style: TextStyle(fontSize: 20),),
              onTap: () {},
            ),
            SizedBox(
              height: 10,),
            InkWell(
              child: Text('Лицензии',
                style: TextStyle(fontSize: 20),),
              onTap: () {},
            ),
          ],
        ),
      ),

    );
  }
}
