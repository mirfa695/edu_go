import 'package:edu_go/view/home_page/home_screen.dart';
import 'package:edu_go/view/introduction/elements/constant_intro_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondIntroPage extends StatelessWidget {
  const SecondIntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  ConstantIntroPage(
      image: "assets/images/intro_girl2.png",
      title: "Learn. Practice.\n Succeed.",
      description: "Structured content, mock tests, and progress tracking in one place.",
      onNext: (){
       Get.offAll(HomeScreen());

      },
    );
  }
}