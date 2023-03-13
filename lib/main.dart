import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:smart_abc/smart_a.dart';
// import 'package:smart_abc/screen_a.dart';
// import 'package:lottie/lottie.dart';

void main() {
  runApp(
      // const
      MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart_abc',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // visualDensity: VisualDensity.adaptivePlatformDensity,
        // primaryColor: Color(0xff145C9E),
        // scaffoldBackgroundColor: Color(0xff1F1F1F),
        // accentColor: Color(0xff007EF4),
        // fontFamily: "OverpassRegular",
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Smart_a(),
      routes: {
        Smart_a.id: (context) => Smart_a(),
      },
    );
  }
}
