import 'package:flutter/material.dart';
import 'package:dicoding_pemula_flutter/components/PlayPauseButton.dart';
import 'package:dicoding_pemula_flutter/constants/Colour.dart';

class MusicPlayerButton extends StatelessWidget {
  MusicPlayerButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // crossAxisAlignment: CrossAxisAlignment.center,
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
              Icon(
                Icons.repeat_rounded,
                color: buttonBlue,
                size: 20,
              ),
            ],
          )
        ],
      ),
    );
  }
}
