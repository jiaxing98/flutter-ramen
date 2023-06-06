import 'package:flutter/material.dart';
import 'package:flutter_ramen/presentation/shared/widgets/ramen_app_bar.dart';
import 'package:lb_flutter_utilities/widgets/webview.dart';

class WebViewPage extends StatelessWidget {
  const WebViewPage(this.args, {super.key});

  final WebViewPageArgs args;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: RamenAppBar(
        title: args.title,
      ),
      body: LbWebView(
        initialUrl: Uri.encodeFull(args.url),
      ),
    );
  }
}

class WebViewPageArgs {
  WebViewPageArgs({
    required this.title,
    required this.url,
  });

  final String title;
  final String url;
}
