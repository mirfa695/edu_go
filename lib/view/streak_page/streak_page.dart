import 'package:edu_go/view/streak_page/day_node.dart';
import 'package:edu_go/view/streak_page/dotted_line.dart';
import 'package:edu_go/view/streak_page/floating_decoration.dart';
import 'package:flutter/material.dart';

class StreakPage extends StatelessWidget {
  const StreakPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF9EF0F8),
      body: SafeArea(
        child: Stack(
          children: const [
            FloatingDecorations(),

          
            DayNode(day: "Day\n8", top: 40, left: 180),
            DottedLine(top: 110, left: 205, height: 60),

            DayNode(day: "Day\n7", top: 130, left: 40),
            DottedLine(top: 200, left: 80, height: 60),

            DayNode(day: "Day\n6", top: 220, left: 120),
            DottedLine(top: 290, left: 155, height: 60),

            

            DayNode(day: "Day\n5", top: 320, left: 220),
            DottedLine(top: 390, left: 250, height: 60),

            DayNode(day: "Day\n4", top: 410, left: 80),
            DottedLine(top: 480, left: 110, height: 60),

            DayNode(day: "Day\n3", top: 520, left: 130),
            DottedLine(top: 590, left: 160, height: 60),

            DayNode(day: "Day\n2", top: 610, left: 230),
            DottedLine(top: 680, left: 260, height: 60),

            DayNode(day: "Day\n1", top: 700, left: 160),
          ],
        ),
      ),
    );
  }
}
