import 'package:flutter/material.dart';
import '../../conf/const.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "Trang chu",
        style: titleStyle,
      ),
    );
  }
}

