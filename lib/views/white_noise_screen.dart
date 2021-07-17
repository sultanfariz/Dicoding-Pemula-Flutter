import 'package:flutter/material.dart';
import 'package:dicoding_pemula_flutter/components/PlayPauseButton.dart';
import 'package:dicoding_pemula_flutter/constants/Colour.dart';

class WhiteNoiseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('White Noise Music'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return MusicPlayerDetails();
        },
      ),
    );
  }
}

class MusicPlayerDetails extends StatelessWidget {
  MusicPlayerDetails({Key? key}) : super(key: key);

//   final TourismPlace place;

//   DetailWebPage({required this.place});

//   @override
//   _MusicPlayerDetailsState createState() => _MusicPlayerDetailsState();
// }

// class _MusicPlayerDetailsState extends State<MusicPlayerDetails> {
//   bool status = true;

//   pauseButton() {
//     setState(() {
//       status = false;
//     });
//   }

//   playButton() {
//     setState(() {
//       status = true;
//     });
//   }

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
