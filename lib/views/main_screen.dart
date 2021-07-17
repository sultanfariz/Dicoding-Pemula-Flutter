// import 'package:flutter/material.dart';
// import 'package:learn_flutter/detail_screen.dart';
// import 'package:learn_flutter/model/tourism_place.dart';

// class MainScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Health Toolbox'),
//       ),
//       body: LayoutBuilder(
//         builder: (BuildContext context, BoxConstraints constraints) {
//           if (constraints.maxWidth <= 600) {
//             return TourismPlaceList();
//           } else if (constraints.maxWidth <= 1200) {
//             return TourismPlaceGrid(gridCount: 4);
//           } else {
//             return TourismPlaceGrid(gridCount: 6);
//           }
//         },
//       ),
//     );
//   }
// }