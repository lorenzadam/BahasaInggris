// import 'package:best_flutter_ui_templates/kelas3/huruf/home.dart';
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
      // navigateScreen: Kelas3HomeScreen(),
    ),
    HomeList(
      imagePath: 'assets/images/angka.png',
      // navigateScreen: Kelas4HomeScreen(),
    ),
    HomeList(
      imagePath: 'assets/images/kata.png',
      // navigateScreen: Kelas5HomeScreen(),
    ),
    HomeList(
      imagePath: 'assets/images/warna.png',
      // navigateScreen: Kelas6HomeScreen(),
    ),
  ];
}
