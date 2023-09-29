import 'package:flutter_coding_test/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SplashController extends GetxController {
  final getStorge = GetStorage();

  @override
  void onReady() {
    super.onReady();
    // if (getStorge.read("id") != null) {
    //   Future.delayed(const Duration(milliseconds: 1000), () {
    //     Get.offAllNamed(Routes.HOME);
    //   });
    // }
    // else {
    //   Get.offAllNamed(Routes.LOGIN);
    // }

    Future.delayed(const Duration(milliseconds: 1000), () {
      Get.offAllNamed(Routes.LOGIN);
    });
  }
}
