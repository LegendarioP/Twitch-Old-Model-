import 'package:get/get.dart';

class LoginPageControler extends GetxController {
  RxBool obscureText = true.obs;

  showPassword() {
    obscureText.value = !obscureText.value;
  }

  RxBool checkBoxValuer = true.obs;

  checkbox(value) {
    checkBoxValuer.value = value;
  }
}
