import 'package:best_flutter_ui_templates/kelas3/home_kelas3.dart';
import 'package:best_flutter_ui_templates/kelas4/home_kelas4.dart';
import 'package:best_flutter_ui_templates/kelas5/home_kelas5.dart';
import 'package:best_flutter_ui_templates/kelas6/home_kelas6.dart';
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
      navigateScreen: Kelas3HomeScreen(),
    ),
    HomeList(
      imagePath: 'assets/images/kelas4.png',
      navigateScreen: Kelas4HomeScreen(),
    ),
    HomeList(
      imagePath: 'assets/images/kelas5.png',
      navigateScreen: Kelas5HomeScreen(),
    ),
    HomeList(
      imagePath: 'assets/images/kelas6.png',
      navigateScreen: Kelas6HomeScreen(),
    ),
  ];
}
