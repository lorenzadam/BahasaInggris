import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:io';
import 'package:best_flutter_ui_templates/app_theme.dart';

void main() => runApp(MyAppPelajari());

class MyAppPelajari extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pengenalan Benda',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: AppTheme.textTheme,
        platform: TargetPlatform.iOS,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  final List<String> inggris = [
    'Table',
    'Chair',
    'Wardrobe',
    'Book',
    'Glass',
    'Plate',
    'Handphone',
    'Clothes'
  ];
  AudioPlayer audioPlayer;
  AudioPlayerState playerState;

  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer();
    playerState = null;
  }

  Future loadAsset0() async {
    return await rootBundle.load('assets/audio/Table.mp3');
  }

  Future loadAsset1() async {
    return await rootBundle.load('assets/audio/Chair.mp3');
  }

  Future loadAsset2() async {
    return await rootBundle.load('assets/audio/Wardrobe.mp3');
  }

  Future loadAsset3() async {
    return await rootBundle.load('assets/audio/Book.mp3');
  }

  Future loadAsset4() async {
    return await rootBundle.load('assets/audio/Glass.mp3');
  }

  Future loadAsset5() async {
    return await rootBundle.load('assets/audio/Plate.mp3');
  }

  Future loadAsset6() async {
    return await rootBundle.load('assets/audio/Handphone.mp3');
  }

  Future loadAsset7() async {
    return await rootBundle.load('assets/audio/Clothes.mp3');
  }

  Future<void> play0() async {
    final file = new File('${(await getTemporaryDirectory()).path}/Table.mp3');
    await file.writeAsBytes((await loadAsset0()).buffer.asUint8List());
    await audioPlayer.play(file.path, isLocal: true);
    setState(() {
      playerState = AudioPlayerState.PLAYING;
      if (audioPlayer.state == AudioPlayerState.COMPLETED) {
        playerState = AudioPlayerState.STOPPED;
      }
    });
  }

  Future<void> play1() async {
    final file = new File('${(await getTemporaryDirectory()).path}/Chair.mp3');
    await file.writeAsBytes((await loadAsset1()).buffer.asUint8List());
    await audioPlayer.play(file.path, isLocal: true);
    setState(() {
      playerState = AudioPlayerState.PLAYING;
      if (audioPlayer.state == AudioPlayerState.COMPLETED) {
        playerState = AudioPlayerState.STOPPED;
      }
    });
  }

  Future<void> play2() async {
    final file =
        new File('${(await getTemporaryDirectory()).path}/Wardrobe.mp3');
    await file.writeAsBytes((await loadAsset2()).buffer.asUint8List());
    await audioPlayer.play(file.path, isLocal: true);
    setState(() {
      playerState = AudioPlayerState.PLAYING;
      if (audioPlayer.state == AudioPlayerState.COMPLETED) {
        playerState = AudioPlayerState.STOPPED;
      }
    });
  }

  Future<void> play3() async {
    final file = new File('${(await getTemporaryDirectory()).path}/Book.mp3');
    await file.writeAsBytes((await loadAsset3()).buffer.asUint8List());
    await audioPlayer.play(file.path, isLocal: true);
    setState(() {
      playerState = AudioPlayerState.PLAYING;
      if (audioPlayer.state == AudioPlayerState.COMPLETED) {
        playerState = AudioPlayerState.STOPPED;
      }
    });
  }

  Future<void> play4() async {
    final file = new File('${(await getTemporaryDirectory()).path}/Glass.mp3');
    await file.writeAsBytes((await loadAsset4()).buffer.asUint8List());
    await audioPlayer.play(file.path, isLocal: true);
    setState(() {
      playerState = AudioPlayerState.PLAYING;
      if (audioPlayer.state == AudioPlayerState.COMPLETED) {
        playerState = AudioPlayerState.STOPPED;
      }
    });
  }

  Future<void> play5() async {
    final file = new File('${(await getTemporaryDirectory()).path}/Plate.mp3');
    await file.writeAsBytes((await loadAsset5()).buffer.asUint8List());
    await audioPlayer.play(file.path, isLocal: true);
    setState(() {
      playerState = AudioPlayerState.PLAYING;
      if (audioPlayer.state == AudioPlayerState.COMPLETED) {
        playerState = AudioPlayerState.STOPPED;
      }
    });
  }

  Future<void> play6() async {
    final file =
        new File('${(await getTemporaryDirectory()).path}/Handphone.mp3');
    await file.writeAsBytes((await loadAsset6()).buffer.asUint8List());
    await audioPlayer.play(file.path, isLocal: true);
    setState(() {
      playerState = AudioPlayerState.PLAYING;
      if (audioPlayer.state == AudioPlayerState.COMPLETED) {
        playerState = AudioPlayerState.STOPPED;
      }
    });
  }

  Future<void> play7() async {
    final file =
        new File('${(await getTemporaryDirectory()).path}/Clothes.mp3');
    await file.writeAsBytes((await loadAsset7()).buffer.asUint8List());
    await audioPlayer.play(file.path, isLocal: true);
    setState(() {
      playerState = AudioPlayerState.PLAYING;
      if (audioPlayer.state == AudioPlayerState.COMPLETED) {
        playerState = AudioPlayerState.STOPPED;
      }
    });
  }

  Future<void> pause() async {
    await audioPlayer.pause();
    setState(() => playerState = AudioPlayerState.PAUSED);
  }

  Future<void> stop() async {
    await audioPlayer.stop();
    setState(() => playerState = AudioPlayerState.STOPPED);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pengenalan Benda'),
      ),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //0
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          this.inggris[0],
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 24.0,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FloatingActionButton(
                          tooltip: 'Play',
                          child: Icon(Icons.play_arrow),
                          mini: true,
                          onPressed: playerState == null ||
                                  playerState == AudioPlayerState.PAUSED ||
                                  playerState == AudioPlayerState.STOPPED ||
                                  playerState == AudioPlayerState.COMPLETED
                              ? play0
                              : null,
                        ),
                        FloatingActionButton(
                          tooltip: 'Stop',
                          child: Icon(Icons.stop),
                          mini: true,
                          onPressed: playerState == AudioPlayerState.PLAYING
                              ? stop
                              : null,
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  width: 70.0,
                ),
                //1
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          this.inggris[1],
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 24.0,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FloatingActionButton(
                          tooltip: 'Play',
                          child: Icon(Icons.play_arrow),
                          mini: true,
                          onPressed: playerState == null ||
                                  playerState == AudioPlayerState.PAUSED ||
                                  playerState == AudioPlayerState.STOPPED ||
                                  playerState == AudioPlayerState.COMPLETED
                              ? play1
                              : null,
                        ),
                        FloatingActionButton(
                          tooltip: 'Stop',
                          child: Icon(Icons.stop),
                          mini: true,
                          onPressed: playerState == AudioPlayerState.PLAYING
                              ? stop
                              : null,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Container(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //2
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          this.inggris[2],
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 24.0,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FloatingActionButton(
                          tooltip: 'Play',
                          child: Icon(Icons.play_arrow),
                          mini: true,
                          onPressed: playerState == null ||
                                  playerState == AudioPlayerState.PAUSED ||
                                  playerState == AudioPlayerState.STOPPED ||
                                  playerState == AudioPlayerState.COMPLETED
                              ? play2
                              : null,
                        ),
                        FloatingActionButton(
                          tooltip: 'Stop',
                          child: Icon(Icons.stop),
                          mini: true,
                          onPressed: playerState == AudioPlayerState.PLAYING
                              ? stop
                              : null,
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  width: 70.0,
                ),
                //3
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          this.inggris[3],
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 24.0,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FloatingActionButton(
                          tooltip: 'Play',
                          child: Icon(Icons.play_arrow),
                          mini: true,
                          onPressed: playerState == null ||
                                  playerState == AudioPlayerState.PAUSED ||
                                  playerState == AudioPlayerState.STOPPED ||
                                  playerState == AudioPlayerState.COMPLETED
                              ? play3
                              : null,
                        ),
                        FloatingActionButton(
                          tooltip: 'Stop',
                          child: Icon(Icons.stop),
                          mini: true,
                          onPressed: playerState == AudioPlayerState.PLAYING
                              ? stop
                              : null,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Container(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //4
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          this.inggris[4],
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 24.0,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FloatingActionButton(
                          tooltip: 'Play',
                          child: Icon(Icons.play_arrow),
                          mini: true,
                          onPressed: playerState == null ||
                                  playerState == AudioPlayerState.PAUSED ||
                                  playerState == AudioPlayerState.STOPPED ||
                                  playerState == AudioPlayerState.COMPLETED
                              ? play4
                              : null,
                        ),
                        FloatingActionButton(
                          tooltip: 'Stop',
                          child: Icon(Icons.stop),
                          mini: true,
                          onPressed: playerState == AudioPlayerState.PLAYING
                              ? stop
                              : null,
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  width: 70.0,
                ),
                //5
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          this.inggris[5],
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 24.0,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FloatingActionButton(
                          tooltip: 'Play',
                          child: Icon(Icons.play_arrow),
                          mini: true,
                          onPressed: playerState == null ||
                                  playerState == AudioPlayerState.PAUSED ||
                                  playerState == AudioPlayerState.STOPPED ||
                                  playerState == AudioPlayerState.COMPLETED
                              ? play5
                              : null,
                        ),
                        FloatingActionButton(
                          tooltip: 'Stop',
                          child: Icon(Icons.stop),
                          mini: true,
                          onPressed: playerState == AudioPlayerState.PLAYING
                              ? stop
                              : null,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Container(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //6
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          this.inggris[6],
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 24.0,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FloatingActionButton(
                          tooltip: 'Play',
                          child: Icon(Icons.play_arrow),
                          mini: true,
                          onPressed: playerState == null ||
                                  playerState == AudioPlayerState.PAUSED ||
                                  playerState == AudioPlayerState.STOPPED ||
                                  playerState == AudioPlayerState.COMPLETED
                              ? play6
                              : null,
                        ),
                        FloatingActionButton(
                          tooltip: 'Stop',
                          child: Icon(Icons.stop),
                          mini: true,
                          onPressed: playerState == AudioPlayerState.PLAYING
                              ? stop
                              : null,
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                  width: 70.0,
                ),
                //7
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          this.inggris[7],
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 24.0,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FloatingActionButton(
                          tooltip: 'Play',
                          child: Icon(Icons.play_arrow),
                          mini: true,
                          onPressed: playerState == null ||
                                  playerState == AudioPlayerState.PAUSED ||
                                  playerState == AudioPlayerState.STOPPED ||
                                  playerState == AudioPlayerState.COMPLETED
                              ? play7
                              : null,
                        ),
                        FloatingActionButton(
                          tooltip: 'Stop',
                          child: Icon(Icons.stop),
                          mini: true,
                          onPressed: playerState == AudioPlayerState.PLAYING
                              ? stop
                              : null,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
