import 'package:flutter/material.dart';
import 'package:flutter_1/constants/app_constants.dart';

class MobileHome extends StatefulWidget {
  const MobileHome({Key? key}) : super(key: key);

  @override
  State<MobileHome> createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {
  int _selectedIndex = 0;

  void _itemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget customBottomNavAppBar(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      onTap: _itemTapped,
      elevation: 7,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.circle,
            color: Colors.blue,
          ),
          label: 'Blue',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.circle,
            color: Colors.yellow,
          ),
          label: 'Yellow',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.circle,
            color: Colors.green,
          ),
          label: 'Green',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.circle,
            color: Colors.purple,
          ),
          label: 'Purple',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.circle,
            color: Colors.orange,
          ),
          label: 'Orange',
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: customBottomNavAppBar(context),
      body: Constants.screens.elementAt(_selectedIndex),
    );
  }
}
