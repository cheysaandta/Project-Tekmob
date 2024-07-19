import 'package:flutter/material.dart';
import '../widgets/custom_textfield.dart';
import '../widgets/custom_button.dart';

class ResetPasswordScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot password?'),
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
            SizedBox(height: 20),
            CustomButton(
              text: 'Continue',
              onPressed: () {
                Navigator.pushNamed(context, '/email-verification');
              },
            ),
          ],
        ),
      ),
    );
  }
}
