import 'package:edu_go/constants/color_constants.dart';
import 'package:edu_go/controller/home_controller.dart';
import 'package:edu_go/view/home_page/banner_card.dart';
import 'package:edu_go/view/streak_page/streak_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
     double  screenHeight= MediaQuery.of(context).size.height;
    double  screenWidth= MediaQuery.of(context).size.width;
     final HomeController controller = Get.put(HomeController());
    return SizedBox(
      height: 250,width: 800,
      child: Stack(
        
        children:[ Positioned(
          bottom: 0,
        right: -250,
          child: Container(
            width: screenWidth*2,
            height: screenHeight,
            decoration: BoxDecoration(shape: BoxShape.circle,color: ColorConstants.primary,
            image: DecorationImage(image: AssetImage("assets/images/bg_frame.png"),fit: BoxFit.fill)
            ),
           
          ),
        ),
       Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }
        if (controller.error.isNotEmpty) {
          return Center(child: Text("Error while fetching user data"));
        }
        return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                
                children: [
                  Text(
                    controller.userData.value.greeting??"",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: ()=>Get.to(()=> StreakPage()),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          const Text("Day 7"),
                          SizedBox(width: 10,),
                          Image.asset("assets/images/fire_icon.png",height: 15,width: 15,)
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.notifications_none),
                  )
                ],
              ),
            );
        }),  
            Positioned(
              bottom: 0,
              child: BannerCard())
        ]
      ),
    );
  }
}
