import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:kampala_metro_routes/metro_nav/metro_nav.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlatformApp(
      title: 'Kampala Metro Routes',
      home: MetroNav(),
      material: (_, __) => MaterialAppData(
          theme: ThemeData.light().copyWith(
            visualDensity: VisualDensity.adaptivePlatformDensity,
            primaryColor: Colors.white,
            accentColor: Colors.black,
          ),
          darkTheme: ThemeData.dark().copyWith(
            visualDensity: VisualDensity.adaptivePlatformDensity,
            accentColor: Colors.lightBlueAccent,
          ),
          themeMode: ThemeMode.system),
      cupertino: (_, __) => CupertinoAppData(
          theme: CupertinoThemeData(
              primaryColor: CupertinoDynamicColor.withBrightness(
                  color: CupertinoColors.systemBlue,
                  darkColor: CupertinoColors.systemBlue))),
    );
  }
}
