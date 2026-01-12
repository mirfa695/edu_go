
import 'package:edu_go/constants/api_constants.dart';
import 'package:edu_go/services/api_services.dart';
import 'package:get/get.dart';


class VideoController extends GetxController {
  final isLoading = true.obs;

  final error = ''.obs;

  @override
  void onInit() {
    fetchVideoData();
    super.onInit();
  }

  Future<void> fetchVideoData() async {
    try {
      isLoading(true);
      Map<String,dynamic> data =await ApiServices.fetchData(url: ApiConstants.videoEndPoint);
     print(data);
    
    } catch (e) {
      error.value = e.toString();
    } finally {
      isLoading(false);
    }
  }
}
