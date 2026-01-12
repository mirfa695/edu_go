import 'package:edu_go/controller/home_controller.dart';
import 'package:edu_go/custom_widgets.dart/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class ActiveCourseCard extends StatelessWidget {
  const ActiveCourseCard({super.key});

  @override
  Widget build(BuildContext context) {
      final HomeController controller = Get.put(HomeController());
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          const Text("Active Courses",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
          const SizedBox(height: 12),
           Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }
        if (controller.error.isNotEmpty) {
          return Center(child: Text("Error while fetching course data"));
        }
        return 
        
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
                     Text(
                      "${controller.activeCourse.value.progress??0}%",
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
                        "${controller.activeCourse.value.title??"N/A"}",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 6),
                      Text(
                        "${controller.activeCourse.value.testsCompleted??0}/${controller.activeCourse.value.totalTests} Tests",
                        style: TextStyle(color: Colors.white70),
                      ),
                      SizedBox(height: 10,),
                       Row(
                  spacing: 10,
                  children: [
                  CustomButton(onPressed: (){},text:"Continue >>>" ,fontSize: 12,height: 35,),
                    CustomButton(onPressed: (){},text:"Shift Course" ,fontSize: 12,height: 35,),
                ],)
                    ],
                  ),
                ),
               
                
              ],
            ),
          );})
        ],
      ),
    );
  }
}
