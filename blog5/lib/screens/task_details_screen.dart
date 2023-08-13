import 'package:blog1/screens/task_list_screen.dart';
import 'package:flutter/material.dart';

class TaskDetailsScreen extends StatefulWidget {
  final Task task;

  TaskDetailsScreen({required this.task});

  @override
  _TaskDetailsScreenState createState() => _TaskDetailsScreenState();
}

class _TaskDetailsScreenState extends State<TaskDetailsScreen> {
  // Sample task details (Replace this with your actual task data)
  String taskTitle = 'Sample Task';
  String taskDescription = 'This is a sample task description.';
  String dueDate = '2023-08-01';
  String priority = 'High';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              taskTitle,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              taskDescription,
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Due Date: $dueDate',
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'Priority: $priority',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement logic to edit task details
                // For example, you can use Navigator.push to navigate to the edit screen
                // Navigator.push(context, MaterialPageRoute(builder: (context) => EditTaskScreen()));
              },
              child: Text('Edit Task'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Implement logic to mark task as complete
                // For example, you can update the task status in your data model
                // and then navigate back to the previous screen or the task list.
                Navigator.pop(context);
              },
              child: Text('Mark as Complete'),
            ),
          ],
        ),
      ),
    );
  }
}
