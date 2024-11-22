import 'package:flutter/material.dart';
import 'package:horimap/main.dart';

class MapPage extends StatelessWidget {
  static const double _imageHeightRatio = 0.1;
  static const double _imageBottomRatio = 0.1;
  final String floor;
  const MapPage({super.key, required this.floor});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('MAP Page'),
      ),
      body: Center(
        child: Column(children: [
          SizedBox(
            height: height * _imageHeightRatio,
          ),
          Image.asset(floor),
          SizedBox(
            height: height * _imageBottomRatio,
          ),
        ]),
      ),
    );
  }
}
