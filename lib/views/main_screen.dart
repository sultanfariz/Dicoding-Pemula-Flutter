import 'package:flutter/material.dart';
import 'package:dicoding_pemula_flutter/views/white_noise_screen.dart';
import 'package:dicoding_pemula_flutter/components/ToolboxCard.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Health Toolbox'),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          // return WhiteNoiseScreen();
          return ToolboxCard();
        },
      ),
    );
  }
}
