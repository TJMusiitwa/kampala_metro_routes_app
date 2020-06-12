import 'package:flutter/widgets.dart'
    show BuildContext, Center, StatelessWidget, Text, Widget;
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart'
    show PlatformAppBar, PlatformCircularProgressIndicator, PlatformScaffold;
import 'package:native_pdf_view/native_pdf_view.dart'
    show PdfController, PdfDocument, PdfView;

class MapPage extends StatelessWidget {
  final _pdfController =
      PdfController(document: PdfDocument.openAsset('assets/routes.pdf'));
  @override
  Widget build(BuildContext context) {
    return PlatformScaffold(
      appBar: PlatformAppBar(title: Text('Route Map')),
      body: PdfView(
          documentLoader: Center(child: PlatformCircularProgressIndicator()),
          controller: _pdfController),
    );
  }
}
