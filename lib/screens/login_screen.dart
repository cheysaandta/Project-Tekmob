import 'package:flutter/material.dart';
import '../widgets/custom_textfield.dart';
import '../widgets/custom_button.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login to your account'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(
              labelText: 'Email Address',
              hintText: 'Enter Email',
            ),
            CustomTextField(
              labelText: 'Password',
              hintText: 'Password',
              obscureText: true,
            ),
            SizedBox(height: 20),
            CustomButton(
              text: 'Sign In',
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/home');
              },
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
              child: Text("Don't have an account? Register"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/reset-password');
              },
              child: Text('Forgot password?'),
            ),
          ],
        ),
      ),
    );
  }
}
