import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hello_world/controllers/homeController.dart';
import 'package:hello_world/homepage_login.dart';
import 'package:hello_world/splash_page.dart';

class MyAppDemo extends StatelessWidget {
  const MyAppDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const SplashPageTwitch(),
    );
  }
}
