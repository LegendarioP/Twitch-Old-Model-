import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:hello_world/staticColors/colors_Login.dart';

import 'Splash/splash_load_Twtich.dart';

class SplashPageTwitch extends StatelessWidget {
  const SplashPageTwitch({super.key});

  @override
  Widget build(BuildContext context) {
    var SplashTwitchCTRL = Get.put(SplashTwitchController());
    return Scaffold(
      backgroundColor: AppColor_login.primaryColor,
      body: GetBuilder(
        init: SplashTwitchController(),
        builder: (controller) {
          return Center(
            child: Image.asset(
              "assets/imgs/Login/logo login.png",
              width: 80,
            ),
          );
        },
      ),
    );
  }
}
