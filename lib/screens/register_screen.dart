import 'package:flutter/material.dart';
import '../widgets/custom_textfield.dart';
import '../widgets/custom_button.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create your new account'),
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
              labelText: 'User Name',
              hintText: 'Enter User Name',
            ),
            CustomTextField(
              labelText: 'Password',
              hintText: 'Password',
              obscureText: true,
            ),
            SizedBox(height: 20),
            CustomButton(
              text: 'Register',
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/home');
              },
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              child: Text("Already have an account? Sign In"),
            ),
          ],
        ),
      ),
    );
  }
}
