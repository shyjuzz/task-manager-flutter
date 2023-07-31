import 'package:flutter/material.dart';

class TaskCreationScreen extends StatefulWidget {
  @override
  _TaskCreationScreenState createState() => _TaskCreationScreenState();
}

class _TaskCreationScreenState extends State<TaskCreationScreen> {
  final _formKey = GlobalKey<FormState>();
  String _title = '';
  String _description = '';
  String _dueDate = '';
  String _priority = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _buildForm(), // Build the form content
          _buildCloseButton(), // Build the close button
        ],
      ),
    );
  }

  Center _buildForm() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Title',
                  border: OutlineInputBorder(), // Add border to the TextFormField
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a title';
                  }
                  return null;
                },
                onSaved: (value) {
                  _title = value!;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Description',
                  border: OutlineInputBorder(), // Add border to the TextFormField
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a description';
                  }
                  return null;
                },
                onSaved: (value) {
                  _description = value!;
                },
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Due Date',
                  border: OutlineInputBorder(), // Add border to the TextFormField
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a due date';
                  }
                  return null;
                },
                onSaved: (value) {
                  _dueDate = value!;
                },
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Priority',
                  border: OutlineInputBorder(), // Add border to the TextFormField
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a priority';
                  }
                  return null;
                },
                onSaved: (value) {
                  _priority = value!;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Save the task when the button is clicked
                  _saveTask();
                },
                child: const Text('Save Task'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.orangeAccent, // Set the background color to light orange
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _saveTask() {
    // Validate form input
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      // TODO: Implement logic to save the task using the _title, _description, _dueDate, and _priority variables.

      // After saving, you can navigate back to the previous screen or the task list.
      Navigator.pop(context);
    }
  }
  Widget _buildCloseButton() {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        margin: EdgeInsets.only(top: 100),
        child: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            // Handle the close button action, such as navigating back
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
