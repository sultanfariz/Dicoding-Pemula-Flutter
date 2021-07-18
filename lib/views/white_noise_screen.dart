import 'package:flutter/material.dart';
import 'package:dicoding_pemula_flutter/components/PlayPauseButton.dart';
import 'package:dicoding_pemula_flutter/constants/Colour.dart';

class WhiteNoiseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     'White Noise Music',
      //     style: TextStyle(
      //         fontFamily: 'Montserrat',
      //         fontWeight: FontWeight.w700,
      //         fontSize: 17.0),
      //   ),
      //   backgroundColor: bgBlue,
      // ),
      body: SingleChildScrollView(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey,
                      child: IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    // Padding(padding: const EdgeInsets.only(left: ))
                    Container(
                      margin: const EdgeInsets.only(left: 20),
                      child: Text(
                        'White Noise Music',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                            fontSize: 17.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: MusicPlayerDetails(),
              // child: Container(
              //     // decoration: BoxDecoration(color: bgBlue),
              //     // child: Container(
              //     //   margin: const EdgeInsets.only(top: 20),
              //     //   decoration: BoxDecoration(
              //     //     borderRadius: BorderRadius.only(
              //     //       topLeft: Radius.circular(40),
              //     //       topRight: Radius.circular(40),
              //     //     ),
              //     //     color: Colors.white,
              //     //   ),
              //     //   child: Column(
              //     //     mainAxisAlignment: MainAxisAlignment.end,
              //     //     crossAxisAlignment: CrossAxisAlignment.center,
              //     //     children: <Widget>[
              //     //       Expanded(child: MusicPlayerDetails()),
              //     //     ],
              //     //   ),
              //     // ),
              //     ),
            ),

            // return MusicPlayerDetails();
            // },
            // ),
          ],
        ),
      ),
    );
  }
}

class MusicPlayerDetails extends StatelessWidget {
  MusicPlayerDetails({Key? key}) : super(key: key);

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
