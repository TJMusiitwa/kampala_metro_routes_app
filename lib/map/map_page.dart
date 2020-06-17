import 'package:flutter/widgets.dart'
    show BuildContext, Center, Text, Widget, StatefulWidget, State;
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart'
    show PlatformAppBar, PlatformCircularProgressIndicator, PlatformScaffold;
import 'package:native_pdf_view/native_pdf_view.dart'
    show PdfController, PdfDocument, PdfView;

class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  PdfController _pdfController;
  @override
  void initState() {
    _pdfController =
        PdfController(document: PdfDocument.openAsset('assets/routes.pdf'));
    super.initState();
  }

  @override
  void dispose() {
    _pdfController.dispose();
    super.dispose();
  }

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
