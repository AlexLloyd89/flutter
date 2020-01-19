import 'package:flutter/material.dart';
import './text_output.dart';

class TextControll extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextControll();
  }
}

class _TextControll extends State<TextControll> {
  var _displayText = 'Dynamic Text';

  updateText() {
    setState(() {
      _displayText = 'I have been changed!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextOutput(_displayText),
        RaisedButton(
          onPressed: updateText,
          child: Text(
            "Change Text",
          ),
        )
      ],
    );
  }
}
