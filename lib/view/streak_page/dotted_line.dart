import 'package:flutter/material.dart';

class DottedLine extends StatelessWidget {
  final double top;
  final double left;
  final double height;

  const DottedLine({
    super.key,
    required this.top,
    required this.left,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      child: Column(
        children: List.generate(
          (height / 10).floor(),
          (index) => Container(
            margin: const EdgeInsets.symmetric(vertical: 3),
            width: 2,
            height: 6,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
