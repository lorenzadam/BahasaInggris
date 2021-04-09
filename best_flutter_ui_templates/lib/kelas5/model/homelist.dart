import 'package:best_flutter_ui_templates/kelas5/benda/home_screen.dart';
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
      imagePath: 'assets/images/benda.png',
      navigateScreen: Benda(),
    ),
  ];
}
