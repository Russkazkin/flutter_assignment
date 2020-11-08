import 'package:flutter/material.dart';
import 'package:lipsum/lipsum.dart' as lipsum;

import 'textControl.dart';
import 'sentence.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _text = 'Initial text';

  @override
  Widget build(BuildContext context) {
    void _textHandler(){
      setState(() {
        _text = lipsum.createSentence();
      });
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(255, 111, 0, 1.0),
          title: Text('First module task'),
        ),
        body: Column(
          children: [
            Sentence(_text),
            TextControl(_textHandler),
          ],
        ),
      ),
    );
  }
}