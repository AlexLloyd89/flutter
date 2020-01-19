import 'package:flutter/material.dart';
import './text_control.dart';

void main() => runApp(_MyApp());

class _MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.limeAccent,
            title: Text(
              'I am your new app!',
              style: TextStyle(color: Colors.black),
            ),
          ),
          body: TextControll()),
    );
  }
}
