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
      title: 'Bentuk 2 Dimensi',
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
    'Circle',
    'Square',
    'Triangle',
    'Rectangle',
    'Oval',
    'Diamond',
    'Pentagon',
    'Hexagon',
    'Octagon',
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
    return await rootBundle.load('assets/audio/Circle.mp3');
  }

  Future loadAsset1() async {
    return await rootBundle.load('assets/audio/Square.mp3');
  }

  Future loadAsset2() async {
    return await rootBundle.load('assets/audio/Triangle.mp3');
  }

  Future loadAsset3() async {
    return await rootBundle.load('assets/audio/Rectangle.mp3');
  }

  Future loadAsset4() async {
    return await rootBundle.load('assets/audio/Oval.mp3');
  }

  Future loadAsset5() async {
    return await rootBundle.load('assets/audio/Diamond.mp3');
  }

  Future loadAsset6() async {
    return await rootBundle.load('assets/audio/Pentagon.mp3');
  }

  Future loadAsset7() async {
    return await rootBundle.load('assets/audio/Hexagon.mp3');
  }

  Future<void> play0() async {
    final file = new File('${(await getTemporaryDirectory()).path}/Circle.mp3');
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
    final file = new File('${(await getTemporaryDirectory()).path}/Square.mp3');
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
        new File('${(await getTemporaryDirectory()).path}/Triangle.mp3');
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
    final file =
        new File('${(await getTemporaryDirectory()).path}/Rectangle.mp3');
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
    final file = new File('${(await getTemporaryDirectory()).path}/Oval.mp3');
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
    final file =
        new File('${(await getTemporaryDirectory()).path}/Diamond.mp3');
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
        new File('${(await getTemporaryDirectory()).path}/Pentagon.mp3');
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
        new File('${(await getTemporaryDirectory()).path}/Hexagon.mp3');
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
        title: Text('Bentuk 2 Dimensi'),
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
