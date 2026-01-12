
import 'package:edu_go/constants/api_constants.dart';
import 'package:edu_go/models/active_course.dart';
import 'package:edu_go/models/hero_banners.dart';
import 'package:edu_go/models/intro_model.dart';
import 'package:edu_go/models/popular_courses.dart';
import 'package:edu_go/services/api_services.dart';
import 'package:get/get.dart';


class HomeController extends GetxController {
  final isLoading = true.obs;
  
  final userData=IntroModel().obs;
  final RxList<HeroBanner> banners = <HeroBanner>[].obs;
  final activeCourse=ActiveCourse().obs;
  final RxList<PopularCourses> popularCourses = <PopularCourses>[].obs;
  final error = ''.obs;

  @override
  void onInit() {
    fetchHomeData();
    super.onInit();
  }

  Future<void> fetchHomeData() async {
    try {
      isLoading(true);
      Map<String,dynamic> data =await ApiServices.fetchData(url: ApiConstants.homeEndPoint);
    
      userData.value=IntroModel.fromJson(data["user"]) ;
      banners.value=(data["hero_banners"] as List).map((e)=>HeroBanner.fromJson(e)).toList(); 
      activeCourse.value=ActiveCourse.fromJson(data["active_course"]);
      popularCourses.value=(data["popular_courses"] as List).map((e)=>PopularCourses.fromJson(e)).toList(); 
    } catch (e) {
      error.value = e.toString();
    } finally {
      isLoading(false);
    }
  }
}
