import 'package:edu_go/controller/home_controller.dart';
import 'package:edu_go/view/home_page/elements/course_chip.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class PopularCoursesSection extends StatelessWidget {
  const PopularCoursesSection({super.key});

  @override
  Widget build(BuildContext context) {
      final HomeController controller = Get.put(HomeController());
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
         Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }
        if (controller.error.isNotEmpty) {
          return Center(child: Text("Error while fetching course data"));
        }
        return 
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            childAspectRatio: 1,
            children:  [
              ...controller.popularCourses.firstOrNull?.courses?.map((e) =>
              CourseCard(e.title??"")).toList()??[],
              
            ],
          );})
        ],
      ),
    );
  }
}
