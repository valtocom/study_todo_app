import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'navigation_drawer_widget.dart';

class HelpAddScreen extends StatefulWidget {
  const HelpAddScreen({Key? key}) : super(key: key);

  @override
  _HelpAddScreenState createState() => _HelpAddScreenState();
}

class _HelpAddScreenState extends State<HelpAddScreen> {
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
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 30,),
              SizedBox(
                height: 100,
                  child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/d/d2/Question_mark.svg/800px-Question_mark.svg.png')),
              SizedBox(height: 20,),
              const Text('Чем мы можем Вам помочь?',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30,),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Опишите проблему',
                  icon: Icon(Icons.search_outlined),
                ),
              ),
            ],
          ),
        ),
      ),

    );
  }
}
