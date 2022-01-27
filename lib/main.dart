import 'package:flutter/material.dart';
import 'package:study_todo_app/help_add_screen.dart';
import 'package:study_todo_app/notes_home_screen.dart';
import 'package:study_todo_app/settings_add_screen.dart';

void main() {
  runApp(const StudyTodoApp());
}

class StudyTodoApp extends StatefulWidget {
  const StudyTodoApp({Key? key}) : super(key: key);

  @override
  _StudyTodoAppState createState() => _StudyTodoAppState();
}

class _StudyTodoAppState extends State<StudyTodoApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        initialRoute: '/',
        routes: {
        '/': (context) => const NotesHomeScreen(),
        '/settings': (context) => const SettingsAddScreen(),
        '/help': (context) => const HelpAddScreen(),
        },
    );
  }
}