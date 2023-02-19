import 'package:flutter/material.dart';
import 'settings.dart';
import 'setalarm.dart';
import 'home.dart';
import 'group.dart';

class HomePage extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    SetAlarmPage(),
    GroupPage(),
    SettingsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(8, 20, 73, 1),
        title: const Text('Alarm me Cyber'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo[400],
        foregroundColor: Colors.orange,
        elevation: 0,
        onPressed: () {
          _onItemTapped(1);
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 129, 140, 204),
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                _onItemTapped(0);
              },
            ),
            IconButton(
              icon: Icon(Icons.alarm),
              onPressed: () {
                _onItemTapped(1);
              },
            ),
            IconButton(
              icon: Icon(Icons.group),
              onPressed: () {
                _onItemTapped(2);
              },
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                _onItemTapped(3);
              },
            ),
          ],
        ),
      ),
      bottomSheet: SizedBox(height: 15),
    );
  }
}
