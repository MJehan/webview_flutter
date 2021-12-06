import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WmsScreen extends StatefulWidget {
  static const String id = 'wms_screen';
  const WmsScreen({Key? key}) : super(key: key);

  @override
  _WmsScreenState createState() => _WmsScreenState();
}

class _WmsScreenState extends State<WmsScreen> {
  final _key = UniqueKey();
  final _url = 'http://172.20.17.22:8081/Account/Login?ReturnUrl=%2F';
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
                  initialUrl: _url
              ),
            )
          ],
        ),
      ),
    );
  }
}
