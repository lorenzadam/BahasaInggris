import 'package:best_flutter_ui_templates/kelas3/home_screen.dart';
import 'package:best_flutter_ui_templates/kelas4/home_screen.dart';
import 'package:best_flutter_ui_templates/kelas5/home_screen.dart';
import 'package:best_flutter_ui_templates/kelas6/home_screen.dart';
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
      imagePath: 'assets/images/kelas3.png',
      navigateScreen: Kelas3(),
    ),
    HomeList(
      imagePath: 'assets/images/kelas4.png',
      navigateScreen: Kelas4(),
    ),
    HomeList(
      imagePath: 'assets/images/kelas5.png',
      navigateScreen: Kelas5(),
    ),
    HomeList(
      imagePath: 'assets/images/kelas6.png',
      navigateScreen: Kelas6(),
    ),
  ];
}
