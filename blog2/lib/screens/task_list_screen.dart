import 'package:flutter/material.dart';
import 'dart:math';

// Task data model (Replace this with your actual model)
class Task {
  final String title;
  final String description;

  Task(this.title, this.description);
}

class TaskListScreen extends StatefulWidget {
  @override
  _TaskListScreenState createState() => _TaskListScreenState();
}

class _TaskListScreenState extends State<TaskListScreen> {
  // Sample list of tasks (Replace this with your actual task list)
  List<Task> tasks = [
    Task('Task 1', 'Description for Task 1'),
    Task('Task 2', 'Description for Task 2'),
    Task('Task 3', 'Description for Task 3'),
  ];

  // Function to generate a random light color for the sticky notes
  Color _getRandomColor() {
    final random = Random();
    int red = random.nextInt(200) + 56; // Lighter red (56-255)
    int green = random.nextInt(200) + 56; // Lighter green (56-255)
    int blue = random.nextInt(200) + 56; // Lighter blue (56-255)

    return Color.fromARGB(255, red, green, blue);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                icon: Icon(Icons.close),
                onPressed: () {
                  // Implement logic to close the TaskListScreen
                  Navigator.pop(context);
                },
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView.builder(
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: _buildTaskItem(tasks[index]),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTaskItem(Task task) {
    final randomColor = _getRandomColor();

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16.0),
      decoration: BoxDecoration(
        color: randomColor,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: ListTile(
        title: Text(
          task.title,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          task.description,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
