import 'package:edu_go/view/introduction/elements/constant_intro_page.dart';
import 'package:edu_go/view/introduction/intro_2.dart';
import 'package:flutter/material.dart';

class FirstIntroPage extends StatelessWidget {
  const FirstIntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  ConstantIntroPage(
      image: "assets/images/intro_girl.png",
      title: "Smarter Learning\n Starts Here",
      description: "Personalized lessons that adapt to your pace and goals.",
      onNext: (){
        Navigator.push(
    context,
    MaterialPageRoute<void>(
      builder: (context) => const SecondIntroPage(),
    ),
  );
      },
    );
  }
}