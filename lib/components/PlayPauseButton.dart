import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
        color: Colors.lightBlue[600],
      ),
      onPressed: () {
        setState(() {
          isPaused = !isPaused;
        });
      },
    );
  }
}
