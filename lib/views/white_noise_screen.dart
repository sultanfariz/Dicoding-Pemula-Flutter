import 'package:flutter/material.dart';
import 'package:dicoding_pemula_flutter/components/PlayPauseButton.dart';
import 'package:dicoding_pemula_flutter/constants/Colour.dart';

class WhiteNoiseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: bgBlue),
          child: Column(
            children: <Widget>[
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        // backgroundColor: Colors.grey,
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
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: Text(
                          'White Noise Music',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 17.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  color: Colors.white,
                ),
                margin: const EdgeInsets.only(top: 10),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 30, left: 16, right: 16),
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 30),
                          child: Image.asset('images/summer_illust.png'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20, left: 32, right: 32, bottom: 10),
                        child: Container(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Autumn Wind',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: textGrey,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // Expanded(
                      //   child: MusicPlayerDetails(),
                      // ),
                      MusicPlayerDetails(),
                    ],
                  ),
                  // child: Container(
                  //   margin: const EdgeInsets.only(top: 20),
                  //   decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.only(
                  //       topLeft: Radius.circular(40),
                  //       topRight: Radius.circular(40),
                  //     ),
                  //     color: Colors.white,
                  //   ),
                  //   child: Column(
                  //     mainAxisAlignment: MainAxisAlignment.end,
                  //     crossAxisAlignment: CrossAxisAlignment.center,
                  //     children: <Widget>[
                  //       Expanded(child: MusicPlayerDetails()),
                  //     ],
                  //   ),
                  // ),
                ),
              ),
            ],
          ),
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
