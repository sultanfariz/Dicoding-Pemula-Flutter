import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:dicoding_pemula_flutter/constants/Colour.dart';

class PlayPauseButton extends StatefulWidget {
  @override
  _PlayPauseButtonState createState() => _PlayPauseButtonState();
}

class _PlayPauseButtonState extends State<PlayPauseButton> {
  bool isPaused = true;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      constraints: BoxConstraints(),
      iconSize: 60,
      icon: Icon(
        isPaused ? Icons.play_circle_filled : Icons.pause_circle_filled,
        color: buttonBlue,
      ),
      onPressed: () {
        setState(() {
          isPaused = !isPaused;
        });
      },
    );
  }
}

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
