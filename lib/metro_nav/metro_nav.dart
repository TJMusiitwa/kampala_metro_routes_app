import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:kampala_metro_routes/map/map_page.dart';
import 'package:kampala_metro_routes/routes/routes_page.dart';
import 'package:kampala_metro_routes/settings/settings_page.dart';

class MetroNav extends StatefulWidget {
  @override
  _MetroNavState createState() => _MetroNavState();
}

class _MetroNavState extends State<MetroNav> {
  int _currentPage = 0;

  var pages = [RoutesPage(), MapPage(), SettingsPage()];
  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      body: SafeArea(child: pages.elementAt(_currentPage)),
      bottomNavBar: PlatformNavBar(
        currentIndex: _currentPage,
        items: [
          BottomNavigationBarItem(
              icon: Icon(context.platformIcons.bus), title: Text('Routes')),
          BottomNavigationBarItem(
              icon: Icon(context.platformIcons.home), title: Text('Map')),
          BottomNavigationBarItem(
              icon: Icon(context.platformIcons.settings),
              title: Text('Settings')),
        ],
        itemChanged: (index) => setState(() => _currentPage = index),
      ),
    );
  }
}
