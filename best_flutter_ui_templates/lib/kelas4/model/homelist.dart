import 'package:best_flutter_ui_templates/kelas4/dimensi/home_screen.dart';
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
      imagePath: 'assets/images/2d.png',
      navigateScreen: Dimensi(),
    ),
  ];
}
