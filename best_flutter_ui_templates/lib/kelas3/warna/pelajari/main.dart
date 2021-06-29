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
      title: 'Pengenalan Warna',
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
    'Red',
    'Yellow',
    'Green',
    'Blue',
    'Purple',
    'Pink',
    'Black',
    'White'
  ];
  final List<String> indonesia = [
    'Merah',
    'Kuning',
    'Hijau',
    'Biru',
    'Ungu',
    'Merah Muda',
    'Hitam',
    'Putih'
  ];
  AudioPlayer audioPlayer;
  AudioPlayerState playerState;

  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer();
    playerState = null;
  }

  Future loadAssetRed() async {
    return await rootBundle.load('assets/audio/Red.mp3');
  }

  Future loadAssetYellow() async {
    return await rootBundle.load('assets/audio/Yellow.mp3');
  }

  Future loadAssetGreen() async {
    return await rootBundle.load('assets/audio/Green.mp3');
  }

  Future loadAssetBlue() async {
    return await rootBundle.load('assets/audio/Blue.mp3');
  }

  Future loadAssetPurple() async {
    return await rootBundle.load('assets/audio/Purple.mp3');
  }

  Future loadAssetPink() async {
    return await rootBundle.load('assets/audio/Pink.mp3');
  }

  Future loadAssetBlack() async {
    return await rootBundle.load('assets/audio/Black.mp3');
  }

  Future loadAssetWhite() async {
    return await rootBundle.load('assets/audio/White.mp3');
  }

  Future<void> playRed() async {
    final file = new File('${(await getTemporaryDirectory()).path}/Red.mp3');
    await file.writeAsBytes((await loadAssetRed()).buffer.asUint8List());
    await audioPlayer.play(file.path, isLocal: true);
    setState(() {
      playerState = AudioPlayerState.PLAYING;
      if (audioPlayer.state == AudioPlayerState.COMPLETED) {
        playerState = AudioPlayerState.STOPPED;
      }
    });
  }

  Future<void> playYellow() async {
    final file = new File('${(await getTemporaryDirectory()).path}/Yellow.mp3');
    await file.writeAsBytes((await loadAssetYellow()).buffer.asUint8List());
    await audioPlayer.play(file.path, isLocal: true);
    setState(() {
      playerState = AudioPlayerState.PLAYING;
      if (audioPlayer.state == AudioPlayerState.COMPLETED) {
        playerState = AudioPlayerState.STOPPED;
      }
    });
  }

  Future<void> playGreen() async {
    final file = new File('${(await getTemporaryDirectory()).path}/Green.mp3');
    await file.writeAsBytes((await loadAssetGreen()).buffer.asUint8List());
    await audioPlayer.play(file.path, isLocal: true);
    setState(() {
      playerState = AudioPlayerState.PLAYING;
      if (audioPlayer.state == AudioPlayerState.COMPLETED) {
        playerState = AudioPlayerState.STOPPED;
      }
    });
  }

  Future<void> playBlue() async {
    final file = new File('${(await getTemporaryDirectory()).path}/Blue.mp3');
    await file.writeAsBytes((await loadAssetBlue()).buffer.asUint8List());
    await audioPlayer.play(file.path, isLocal: true);
    setState(() {
      playerState = AudioPlayerState.PLAYING;
      if (audioPlayer.state == AudioPlayerState.COMPLETED) {
        playerState = AudioPlayerState.STOPPED;
      }
    });
  }

  Future<void> playPurple() async {
    final file = new File('${(await getTemporaryDirectory()).path}/Purple.mp3');
    await file.writeAsBytes((await loadAssetPurple()).buffer.asUint8List());
    await audioPlayer.play(file.path, isLocal: true);
    setState(() {
      playerState = AudioPlayerState.PLAYING;
      if (audioPlayer.state == AudioPlayerState.COMPLETED) {
        playerState = AudioPlayerState.STOPPED;
      }
    });
  }

  Future<void> playPink() async {
    final file = new File('${(await getTemporaryDirectory()).path}/Pink.mp3');
    await file.writeAsBytes((await loadAssetPink()).buffer.asUint8List());
    await audioPlayer.play(file.path, isLocal: true);
    setState(() {
      playerState = AudioPlayerState.PLAYING;
      if (audioPlayer.state == AudioPlayerState.COMPLETED) {
        playerState = AudioPlayerState.STOPPED;
      }
    });
  }

  Future<void> playBlack() async {
    final file = new File('${(await getTemporaryDirectory()).path}/Black.mp3');
    await file.writeAsBytes((await loadAssetBlack()).buffer.asUint8List());
    await audioPlayer.play(file.path, isLocal: true);
    setState(() {
      playerState = AudioPlayerState.PLAYING;
      if (audioPlayer.state == AudioPlayerState.COMPLETED) {
        playerState = AudioPlayerState.STOPPED;
      }
    });
  }

  Future<void> playWhite() async {
    final file = new File('${(await getTemporaryDirectory()).path}/White.mp3');
    await file.writeAsBytes((await loadAssetWhite()).buffer.asUint8List());
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
        title: Text('Pengenalan Angka'),
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          this.indonesia[0],
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 24.0,
                            fontStyle: FontStyle.italic,
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
                              ? playRed
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          this.indonesia[1],
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 24.0,
                            fontStyle: FontStyle.italic,
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
                              ? playYellow
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          this.indonesia[2],
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 24.0,
                            fontStyle: FontStyle.italic,
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
                              ? playGreen
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          this.indonesia[3],
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 24.0,
                            fontStyle: FontStyle.italic,
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
                              ? playBlue
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          this.indonesia[4],
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 24.0,
                            fontStyle: FontStyle.italic,
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
                              ? playPurple
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          this.indonesia[5],
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 24.0,
                            fontStyle: FontStyle.italic,
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
                              ? playPink
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          this.indonesia[6],
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 24.0,
                            fontStyle: FontStyle.italic,
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
                              ? playBlack
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          this.indonesia[7],
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 24.0,
                            fontStyle: FontStyle.italic,
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
                              ? playWhite
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
