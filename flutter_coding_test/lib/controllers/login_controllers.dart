import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  final getStorge = GetStorage();

  login() {
    getStorge.write("id", 1);
    getStorge.write("name", "Naol");
    Get.offAllNamed(Routes.HOME);
  }
}
