import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/home_controler_Twitch.dart';
import '../staticColors/colors_Login.dart';

class StoryModeTwitch extends StatelessWidget {
  const StoryModeTwitch({
    Key? key,
    required this.HomeControlerTwitchVar,
  }) : super(key: key);

  final HomeControlerTwitch HomeControlerTwitchVar;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: List.generate(
          HomeControlerTwitchVar.storyMode.length,
          ((index) => Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.bottomCenter,
                  children: [
                    CircleAvatar(
                      backgroundColor: index == 0
                          ? AppColor_login.liveColor
                          : AppColor_login.unselectedColor,
                      radius: 33,
                      child: CircleAvatar(
                        radius: 31,
                        backgroundColor: Colors.red,
                        backgroundImage: AssetImage(
                          HomeControlerTwitchVar.storyMode[index],
                          // "assets/imgs/Profile/modelo1.jpg",
                        ),
                      ),
                    ),
                    index == 0
                        ? Positioned(
                            bottom: -3,
                            child: Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 2),
                              decoration: BoxDecoration(
                                color: AppColor_login.liveColor,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Text(
                                "LIVE",
                                style: GoogleFonts.roboto(
                                  // decoration: TextDecoration.underline,
                                  backgroundColor: Colors.red,
                                  color: AppColor_login.textColor,
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          )
                        : const SizedBox()
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
