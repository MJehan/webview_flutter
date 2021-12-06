import 'package:flutter/material.dart';
import 'package:multi_app/screen/fuel_screen.dart';
import 'package:multi_app/screen/ims_screen.dart';
import 'package:multi_app/screen/opus_screen.dart';
import 'package:multi_app/screen/rums_screen.dart';
import 'package:multi_app/screen/welcome.dart';
import 'package:multi_app/screen/wms_screen.dart';
//import 'package:splashscreen/splashscreen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        ImsScreen.id: (context) =>  const ImsScreen(),
        FuelScreen.id: (context) =>  FuelScreen(),
        OpusScreen.id: (context) =>  const OpusScreen(),
        WmsScreen.id: (context) =>  const WmsScreen(),
        RumsScreen.id: (context) =>  const RumsScreen(),
      },
      // home: SplashScreen(
      //   seconds: 5,
      //   navigateAfterSeconds: WelcomeScreen.id,
      //   title:  const Text(
      //     'Summit Communications Ltd.',
      //     style:  TextStyle(
      //         fontWeight: FontWeight.bold,
      //         fontSize: 20.0,
      //         color: Colors.white,
      //     ),
      //   ),
      // ),

      debugShowCheckedModeBanner: false,
    );
  }
}