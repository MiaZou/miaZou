import 'package:flutter/material.dart';
import '../components/intro.dart';
import '../components/skills.dart';
import '../components/contact.dart';
import '../components/experiences.dart';

class Control extends StatefulWidget {
  static const String id = 'control';
  @override
  _ControlState createState() => _ControlState();
}

class _ControlState extends State<Control> {
  final components = [Intro(), Experiences(), Skills(), Contact()];
  int _currIndex = 0;

  onTap(int index) => {
        setState(() {
          _currIndex = index;
        })
      };

  buildBottomNavItem(icon, textMsg) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      title: Text(textMsg),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(child: components[_currIndex]),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            buildBottomNavItem(Icons.account_box, 'Intro'),
            buildBottomNavItem(Icons.add_to_queue, 'Projects'),
            buildBottomNavItem(Icons.adb, 'Skills'),
            buildBottomNavItem(Icons.contact_mail, 'Contact'),
          ],
          currentIndex: _currIndex,
          onTap: onTap),
    );
  }
}
