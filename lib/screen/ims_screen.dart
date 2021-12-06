import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ImsScreen extends StatefulWidget {
  static const String id = 'ims_screen';
  const ImsScreen({Key? key}) : super(key: key);

  @override
  _ImsScreenState createState() => _ImsScreenState();
}

class _ImsScreenState extends State<ImsScreen> {
  final _key = UniqueKey();
  final _url = 'http://172.16.132.103/ims/';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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




