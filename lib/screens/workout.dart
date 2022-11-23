import 'package:flutter/material.dart';

class WorkOut extends StatefulWidget {
  const WorkOut({super.key});

  @override
  State<StatefulWidget> createState() => _WorkOut();
}

class _WorkOut extends State<WorkOut> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static final List<Widget> _widgetOptions = <Widget>[
    workOutPage(),
    workOutPage(),
    workOutPage(),
    workOutPage(),
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
        title: const Text('There is endless suffering'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Stats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Workout',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'History',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }

  static Widget workOutPage() {
    return Column(children: const <Widget>[
      Text(
        "Something",
        style: optionStyle,
      ),
      Text(
        "Something",
        style: optionStyle,
      ),
      Text(
        "Something",
        style: optionStyle,
      ),
    ]);
  }
}
