

import 'package:edu_go/constants/color_constants.dart';
import 'package:edu_go/constants/custom_button.dart';
import 'package:flutter/material.dart';

class ConstantIntroPage extends StatelessWidget {
  final String? image;
  final String? title;
  final String? description;
  final void Function()? onNext;
  const ConstantIntroPage({super.key,this.image,this.onNext, this.title,this.description});

  @override
  Widget build(BuildContext context) {
    double  screenHeight= MediaQuery.of(context).size.height;
    double  screenWidth= MediaQuery.of(context).size.width;
    return  Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(color: ColorConstants.primary,borderRadius: BorderRadius.circular(20),),
          ),
          Positioned(
            top: -120,
            left: -90,
            child: Image.asset(
              height: screenHeight,
              width: screenWidth,
              image??"")),
              
          Positioned(
            left: -screenWidth/2,
            bottom: -screenHeight/2,
            child: Container(
              height: screenHeight,
              width: screenWidth*2,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
               color: ColorConstants.secondary,),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 180.0),
              child: Column(
                spacing: 10,
                children: [
                  SizedBox(height: 50,),
                Text(title??"",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),textAlign: TextAlign.center,),
                Text(description??"",style: TextStyle(fontSize: 10)),

              
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 10,
                  children: [
                      for(int i=0;i<3;i++)
                    Container(height: 5,width: 5, decoration: BoxDecoration(shape: BoxShape.circle,color: ColorConstants.primary,),),
                  ],
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: CustomButton(onPressed: (){
                      onNext?.call();
                  },text: "Next",borderRadius:50),
                ),
               
                Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 60),
                  child: CustomButton(onPressed: (){},text: "Skip",borderRadius: 50, textColor: ColorConstants.primary,backgroundColor: ColorConstants.secondary,),
                )
              ],),
            ),
            ),
          ),
          Positioned(
            top: screenHeight/2.2,
            right: screenWidth/2.2,
            child:
            Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: ColorConstants.secondary
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: ColorConstants.primary
                ),
                child: Image.asset(
                  height: 50,
                  width: 50,
                 "assets/images/logo.png"),
                            ),
              ),)
             )
        ],
      ),
    );
  }
}