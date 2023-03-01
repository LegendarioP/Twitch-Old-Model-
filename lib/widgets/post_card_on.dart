import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/home_controler_Twitch.dart';
import '../staticColors/colors_Login.dart';

class PostLivesOn extends StatelessWidget {
  const PostLivesOn({
    Key? key,
    required this.HomeControlerTwitchVar,
  }) : super(key: key);

  final HomeControlerTwitch HomeControlerTwitchVar;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: List.generate(
          HomeControlerTwitchVar.liveCard.length,
          (index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 250,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              HomeControlerTwitchVar.liveCard[index]),
                        ),
                        color: AppColor_login.grayColor,
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: AppColor_login.primaryColor.withOpacity(0.3),
                            offset: const Offset(5, 5),
                            blurRadius: 5,
                          ),
                        ],
                        border: Border.all(
                            color: AppColor_login.primaryColor, width: 3),
                      ),
                    ),
                    Positioned(
                      top: 8,
                      left: 8,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 2),
                        decoration: BoxDecoration(
                          color: AppColor_login.liveColor,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Text(
                          "LIVE",
                          style: GoogleFonts.roboto(
                            backgroundColor: Colors.red,
                            color: AppColor_login.textColor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 8,
                      left: 8,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 2),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(3),
                        ),
                        child: Text(
                          "2 Specs",
                          style: GoogleFonts.roboto(
                            color: AppColor_login.textColor,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.grey.withOpacity(0.3),
                      backgroundImage: AssetImage(
                        "assets/imgs/Profile/modelo1.jpg",
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            HomeControlerTwitchVar.titleLive[index],
                            style: GoogleFonts.roboto(
                              color: AppColor_login.textColor,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            HomeControlerTwitchVar.userLive[index],
                            style: GoogleFonts.roboto(
                              color: AppColor_login.textColor.withOpacity(0.3),
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
