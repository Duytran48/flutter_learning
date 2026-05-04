import 'package:flutter/material.dart';
import 'package:tuan_2/page/carousel.dart';
import 'page/list.dart';
import 'page/grid.dart';
import 'page/carousel.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyCarousel(),
    );
  }
}
