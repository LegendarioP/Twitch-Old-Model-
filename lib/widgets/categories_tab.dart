import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/home_controler_Twitch.dart';
import '../staticColors/colors_Login.dart';

class CategoriesTab extends StatelessWidget {
  const CategoriesTab({
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
            HomeControlerTwitchVar.categoriesToSee.length,
            ((index) => Obx(
                  () => GestureDetector(
                    onTap: () {
                      HomeControlerTwitchVar.changeTabCat(index);
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 400),
                      margin: const EdgeInsets.only(right: 8),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color:
                              HomeControlerTwitchVar.selectedCartegorie.value ==
                                      index
                                  ? AppColor_login.primaryColor
                                  : AppColor_login.unselectedColor),
                      child: Text(
                        HomeControlerTwitchVar.categoriesToSee[index],
                        style: GoogleFonts.roboto(
                          color: AppColor_login.textColor,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ))),
      ),
    );
  }
}
