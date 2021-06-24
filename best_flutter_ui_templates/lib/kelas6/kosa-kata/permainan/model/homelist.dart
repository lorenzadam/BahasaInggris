import 'package:best_flutter_ui_templates/kelas6/kosa-kata/permainan/writing/main.dart';
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
      imagePath: 'assets/images/word.png',
      navigateScreen: MyAppQuiz(),
    ),
  ];
}
