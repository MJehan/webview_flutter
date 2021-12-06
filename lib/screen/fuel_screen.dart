import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class FuelScreen extends StatefulWidget {
  static const String id = 'fuel_screen';

  @override
  _FuelScreenState createState() => _FuelScreenState();
}

class _FuelScreenState extends State<FuelScreen> {
  final _key = UniqueKey();
  final _url = 'http://172.20.17.22:8090/';

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
