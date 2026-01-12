import 'package:flutter/material.dart';

class VideoInfoSection extends StatelessWidget {
  const VideoInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Video 1",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 6),
                Text(
                  "Understanding the Basic of Meditation",
                  style: TextStyle(color: Colors.black54),
                ),
              ],
            ),
          ),
          CircleAvatar(
            radius: 22,
            backgroundColor: const Color(0xFFF1F1F1),
            child: Icon(Icons.download, color: Colors.black),
          )
        ],
      ),
    );
  }
}
