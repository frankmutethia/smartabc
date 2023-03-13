import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:lottie/lottie.dart';
// import 'package:lottie/lottie.dart';

class Smart_a extends StatelessWidget {
  static final String id = "smart_a";
  const Smart_a({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(vertical: 30.0),
            children: <Widget>[
              Center(
                  child: LottieBuilder.network(
                      'https://assets7.lottiefiles.com/private_files/lf30_03o4rzc9.json')),
              TexttoSpeech(),
            ],
          ),
        ),
      ),
    );
  }
}

class TexttoSpeech extends StatelessWidget {
  // const TexttoSpeech({super.key});
  // String femalevoice = "cmn-CN-Standard-A";
  // String malevoice = "cmn-CN-Standard-B";
  final FlutterTts flutterTts = FlutterTts();
  final TextEditingController textEditingController = TextEditingController();
  // _flutterTts.setVoice("en-us-x-sfg#male_1-local");

  speak(String text) async {
    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(0.8);
    await flutterTts.speak(text);
    await flutterTts.setVoice({"name": "Karen", "locale": "en-AU"});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextFormField(
              controller: textEditingController,
            ),
            ElevatedButton(
              child: Text(" Start Text to Speech"),
              onPressed: () => speak(textEditingController.text),
            ),
          ],
        ),
      ),
    );
  }
}
