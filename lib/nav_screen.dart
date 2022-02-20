import 'package:flutter/material.dart';
import 'package:timgad/scan_page.dart';
import 'package:timgad/scenes.dart';
import 'custom_tab_bar.dart';
class NavScreen extends StatefulWidget {
  const NavScreen({Key? key}) : super(key: key);

  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = [
    //const ScanPage(),
    const ScanPage(),
    const Scenes(),
  ];
  final List<IconData> _icons = const [
    Icons.home,
    Icons.menu,
  ];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _icons.length,
      child: Scaffold(
        body: IndexedStack(index: _selectedIndex,children: _screens,),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: CustomTabBar(
              icons: _icons,
              selectedIndex: _selectedIndex,
              onTap: (index) => setState(() => _selectedIndex = index)
          ),
        ),
      ),
    );
  }
}
