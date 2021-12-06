import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class OpusScreen extends StatefulWidget {
  static const String id = 'opus_screen';
  const OpusScreen({Key? key}) : super(key: key);

  @override
  _OpusScreenState createState() => _OpusScreenState();
}

class _OpusScreenState extends State<OpusScreen> {
  final _key = UniqueKey();
  final _url = 'http://172.16.132.101/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: WebView(
                  key: _key,
                  javascriptMode: JavascriptMode.unrestricted,
                  initialUrl: _url,
              ),
            )
          ],
        ),
      ),
    );
  }
}
