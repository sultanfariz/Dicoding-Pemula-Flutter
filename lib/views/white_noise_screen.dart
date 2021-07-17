import 'package:flutter/material.dart';
import 'package:dicoding_pemula_flutter/components/PlayPauseButton.dart';

class WhiteNoiseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('White Noise Music'),
      ),
      // body: LayoutBuilder(
      // builder: (BuildContext context, BoxConstraints constraints) {},
      // ),
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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(
                Icons.shuffle_rounded,
                color: Colors.lightBlue[600],
                size: 20,
              ),
              Icon(
                Icons.fast_rewind_rounded,
                color: Colors.lightBlue[600],
                size: 40,
              ),
              PlayPauseButton(),
              // Icon(
              //   Icons.pause_circle_filled,
              //   color: Colors.lightBlue[600],
              //   size: 60,
              // ),
              // Icon(Icons.play_circle_filled),
              Icon(
                Icons.fast_forward_rounded,
                color: Colors.lightBlue[600],
                size: 40,
              ),
              Icon(
                Icons.repeat_rounded,
                color: Colors.lightBlue[600],
                size: 20,
              ),
            ],
          )
        ],
      ),
    );
  }
}
