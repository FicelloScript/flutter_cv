import 'package:flutter/material.dart';

class Device extends StatefulWidget {
  @override
  _DeviceState createState() => _DeviceState();
}

class _DeviceState extends State<Device> {
  int _selectedIndex = 0;

static List<Widget> _widgetOptions = <Widget>[
  Text('Profil Page', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
  Text('Experience Page', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
  Text('Formation Page', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
  Text('Compétence Page', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
  Text('Info Page', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
];


  // Handles navigation bar tap
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
  type: BottomNavigationBarType.fixed, // Ajoute cette ligne
  items: const <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Profil',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.work),
      label: 'Expérience',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.school),
      label: 'Formation',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.computer),
      label: 'Compétence',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.info),
      label: 'Info',
    ),
  ],
  currentIndex: _selectedIndex,
  selectedItemColor: Colors.amber[800],
  onTap: _onItemTapped,
),
    
    );
  }
}
