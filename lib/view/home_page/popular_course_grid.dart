import 'package:edu_go/view/home_page/elements/course_chip.dart';
import 'package:flutter/material.dart';

class PopularCoursesSection extends StatelessWidget {
  const PopularCoursesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Popular Courses",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
              Text("View all", style: TextStyle(color: Colors.blue)),
            ],
          ),
          const SizedBox(height: 12),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: const [
              CourseChip("KTET"),
              CourseChip("HST"),
              CourseChip("CUET"),
              CourseChip("LPST"),
              CourseChip("GENERAL PSC"),
            ],
          ),
          const SizedBox(height: 16),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            childAspectRatio: 1,
            children: const [
              CourseCard("Lower Primary"),
              CourseCard("Upper Primary"),
              CourseCard("Higher Secondary"),
              CourseCard("Language Teachers"),
            ],
          )
        ],
      ),
    );
  }
}
