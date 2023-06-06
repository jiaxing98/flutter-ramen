import 'package:flutter/material.dart';
import 'package:flutter_ramen/presentation/shared/widgets/ramen_app_bar.dart';
import 'package:lb_flutter_utilities/app/service_collection.dart';
import 'package:pdfx/pdfx.dart';

class PdfViewPage extends StatefulWidget {
  final String content;

  const PdfViewPage(this.content, {super.key});

  @override
  State<PdfViewPage> createState() => _PdfViewPageState();
}

class _PdfViewPageState extends State<PdfViewPage> {
  late PdfController pdfController;

  @override
  void initState() {
    super.initState();

    pdfController = PdfController(
        document: PdfDocument.openData(
            services.strings.decodeFromBase64(widget.content)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const RamenAppBar(
        title: "Terms and Conditions",
        hasBack: true,
      ),
      body: PdfView(
        controller: pdfController,
        onDocumentLoaded: (document) {},
        onPageChanged: (page) {},
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
