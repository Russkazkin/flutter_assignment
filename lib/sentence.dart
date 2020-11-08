import 'package:flutter/material.dart';

class Sentence extends StatelessWidget {
  final String sentence;

 Sentence(this.sentence);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(sentence),
      padding: EdgeInsets.all(40),
    );
  }
}
