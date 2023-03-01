import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../staticColors/colors_Login.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.title,
    required this.hintText,
    required this.suffixIcon,
    required this.keyboardType,
    required this.obscureText,
  }) : super(key: key);

  final String title;
  final String hintText;
  final Widget suffixIcon;
  final TextInputType keyboardType;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.roboto(
            color: AppColor_login.textColor,
            fontSize: 16,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        TextField(
          keyboardType: keyboardType,
          obscureText: obscureText,
          cursorHeight: 21,
          cursorColor: AppColor_login.primaryColor,
          decoration: InputDecoration(
            suffixIcon: suffixIcon,
            isCollapsed: false,
            fillColor: Colors.white,
            filled: true,
            hintStyle: TextStyle(color: Colors.grey),
            hintText: hintText,
            contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 18),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
          ),
        ),
      ],
    );
  }
}
