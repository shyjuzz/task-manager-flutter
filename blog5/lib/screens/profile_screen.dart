import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String _name = 'John Doe';
  String _profilePicture = 'assets/default_profile_picture.png';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                _updateProfilePicture();
              },
              child: CircleAvatar(
                backgroundImage: AssetImage(_profilePicture),
                radius: 60,
              ),
            ),
            SizedBox(height: 20),
            Text(
              '$_name',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _editProfileDetails();
              },
              child: Text('Edit Profile'),
            ),
          ],
        ),
      ),
    );
  }

  void _updateProfilePicture() {
    // Logic to update profile picture
    setState(() {
      _profilePicture = 'assets/updated_profile_picture.png';
    });
  }

  void _editProfileDetails() async {
    String? newName; // Declare newName variable here
    // Display a dialog to edit profile details
    newName = await showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Edit Profile'),
          content: TextField(
            decoration: InputDecoration(labelText: 'New Name'),
            onChanged: (value) {
              // Update the new name as the user types
              newName = value;
            },
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, newName);
              },
              child: Text('Save'),
            ),
          ],
        );
      },
    );

    if (newName != null && newName!.isNotEmpty) {
      setState(() {
        _name = newName!;
      });
    }
  }
}

