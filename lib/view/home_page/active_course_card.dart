import 'package:edu_go/constants/custom_button.dart';
import 'package:flutter/material.dart';

class ActiveCourseCard extends StatelessWidget {
  const ActiveCourseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Active Courses",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFF3D5AFE),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: CircularProgressIndicator(
                        value: 0.35,
                        strokeWidth: 6,
                        backgroundColor: Colors.white24,
                        valueColor:
                            const AlwaysStoppedAnimation(Colors.orange),
                      ),
                    ),
                    const Text(
                      "35%",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      Text(
                        "KTET - Language Teachers",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "70/100 Tests",
                        style: TextStyle(color: Colors.white70),
                      ),
                      SizedBox(height: 10,),
                       Row(
                  spacing: 10,
                  children: [
                  CustomButton(onPressed: (){},text:"Continue >>>" ,),
                    CustomButton(onPressed: (){},text:"Shift Course" ,),
                ],)
                    ],
                  ),
                ),
               
                
              ],
            ),
          )
        ],
      ),
    );
  }
}
