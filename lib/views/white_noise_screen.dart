import 'package:flutter/material.dart';
import 'package:dicoding_pemula_flutter/components/MusicPlayerButton.dart';
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
                  padding: const EdgeInsets.only(bottom: 60),
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
                              Divider(
                                color: bgGrey,
                                // height: 25,
                                thickness: 3,
                                // indent: 5,
                                // endIndent: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '00.00',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: buttonBlue,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 10,
                                    ),
                                  ),
                                  Text(
                                    '02.30',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: buttonBlue,
                                      fontWeight: FontWeight.w300,
                                      fontSize: 10,
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
                      MusicPlayerButton(),
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
