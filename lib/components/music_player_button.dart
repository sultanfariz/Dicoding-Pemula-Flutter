import 'package:flutter/material.dart';
import 'package:dicoding_pemula_flutter/components/play_pause_button.dart';
import 'package:dicoding_pemula_flutter/components/repeat_button.dart';
import 'package:dicoding_pemula_flutter/constants/Colour.dart';

class MusicPlayerButton extends StatelessWidget {
  MusicPlayerButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(
                Icons.shuffle_rounded,
                color: buttonBlue,
                size: 20,
              ),
              Icon(
                Icons.fast_rewind_rounded,
                color: buttonBlue,
                size: 40,
              ),
              PlayPauseButton(),
              Icon(
                Icons.fast_forward_rounded,
                color: buttonBlue,
                size: 40,
              ),
              RepeatButton(),
            ],
          )
        ],
      ),
    );
  }
}
