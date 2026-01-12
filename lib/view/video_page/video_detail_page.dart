import 'package:edu_go/view/video_page/meditation_journey_section.dart';
import 'package:edu_go/view/video_page/video_info_section.dart';
import 'package:edu_go/view/video_page/video_player_preview.dart';
import 'package:flutter/material.dart';

class VideoDetailPage extends StatelessWidget {
  const VideoDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.arrow_back, color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            VideoPlayerPreview(),
            VideoInfoSection(),
            MeditationJourneySection(),
          ],
        ),
      ),
    );
  }
}
