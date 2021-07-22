import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:dicoding_pemula_flutter/constants/Colour.dart';
import 'package:dicoding_pemula_flutter/views/white_noise_screen.dart';

class ToolboxCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return WhiteNoiseScreen();
            }));
          },
          child: Padding(
            padding: const EdgeInsets.only(
                left: 25.0, right: 25.0, top: 20.0, bottom: 20.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      cardGreen,
                      cardBlue,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.35),
                      spreadRadius: 0,
                      blurRadius: 5,
                      offset: Offset(0, 4), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 5.0, right: 5.0, top: 15.0, bottom: 15.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Icon(
                          Icons.music_note_rounded,
                          color: Colors.white,
                          size: 60,
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'White Noise Music',
                                style: TextStyle(
                                  letterSpacing: 1.0,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 17.0,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                'Best music for relaxing and reducing your stress',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 12.0,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
      itemCount: 1,
    );
  }
}
