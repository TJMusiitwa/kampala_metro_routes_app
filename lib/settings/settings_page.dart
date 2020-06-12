import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: Text('Settings'),
        automaticallyImplyLeading: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Card(
              child: ListTile(
                leading: Icon(context.platformIcons.tag),
                title: Text('About App'),
                onTap: () => showLicensePage(context: context),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(context.platformIcons.info),
                title: Text('FAQ'),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(context.platformIcons.share),
                title: Text('Share App'),
                subtitle: Text('Help someone today, and share this app'),
                onTap: () {},
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(context.platformIcons.mail),
                title: Text('Contact the developer'),
                subtitle: Text('jonamusiitwa@outlook.com'),
                onTap: () async {},
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(context.platformIcons.reply),
                title: Text('Share your feedback'),
              ),
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Text('Developed by Jonathan Thomas Musiitwa'))
          ],
        ),
      ),
    );
  }
}
