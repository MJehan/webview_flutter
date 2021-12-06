import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class RumsScreen extends StatefulWidget {
  static const String id = 'rums_screen';
  const RumsScreen({Key? key}) : super(key: key);

  @override
  _RumsScreenState createState() => _RumsScreenState();
}

class _RumsScreenState extends State<RumsScreen> {
  final _key = UniqueKey();
  final _url = 'http://172.20.17.39/rums/login';
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
