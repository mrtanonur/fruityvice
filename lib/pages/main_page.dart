import 'package:flutter/material.dart';
import 'package:fruityvice/pages/fruit_page.dart';
import 'package:fruityvice/pages/settings_page.dart';

final List<Widget> pages = [
  const FruitPage(),
  const SettingsPage(),
];

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages.elementAt(selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
            onTap: (int index) {
              setState(() {
                selectedIndex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(
                  label: "fruit", icon: Icon(Icons.agriculture)),
              BottomNavigationBarItem(
                  label: "settings", icon: Icon(Icons.settings))
            ]));
  }
}
