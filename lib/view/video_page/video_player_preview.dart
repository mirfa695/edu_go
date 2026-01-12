import 'package:flutter/material.dart';

class VideoPlayerPreview extends StatelessWidget {
  const VideoPlayerPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/video_thumb.jpg", 
          width: double.infinity,
          height: 220,
          fit: BoxFit.cover,
        ),
        Positioned.fill(
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: const Icon(Icons.play_arrow, size: 36),
            ),
          ),
        ),
        Positioned(
          bottom: 12,
          left: 16,
          right: 16,
          child: Column(
            children: [
              Slider(
                value: 0.35,
                onChanged: (_) {},
                activeColor: Colors.white,
                inactiveColor: Colors.white30,
              ),
              const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "4:10",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
