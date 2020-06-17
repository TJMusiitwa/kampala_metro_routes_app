import 'package:feedback/feedback.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:kampala_metro_routes/metro_nav/metro_nav.dart';

void main() {
  runApp(
    BetterFeedback(
      onFeedback: alertFeedbackFunction,
      backgroundColor: Colors.grey,
      drawColors: [Colors.red, Colors.green, Colors.blue, Colors.yellow],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlatformProvider(
      builder: (_) => PlatformApp(
        title: 'Kampala Metro Routes',
        home: MetroNav(),
        localizationsDelegates: <LocalizationsDelegate<dynamic>>[
          DefaultMaterialLocalizations.delegate,
          DefaultWidgetsLocalizations.delegate,
          DefaultCupertinoLocalizations.delegate,
        ],
        material: (_, __) => MaterialAppData(
            theme: ThemeData.light().copyWith(
              visualDensity: VisualDensity.adaptivePlatformDensity,
              primaryColor: Colors.teal,
              accentColor: Colors.black,
            ),
            darkTheme: ThemeData.dark().copyWith(
              visualDensity: VisualDensity.adaptivePlatformDensity,
              accentColor: Colors.lightBlueAccent,
            ),
            themeMode: ThemeMode.light),
        cupertino: (_, __) => CupertinoAppData(
            theme: CupertinoThemeData(
                primaryColor: CupertinoDynamicColor.withBrightness(
                    color: CupertinoColors.systemTeal,
                    darkColor: CupertinoColors.systemBlue))),
      ),
    );
  }
}
