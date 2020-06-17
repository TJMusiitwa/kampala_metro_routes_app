import 'package:feedback/feedback.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: Text('Settings'),
        automaticallyImplyLeading: true,
      ),
      iosContentPadding: true,
      body: SingleChildScrollView(
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
                onTap: () => Share.share(
                    'Hey there download the Kampala Metro Routes App and don\'t get lost again.☺'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(context.platformIcons.mail),
                title: Text('Contact the developer'),
                subtitle: Text('jonamusiitwa@outlook.com'),
                onTap: () async => launch(
                    'mailto:jonamusiitwa@outlook.com?subject=Feedback%20on%20the%20app&body=Hey%20there%20Jonathan%20reaching%20out%20regarding%20the%20app'),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(context.platformIcons.reply),
                title: Text('Report a problem'),
                onTap: () => BetterFeedback.of(context).show(),
              ),
            ),
            PlatformButton(
              child: Text('Switch to Cupertino'),
              onPressed: () =>
                  PlatformProvider.of(context).changeToCupertinoPlatform(),
            ),
            PlatformButton(
              child: Text('Switch to Material'),
              onPressed: () =>
                  PlatformProvider.of(context).changeToAutoDetectPlatform(),
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
