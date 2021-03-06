import 'package:best_flutter_ui_templates/kelas3/kata/pelajari/main.dart';
import 'package:best_flutter_ui_templates/kelas3/kata/reading/main.dart';
import 'package:best_flutter_ui_templates/kelas3/kata/writing/main.dart';
import 'package:best_flutter_ui_templates/kelas3/kata/listening/main.dart';
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
      imagePath: 'assets/images/pelajari.png',
      navigateScreen: MyAppPelajari(),
    ),
    HomeList(
      imagePath: 'assets/images/mendengar.png',
      navigateScreen: MyAppListening(),
    ),
    HomeList(
      imagePath: 'assets/images/membaca.png',
      navigateScreen: MyAppReading(),
    ),
    HomeList(
      imagePath: 'assets/images/menulis.png',
      navigateScreen: MyAppWriting(),
    ),
  ];
}
