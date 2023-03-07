import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
//mettere il nome del progetto al posto di prova
import 'package:prova/screens/screen.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: index,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black.withAlpha(100),
        items: [
          BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {
//click per passare ad altre pagine
                    Navigator.pushNamed(context, HomeScreen.routeName);
                  },
                  icon: const Icon(Icons.home)),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, discoverScreen.routeName);
                  },
                  icon: const Icon(Icons.person)),
              label: 'Cerca'),
          BottomNavigationBarItem(
              icon: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, articleScreen.routeName);
                  },
                  icon: const Icon(Icons.search)),
              label: 'Profilo')
        ]);
  }
}
