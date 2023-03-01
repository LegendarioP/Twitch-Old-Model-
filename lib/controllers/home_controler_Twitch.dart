import 'package:get/get.dart';

class HomeControlerTwitch extends GetxController {
  List storyMode = [
    "assets/imgs/Profile/modelo1.jpg",
    "assets/imgs/Profile/modelo2.jpg",
    "assets/imgs/Profile/modelo3.jpg",
    "assets/imgs/Profile/modelo4.jpg",
    "assets/imgs/Profile/modelo5.jpg",
    "assets/imgs/Profile/modelo6.png",
  ];

  RxInt selectedCartegorie = 0.obs;

  changeTabCat(index) {
    selectedCartegorie.value = index;
  }

  List categoriesToSee = [
    "Just Chatting",
    "IRL",
    "Surival",
    "Horror",
    "Cat5",
    "Cat6",
    "Cat7",
    "Cat8",
    "Cat9",
    "Cat10",
  ];

  List liveCard = [
    "assets/imgs/LiveCard/post1.jpg",
    "assets/imgs/LiveCard/post2.jpg",
    "assets/imgs/LiveCard/post3.jpg",
    "assets/imgs/LiveCard/post4.jpg",
    "assets/imgs/LiveCard/post5.jpg",
  ];

  List titleLive = [
    "1 LIVE DO APPP",
    "2 LIVE DO APPP",
    "3 LIVE DO APPP",
    "4 LIVE DO APPP",
    "5 LIVE DO APPP",
  ];

  List userLive = [
    "Carlinhos Brau",
    "Azanloka",
    "Celso por ti, olhe",
    "Rita lee de osasco",
    "Marcelo do grau",
  ];
}
