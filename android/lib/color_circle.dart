import 'package:flutter/material.dart';

class ColorCircle extends StatelessWidget {
  final Color color;

  const ColorCircle({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 220,
        height: 220,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.black, width: 3),
        ),
      ),
    );
  }
}
