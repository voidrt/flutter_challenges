import 'package:flutter/material.dart';
import 'package:flutter_1/constants/app_constants.dart';

class DesktopHome extends StatefulWidget {
  const DesktopHome({Key? key}) : super(key: key);

  @override
  State<DesktopHome> createState() => _DesktopHomeState();
}

class _DesktopHomeState extends State<DesktopHome> {
  int _selectedIndex = 0;

  void _itemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget customNavigationRail(BuildContext context) {
    return NavigationRail(
      selectedIndex: _selectedIndex,
      onDestinationSelected: (int index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      labelType: NavigationRailLabelType.selected,
      destinations: const <NavigationRailDestination>[
        NavigationRailDestination(
          icon: Icon(
            Icons.circle,
            color: Colors.blue,
          ),
          label: Text('Blue'),
        ),
        NavigationRailDestination(
          icon: Icon(
            Icons.circle,
            color: Colors.yellow,
          ),
          label: Text('Yellow'),
        ),
        NavigationRailDestination(
          icon: Icon(
            Icons.circle,
            color: Colors.green,
          ),
          label: Text('Green'),
        ),
        NavigationRailDestination(
          icon: Icon(
            Icons.circle,
            color: Colors.purple,
          ),
          label: Text('Purple'),
        ),
        NavigationRailDestination(
          icon: Icon(
            Icons.circle,
            color: Colors.orange,
          ),
          label: Text('orange'),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        customNavigationRail(context),
        Expanded(
          child: Constants.screens.elementAt(_selectedIndex),
        ),
      ],
    ));
  }
}
