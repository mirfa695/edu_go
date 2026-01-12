import 'package:flutter/material.dart';

class FloatingDecorations extends StatelessWidget {
  const FloatingDecorations({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        Positioned(top: 80, right: 40,
            child: Icon(Icons.star, color: Colors.white30)),
        Positioned(top: 300, left: 20,
            child: Icon(Icons.star, color: Colors.white30)),
        Positioned(bottom: 200, right: 30,
            child: Icon(Icons.star, color: Colors.white30)),
      ],
    );
  }
}
