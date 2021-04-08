import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:io';
import 'package:best_flutter_ui_templates/app_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pengenalan Kata',
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
  AudioPlayer audioPlayer;
  AudioPlayerState playerState;

  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer();
    playerState = null;
  }

  Future loadAssetA() async {
    return await rootBundle.load('assets/audio/A.mp3');
  }

  Future loadAssetB() async {
    return await rootBundle.load('assets/audio/B.mp3');
  }

  Future<void> playA() async {
    final file = new File('${(await getTemporaryDirectory()).path}/A.mp3');
    await file.writeAsBytes((await loadAssetA()).buffer.asUint8List());
    await audioPlayer.play(file.path, isLocal: true);
    setState(() {
      playerState = AudioPlayerState.PLAYING;
      if (audioPlayer.state == AudioPlayerState.COMPLETED) {
        playerState = AudioPlayerState.STOPPED;
      }
    });
  }

  Future<void> playB() async {
    final file = new File('${(await getTemporaryDirectory()).path}/B.mp3');
    await file.writeAsBytes((await loadAssetB()).buffer.asUint8List());
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
        title: Text('Pengenalan Kata'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FloatingActionButton(
              tooltip: 'Play',
              child: Icon(Icons.play_arrow),
              onPressed: playerState == null ||
                      playerState == AudioPlayerState.PAUSED ||
                      playerState == AudioPlayerState.STOPPED ||
                      playerState == AudioPlayerState.COMPLETED
                  ? playA
                  : null,
            ),
            Container(width: 10.10),
            FloatingActionButton(
              tooltip: 'Play',
              child: Icon(Icons.play_arrow),
              onPressed: playerState == null ||
                      playerState == AudioPlayerState.PAUSED ||
                      playerState == AudioPlayerState.STOPPED ||
                      playerState == AudioPlayerState.COMPLETED
                  ? playB
                  : null,
            ),
            Container(width: 10.10),
            FloatingActionButton(
              tooltip: 'Pause',
              child: Icon(Icons.pause),
              onPressed: playerState == AudioPlayerState.PLAYING ? pause : null,
            ),
            Container(width: 10.10),
            FloatingActionButton(
              tooltip: 'Stop',
              child: Icon(Icons.stop),
              onPressed: playerState == AudioPlayerState.PLAYING ? stop : null,
            ),
          ],
        ),
      ),
    );
  }
}
