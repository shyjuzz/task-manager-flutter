import 'package:blog1/screens/login_screen.dart';
import 'package:blog1/screens/task_list_screen.dart';
import 'package:flutter/material.dart';

import 'screens/profile_screen.dart';

void main() {
  runApp(TaskManagerApp());
}

class TaskManagerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task Manager',
      routes: {
        '/': (context) => LoginScreen(), // Your existing login screen
        '/taskList': (context) => TaskListScreen(), // TaskListScreen route
        '/profile': (context) => ProfileScreen(),
      },
    );
  }
}
