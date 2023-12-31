import 'package:blog1/screens/register_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _handleLogin() {
    // Implement login functionality here
    String email = _emailController.text;
    String password = _passwordController.text;

    // Add logic to validate the user's input
    // For this example, we assume the login is successful
    print('Logged in with email: $email');
  }

  void _onLoginSuccess(BuildContext context) {
    // Perform any login logic here
    // If login is successful, navigate to the TaskListScreen
    Navigator.pushNamed(context, '/taskList');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set background color to white
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Login',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 32),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  prefixIcon: Icon(Icons.mail),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 32),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Simulate successful login for this example
                    _onLoginSuccess(context);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orangeAccent, // Set background color to light orange
                    padding: EdgeInsets.symmetric(vertical: 16), // Increase button size
                  ),
                  child: Text(
                    'Login',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              SizedBox(height: 32),
              // ElevatedButton(
              //   onPressed: () {
              //     Navigator.push(
              //       context,
              //       MaterialPageRoute(builder: (context) => RegistrationScreen()),
              //     );
              //   },
              //   style: ElevatedButton.styleFrom(
              //     primary: Colors.blue, // Customize the button color as desired
              //     padding: EdgeInsets.symmetric(vertical: 16),
              //   ),
              //   child: Text(
              //     'New User',
              //     style: TextStyle(fontSize: 18),
              //   ),
              // ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RegistrationScreen()),
                  );
                },
                child: Text(
                  'New User',
                  style: TextStyle(fontSize: 18, color: Colors.green), // Set text color to green
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
