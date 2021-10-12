import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius:
              BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
        ),
        child: Material(
          elevation: 10,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          child: BottomNavigationBar(
            fixedColor: Colors.grey[800],
            elevation: 0,
            backgroundColor: Colors.transparent,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.menu,
                  ),
                  label: 'Gesamtansicht'),
              BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Gesamtansicht'),
            ],
          ),
        ));
  }
}
