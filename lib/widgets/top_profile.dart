import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../staticColors/colors_Login.dart';

class TopProfile extends StatelessWidget {
  const TopProfile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const CircleAvatar(
            backgroundColor: Colors.green,
            radius: 25,
            child: CircleAvatar(
              radius: 22,
              backgroundColor: Colors.red,
              backgroundImage: AssetImage(
                "assets/imgs/Profile/profile_user.jpeg",
              ),
            ),
          ),
          const SizedBox(width: 8),
          Text(
            "BODIA PARÇA",
            style: GoogleFonts.roboto(
              // decoration: TextDecoration.underline,
              color: AppColor_login.textColor,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
