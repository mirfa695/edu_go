import 'package:edu_go/view/streak_page/streak_page.dart';
import 'package:flutter/material.dart';

class MeditationJourneySection extends StatelessWidget {
  const MeditationJourneySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFE9F7F6), Color(0xFFF4FEFE)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Meditation Journey",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 16),
          JourneyItem(
            title: "Video 1",
            subtitle: "Understanding the Basic of Meditation",
            isCompleted: true,
          ),
          JourneyItem(
            title: "Video 2",
            subtitle: "Understanding the Basic of Meditation",
            isLocked: true,
          ),
          JourneyItem(
            title: "Video 3",
            subtitle: "Understanding the Basic of Meditation",
            isLocked: true,
          ),
        ],
      ),
    );
  }
}
class JourneyItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool isCompleted;
  final bool isLocked;

  const JourneyItem({
    super.key,
    required this.title,
    required this.subtitle,
    this.isCompleted = false,
    this.isLocked = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
         Navigator.push(
    context,
    MaterialPageRoute<void>(
      builder: (context) => const StreakPage(),
    ),
  );
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              CircleAvatar(
                radius: 14,
                backgroundColor: isCompleted
                    ? Colors.green
                    : isLocked
                        ? Colors.grey.shade300
                        : Colors.blue,
                child: Icon(
                  isCompleted
                      ? Icons.check
                      : isLocked
                          ? Icons.lock
                          : Icons.play_arrow,
                  size: 14,
                  color: isLocked ? Colors.black54 : Colors.white,
                ),
              ),
              Container(
                height: 60,
                width: 2,
                color: Colors.teal.shade200,
              )
            ],
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(bottom: 16),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title,
                            style: const TextStyle(
                                fontWeight: FontWeight.w600)),
                        const SizedBox(height: 4),
                        Text(
                          subtitle,
                          style: const TextStyle(
                              fontSize: 12, color: Colors.black54),
                        ),
                      ],
                    ),
                  ),
                  const Icon(Icons.play_circle_outline)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
