import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            ListTile(
              title: Text('Push Notification'),
              trailing: Switch(value: true, onChanged: (value) {}),
            ),
            ListTile(
              title: Text('Location'),
              trailing: Switch(value: true, onChanged: (value) {}),
            ),
            ListTile(
              title: Text('Language'),
              trailing: DropdownButton<String>(
                value: 'English (US)',
                items: <String>['English (US)', 'Indonesia', 'Thailand', 'Chinese']
                    .map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (String? newValue) {},
              ),
            ),
            ListTile(
              title: Text('Privacy Policy'),
              onTap: () {},
            ),
            ListTile(
              title: Text('Terms and Conditions'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
