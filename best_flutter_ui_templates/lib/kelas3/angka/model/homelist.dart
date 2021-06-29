import 'package:best_flutter_ui_templates/kelas3/angka/pelajari/main.dart';
import 'package:best_flutter_ui_templates/kelas3/angka/reading/main.dart';
import 'package:best_flutter_ui_templates/kelas3/angka/writing/main.dart';
import 'package:best_flutter_ui_templates/kelas3/angka/listening/main.dart';
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
