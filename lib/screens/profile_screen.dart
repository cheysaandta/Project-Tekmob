import 'package:flutter/material.dart';
import '../widgets/custom_textfield.dart';
import '../widgets/custom_button.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Settings'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomTextField(
              labelText: 'Full Name',
              hintText: 'Enter Full Name',
            ),
            CustomTextField(
              labelText: 'Date of Birth',
              hintText: 'Enter Date of Birth',
            ),
            CustomTextField(
              labelText: 'Gender',
              hintText: 'Enter Gender',
            ),
            CustomTextField(
              labelText: 'Phone',
              hintText: 'Enter Phone Number',
            ),
            CustomTextField(
              labelText: 'Email',
              hintText: 'Enter Email',
            ),
            SizedBox(height: 20),
            CustomButton(
              text: 'Save',
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
