import 'package:edu_go/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class BannerCard extends StatelessWidget {
  const BannerCard({super.key});

  @override
  Widget build(BuildContext context) {
      final HomeController controller = Get.put(HomeController());
    double  screenWidth= MediaQuery.of(context).size.width;
    return  Obx(() {
        if (controller.isLoading.value) {
          return const Center(child: CircularProgressIndicator());
        }
        if (controller.error.isNotEmpty) {
          return Center(child: Text("Error while fetching banners"));
        }
        return Row(
      children: [
        ...controller.banners.value.map((e)=> Container(
          height: 150,width: screenWidth-20,
          margin: const EdgeInsets.symmetric(horizontal: 16),
          // padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(
              colors: [Color(0xFF4CA1AF), Color(0xFF2C7DA0)],
            ),
          ),
          child: Row(
            children: [
               Expanded(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                   e.title?? "Master New Skills\nAnytime, Anywhere",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.only(topLeft:Radius.circular(60),bottomLeft: Radius.circular(60)),
                child: Image.network(
                e.image??  "https://static.vecteezy.com/system/resources/previews/022/059/000/non_2x/no-image-available-icon-vector.jpg", 
                 height: 160,
                  width: 180,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        )),
      ],
    );
  });}
}
