//import 'package:best_flutter_ui_templates/kelas3/huruf/home_screen.dart';
import 'package:flutter/widgets.dart';

class HomeList {
  HomeList({
    this.navigateScreen,
    this.imagePath = '',
  });

  Widget navigateScreen;
  String imagePath;

  static List<HomeList> homeList = [
    HomeList(
      imagePath: 'assets/images/mulaibermain.png',
      //navigateScreen: Huruf(),
    ),
    HomeList(
      imagePath: 'assets/images/pelajari.png',
      // navigateScreen: Kelas4HomeScreen(),
    ),
  ];
}
