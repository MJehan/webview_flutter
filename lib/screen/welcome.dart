import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:multi_app/screen/rums_screen.dart';
import 'package:multi_app/screen/wms_screen.dart';

import 'fuel_screen.dart';
import 'ims_screen.dart';
import 'opus_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  static const String id = 'welcome_screen';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                'images/scomlogo.jpg',
                width: 300.0,
                height: 140.0,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 50.00),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(20.00),
                      child: TextButton.icon(
                        style: TextButton.styleFrom(
                          textStyle: const TextStyle(color: Color(0x00008ad2)),
                          backgroundColor: Colors.lightBlue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        onPressed: () =>
                            {Navigator.pushNamed(context, ImsScreen.id)},
                        icon: const Icon(Icons.inventory,
                            size: 70.00, color: Colors.white),
                        label: const Text(
                          'IMS',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.00,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 1.0),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(20.00),
                      child: TextButton.icon(
                        style: TextButton.styleFrom(
                          textStyle: const TextStyle(color: Colors.deepPurple),
                          backgroundColor: Colors.lightBlue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        onPressed: () =>
                            {Navigator.pushNamed(context, WmsScreen.id)},
                        icon: const Icon(Icons.account_balance,
                            size: 70.00, color: Colors.white),
                        label: const Text(
                          'WMS',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.00,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(20.00),
                    child: TextButton.icon(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(color: Colors.deepPurple),
                        backgroundColor: Colors.lightBlue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      onPressed: () =>
                          {Navigator.pushNamed(context, OpusScreen.id)},
                      icon: const Icon(Icons.dashboard,
                          size: 70.00, color: Colors.white),
                      label: const Text(
                        'OPUS',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.00,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(20.00),
                    // decoration: const BoxDecoration(
                    //   gradient: LinearGradient(
                    //     colors: [Colors.blue, Colors.lightBlue],
                    //     begin: FractionalOffset.centerLeft,
                    //     end: FractionalOffset.centerRight,
                    //   ),
                    // ),
                    // child: TextButton.icon(
                    //   onPressed: () =>
                    //       {Navigator.pushNamed(context, RumsScreen.id)},
                    //   icon: const Icon(Icons.all_inbox_outlined,
                    //       size: 70.00, color: Colors.white),
                    //   label: const Text(
                    //     'RUMS',
                    //     style: TextStyle(
                    //         color: Colors.white,
                    //         fontSize: 18.00,
                    //         fontWeight: FontWeight.bold),
                    //   ),
                    // ),

                     child: TextButton.icon(
                       style: TextButton.styleFrom(
                         textStyle: const TextStyle(color: Colors.deepPurple),
                         backgroundColor: Colors.lightBlue,
                         shape:RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(5.0),
                         ),
                       ),
                       onPressed: () => {
                         Navigator.pushNamed(context, RumsScreen.id)
                       },
                       icon: const Icon(Icons.all_inbox_outlined, size: 70.00, color: Colors.white),
                       label: const Text('RUMS', style: TextStyle(color: Colors.white, fontSize: 18.00, fontWeight: FontWeight.bold),),
                     ),
                  ),
                ),
                const SizedBox(width: 1.0),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(20.00),
                    child: TextButton.icon(
                      style: TextButton.styleFrom(
                        textStyle: const TextStyle(color: Colors.deepPurple),
                        backgroundColor: Colors.lightBlue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      onPressed: () =>
                          {Navigator.pushNamed(context, FuelScreen.id)},
                      icon: const Icon(Icons.account_tree_outlined,
                          size: 70.00, color: Colors.white),
                      label: const Text(
                        'FUEL',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.00,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 30),
             Center(
               child: Padding(
                padding: EdgeInsets.all(8.0),
                // child: Text('All rights preserved by © Summit Communication limited'),
                child: RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'All rights preserved by',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),

                      TextSpan(
                        text: ' © Summit Communication limited',
                        style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                        //recognizer: TapGestureRecognizer()
                          //..onTap = followLink,
                      ),

                    ],
                  ),
                ),
            ),
             ),
          ],
        ),
      ),
    );
  }
}
