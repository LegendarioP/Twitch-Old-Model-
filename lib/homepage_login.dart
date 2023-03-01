import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hello_world/controllers/login_controler.dart';
import 'package:hello_world/home_Page_Twitch.dart';
import 'package:hello_world/staticColors/colors_Login.dart';
import 'package:hello_world/widgets/custom_textfield.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    var loginCTRL = Get.put(LoginPageControler());

    return Scaffold(
      backgroundColor: AppColor_login.primaryColor,
      body: SafeArea(
          child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "assets/imgs/Login/logo login.png",
              width: 60,
            ),
            const SizedBox(height: 15),
            Text(
              "BIEN VENIDO",
              style: GoogleFonts.roboto(
                  color: AppColor_login.textColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 40),
            const CustomTextField(
              suffixIcon: SizedBox(),
              keyboardType: TextInputType.emailAddress,
              obscureText: false,
              title: "E-mail:",
              hintText: "Adicione o seu e-mail",
            ),
            const SizedBox(height: 8),
            Obx(
              () => CustomTextField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: loginCTRL.obscureText.value,
                suffixIcon: IconButton(
                  onPressed: () {
                    loginCTRL.showPassword();
                  },
                  splashRadius: 20,
                  icon: Icon(
                    loginCTRL.obscureText.value == true
                        ? CupertinoIcons.eye_slash
                        : CupertinoIcons.eye,
                    color: AppColor_login.primaryColor,
                  ),
                ),
                title: "Password:",
                hintText: "Adicione sua senha",
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Obx(
                      () => Checkbox(
                        value: loginCTRL.checkBoxValuer.value,
                        onChanged: (value) {
                          loginCTRL.checkbox(value);
                        },
                        checkColor: AppColor_login.primaryColor,
                        fillColor:
                            MaterialStateProperty.all(AppColor_login.textColor),
                        side: BorderSide(
                          color: AppColor_login.textColor,
                          width: 2,
                          style: BorderStyle.solid,
                        ),
                      ),
                    ),
                    Text(
                      "Lembrar-se",
                      style: GoogleFonts.roboto(
                        color: AppColor_login.textColor,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Esqueci minha senha",
                    style: GoogleFonts.roboto(
                      decoration: TextDecoration.underline,
                      color: AppColor_login.textColor,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              height: 58,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor_login.textColor,
                ),
                onPressed: () {
                  Get.to(() => const HomePageTwitch());
                },
                child: Text(
                  "Login",
                  style: GoogleFonts.roboto(
                    color: AppColor_login.primaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Não possui uma conta?",
                  style: GoogleFonts.roboto(
                    color: AppColor_login.textColor,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 5),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Registrar-se",
                    style: GoogleFonts.roboto(
                      color: AppColor_login.textColor,
                      decoration: TextDecoration.underline,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
