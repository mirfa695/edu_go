import 'package:flutter/material.dart';

class VideoPlayerPreview extends StatelessWidget {
  final String? image;
  const VideoPlayerPreview({super.key,this.image});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
        image??  "https://static.vecteezy.com/system/resources/previews/022/059/000/non_2x/no-image-available-icon-vector.jpg", 
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
