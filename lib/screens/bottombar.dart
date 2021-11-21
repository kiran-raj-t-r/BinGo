import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:w/screens/profile.dart';
import 'package:w/screens/requestpage.dart';
import 'package:w/screens/statuspage.dart';

class Userhome extends StatefulWidget {
  const Userhome({Key? key}) : super(key: key);

  @override
  State<Userhome> createState() => _userhomeState();
}

int selectedindex = 0;

class _userhomeState extends State<Userhome> {
  @override
  Widget build(BuildContext context) {
    List<Widget> pages = [
      Request(),
      Status(),
      Profilepage(),
    ];
    return Scaffold(
      extendBody: true,
      body: pages[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        currentIndex: selectedindex,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.green,
        onTap: (value) {
          setState(() {
            selectedindex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(MdiIcons.send),
              label: 'Request',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(MdiIcons.progressClock),
              label: "Status",
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(MdiIcons.account),
              label: "Profile",
              backgroundColor: Colors.white),
        ],
      ),
    );
  }
}
