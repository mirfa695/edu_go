import 'package:edu_go/controller/video_controller.dart';
import 'package:edu_go/view/video_page/meditation_journey_section.dart';
import 'package:edu_go/view/video_page/video_info_section.dart';
import 'package:edu_go/view/video_page/video_player_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class VideoDetailPage extends StatelessWidget {
  const VideoDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
      final VideoController controller = Get.put(VideoController());
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: InkWell(
          onTap: ()=>Navigator.pop(context),
          child: const Icon(Icons.arrow_back, color: Colors.black)),
      ),
      body: Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }
        if (controller.error.isNotEmpty) {
          return Center(child: Text("Error while fetching video"));
        }
        return  SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            
            VideoPlayerPreview(),
            VideoInfoSection(),
            MeditationJourneySection(),
          ],
        ),
      );}),
    );
  }
}
