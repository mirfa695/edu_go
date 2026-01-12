import 'package:edu_go/constants/color_constants.dart';
import 'package:edu_go/constants/custom_button.dart';
import 'package:flutter/material.dart';

class CommunityCard extends StatelessWidget {
  const CommunityCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(color: Colors.black12, blurRadius: 6),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                Icon(Icons.groups, color: Colors.blue),
                SizedBox(width: 8),
                Text(
                  "General Community",
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
               
               
              ],
            ),
            const SizedBox(height: 8),
            const Text(
              "2,847 active members",
              style: TextStyle(fontSize: 12, color: Colors.black54),
            ),
            const SizedBox(height: 8),
            const Text(
              "Connect with learners across all courses. Share experiences, ask questions, and grow together in your learning journey.",
              style: TextStyle(fontSize: 12),
            ),
            const SizedBox(height: 12),
            CustomButton(
              onPressed: () {},
             text:"Join Discussion" ,
             backgroundColor: ColorConstants.primary.withOpacity(.1),
             textColor: ColorConstants.primary),
            
            const SizedBox(height: 8),
            Row(
              children: [
                const Text(
                  "12 recent posts",
                  style: TextStyle(fontSize: 11, color: Colors.black45),
                ),
                Spacer(),
                 Text(
                  "Active now",
                  style: TextStyle(color: Colors.green, fontSize: 12),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
