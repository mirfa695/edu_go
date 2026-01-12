import 'package:flutter/material.dart';

class BannerCard extends StatelessWidget {
  const BannerCard({super.key});

  @override
  Widget build(BuildContext context) {
    
    double  screenWidth= MediaQuery.of(context).size.width;
    return Container(
      height: 150,width: screenWidth-20,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      // padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: const LinearGradient(
          colors: [Color(0xFF4CA1AF), Color(0xFF2C7DA0)],
        ),
      ),
      child: Row(
        children: [
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                "Master New Skills\nAnytime, Anywhere",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.only(topLeft:Radius.circular(60),bottomLeft: Radius.circular(60)),
            child: Image.asset(
              "assets/images/happy_students.jpg", 
             height: 160,
              width: 180,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
