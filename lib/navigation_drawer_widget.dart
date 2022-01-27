import 'package:flutter/material.dart';

    Widget navDrawer(context) => Drawer (

    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.blueGrey,
            ),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    child: Image.network('https://upload.wikimedia.org/wikipedia/commons/4/47/PNG_transparency_demonstration_1.png'),
                  ),
                  const Text('Мои заметки и список дел',
                    style: TextStyle(fontSize: 18),),
                ],
              ),
            )),

        ListTile(
          trailing: Text('Заметки'),
          leading: const Icon(Icons.home),
          title: const Text('Notes'),
          onTap: () {
            Navigator.pushNamed(context, '/');
          },
        ),

        ListTile(
          trailing: Text('Справка'),
          leading: const Icon(Icons.help),
          title: const Text('Help'),
          onTap: () {
            Navigator.pushNamed(context, '/help');
          },
        ),

        const Divider(),
        const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Text('Настройки приложения'),
        ),

        ListTile(
          leading: const Icon(Icons.settings),
          title: const Text('Settings'),
          trailing: const Text('Настройки'),
          onTap: () {
            Navigator.pushNamed(context, '/settings');
          },
        ),

      ],
    ),
    );
