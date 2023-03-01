import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_world/controllers/home_controler_Twitch.dart';
import 'package:hello_world/staticColors/colors_Login.dart';
import 'package:hello_world/widgets/categories_tab.dart';
import 'package:hello_world/widgets/post_card_on.dart';
import 'package:hello_world/widgets/story_mode_twitch.dart';
import 'package:hello_world/widgets/top_profile.dart';

class HomePageTwitch extends StatelessWidget {
  const HomePageTwitch({super.key});

  @override
  Widget build(BuildContext context) {
    var HomeControlerTwitchVar = Get.put(HomeControlerTwitch());

    return Scaffold(
      backgroundColor: AppColor_login.corBG,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 25),
        child: SafeArea(
          child: Column(
            children: [
              TopProfile(),
              const SizedBox(height: 25),
              StoryModeTwitch(HomeControlerTwitchVar: HomeControlerTwitchVar),
              const SizedBox(height: 25),
              CategoriesTab(HomeControlerTwitchVar: HomeControlerTwitchVar),
              const SizedBox(height: 40),
              PostLivesOn(HomeControlerTwitchVar: HomeControlerTwitchVar),
            ],
          ),
        ),
      ),
    );
  }
}
