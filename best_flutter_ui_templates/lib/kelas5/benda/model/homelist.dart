import 'package:best_flutter_ui_templates/kelas5/benda/pelajari/main.dart';
import 'package:best_flutter_ui_templates/kelas5/benda/permainan/main.dart';
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
      navigateScreen: MyAppPermainan(),
    ),
    HomeList(
      imagePath: 'assets/images/pelajari.png',
      navigateScreen: MyApp(),
    ),
  ];
}
