import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class RoutesPage extends StatefulWidget {
  @override
  _RoutesPageState createState() => _RoutesPageState();
}

class _RoutesPageState extends State<RoutesPage>
    with SingleTickerProviderStateMixin {
  TabController _materialTabController;
  int _selectedIndexValue = 0;
  final Map<int, Widget> stationTitles = const <int, Widget>{
    0: Text('OTP'),
    1: Text('NTP'),
    2: Text('UTP'),
    3: Text('City Square'),
    4: Text('Wandegeya'),
    5: Text('Nateete'),
    6: Text('Others'),
  };

  final Map<int, Widget> cupertinoContent = const <int, Widget>{
    0: Text('Old Taxi Park'),
    1: Text('New Taxi Park'),
    2: Text('Usafi Taxi Park'),
    3: Text('City Square'),
    4: Text('Wandegeya'),
    5: Text('Nateete'),
    6: Text('Others'),
  };

  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      material: (context, platform) => MaterialScaffoldData(
          appBar: AppBar(
            title: Text('Routes'),
            bottom: TabBar(
                controller: _materialTabController,
                isScrollable: true,
                tabs: [
                  Tab(text: 'Old Taxi Park'),
                  Tab(text: 'New Taxi Park'),
                  Tab(text: 'Usafi Taxi Park'),
                  Tab(text: 'City Square'),
                  Tab(text: 'Wandegeya'),
                  Tab(text: 'Nateete'),
                  Tab(text: 'Others'),
                ]),
          ),
          body: TabBarView(controller: _materialTabController, children: [
            Text('Old Taxi Park'),
            Text('New Taxi Park'),
            Text('Usafi Taxi Park'),
            Text('City Square'),
            Text('Wandegeya'),
            Text('Nateete'),
            Text('Others'),
          ])),
      cupertino: (context, platform) => CupertinoPageScaffoldData(
        navigationBar: CupertinoNavigationBar(middle: Text('Routes')),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: CupertinoSegmentedControl(
                        children: stationTitles,
                        groupValue: _selectedIndexValue,
                        onValueChanged: (value) =>
                            setState(() => _selectedIndexValue = value)),
                  ),
                  Expanded(child: cupertinoContent[_selectedIndexValue])
                ]),
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _materialTabController = TabController(length: 7, vsync: this);
  }
}
