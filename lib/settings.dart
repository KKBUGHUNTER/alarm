import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              'General Settings',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Push Notifications',
                  style: TextStyle(fontSize: 16),
                ),
                Switch(
                  value: _isSwitched,
                  onChanged: (value) {
                    setState(() {
                      _isSwitched = value;
                    });
                  },
                ),
              ],
            ),
            const Divider(),
            const Text(
              'Account Settings',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'Change Password',
              style: TextStyle(fontSize: 16),
            ),
            const Divider(),
            const Text(
              'Billing Information',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'Credit Card',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
