import 'package:flutter/material.dart';

class MyCustomContainer extends StatelessWidget {
  final Color backgroundColor;
  final Color progressColor;
  final double progress;
  final double size;

  MyCustomContainer({
    this.backgroundColor = Colors.grey,
    this.progressColor = Colors.red,
    required this.progress,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size,
      width: size,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            color: backgroundColor,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: size * progress,
              color: progressColor,
            ),
          ),
        ],
      ),
    );
  }
}
