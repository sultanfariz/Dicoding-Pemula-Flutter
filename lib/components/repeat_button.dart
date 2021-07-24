import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:dicoding_pemula_flutter/constants/Colour.dart';

class RepeatButton extends StatefulWidget {
  @override
  _RepeatButtonState createState() => _RepeatButtonState();
}

class _RepeatButtonState extends State<RepeatButton> {
  bool isRepeat = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      constraints: BoxConstraints(),
      iconSize: 20,
      icon: Icon(
        isRepeat ? Icons.repeat_one_rounded : Icons.repeat_rounded,
        color: buttonBlue,
      ),
      onPressed: () {
        setState(() {
          isRepeat = !isRepeat;
        });
      },
    );
  }
}
