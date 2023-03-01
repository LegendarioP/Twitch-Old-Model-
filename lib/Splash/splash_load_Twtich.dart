import 'package:get/get.dart';
import '../homepage_login.dart';

class SplashTwitchController extends GetxController {
  @override
  void onInit() {
    handleSplash();
    super.onInit();
  }

  handleSplash() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.off(() => const LoginPage());
    });
  }
}
