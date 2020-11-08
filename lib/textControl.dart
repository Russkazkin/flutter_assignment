import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final Function textHandler;

  TextControl(this.textHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: RaisedButton(
          onPressed: textHandler,
          child: Text('Push for new sentence'),
          color: Colors.deepPurple,
          textColor: Colors.white,
        ),
        heightFactor: 5,
      ),
    );
  }
}
