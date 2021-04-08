import 'package:best_flutter_ui_templates/kelas3/huruf/home_screen.dart';
import 'package:best_flutter_ui_templates/kelas3/angka/home_screen.dart';
import 'package:best_flutter_ui_templates/kelas3/kata/home_screen.dart';
import 'package:best_flutter_ui_templates/kelas3/warna/home_screen.dart';
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
      imagePath: 'assets/images/huruf.png',
      navigateScreen: Huruf(),
    ),
    HomeList(
      imagePath: 'assets/images/angka.png',
      navigateScreen: Angka(),
    ),
    HomeList(
      imagePath: 'assets/images/kata.png',
      navigateScreen: Kata(),
    ),
    HomeList(
      imagePath: 'assets/images/warna.png',
      navigateScreen: Warna(),
    ),
  ];
}
