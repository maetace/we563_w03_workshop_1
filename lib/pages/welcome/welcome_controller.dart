import 'package:get/get.dart';
import 'package:workshop_1/pages/home/home_page.dart';
import 'package:workshop_1/pages/home/home_binding.dart';

class WelcomeController extends GetxController {
  void onLoginPressed() {
    Get.to(HomePage(), binding: HomeBinding());
  }

  void onSignUpPressed() {
    Get.toNamed('/home');
  }
}
