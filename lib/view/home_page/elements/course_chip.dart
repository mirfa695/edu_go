import 'package:edu_go/constants/color_constants.dart';
import 'package:edu_go/constants/custom_button.dart';
import 'package:edu_go/view/video_page/video_detail_page.dart';
import 'package:flutter/material.dart';

class CourseChip extends StatelessWidget {
  final String title;
  const CourseChip(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color:ColorConstants.primary.withOpacity(.1),),
     width: 120,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(child: Text(title,style: TextStyle(color: ColorConstants.primary),)),
      ),
    );
  }
}

class CourseCard extends StatelessWidget {
  final String title;
  const CourseCard(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 6)
        ],
      ),
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(16)),
              child: Image.asset(
                "assets/images/course_bg.png",
                fit: BoxFit.fill,
                width: double.infinity,
                
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Text(title, textAlign: TextAlign.center),
                const SizedBox(height: 8),
                CustomButton(
                  onPressed: () {
                     Navigator.push(
    context,
    MaterialPageRoute<void>(
      builder: (context) => const VideoDetailPage(),
    ),
  );
                  },
                  text: "Explore More",
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
