import 'package:edu_go/view/home_page/active_course_card.dart';
import 'package:edu_go/view/home_page/community_card.dart';
import 'package:edu_go/view/home_page/header_section.dart';
import 'package:edu_go/view/home_page/help_section.dart';
import 'package:edu_go/view/home_page/live_session_card.dart';
import 'package:edu_go/view/home_page/popular_course_grid.dart';
import 'package:edu_go/view/home_page/review_session.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            spacing: 10,
            children: [
              HeaderSection(),

              ActiveCourseCard(),
              PopularCoursesSection(),
              LiveSessionCard(),
              CommunityCard(),
              ReviewsSection(),
              HelpSection(),
            ],
          ),
        ),
      ),
    );
  }
}
