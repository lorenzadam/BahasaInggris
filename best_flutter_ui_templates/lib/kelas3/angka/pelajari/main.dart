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
      title: 'Pengenalan Angka',
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
    '0 - Zero',
    '1 - One',
    '2 - Two',
    '3 - Three',
    '4 - Four',
    '5 - Five',
    '6 - Six',
    '7 - Seven',
    '8 - Eight',
    '9 - Nine',
    '10 - Ten'
  ];
  final List<String> indonesia = [
    'Nol',
    'Satu',
    'Dua',
    'Tiga',
    'Empat',
    'Lima',
    'Enam',
    'Tujuh',
    'Delapan',
    'Sembilan',
    'Sepuluh'
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
    return await rootBundle.load('assets/audio/Zero.mp3');
  }

  Future loadAsset1() async {
    return await rootBundle.load('assets/audio/One.mp3');
  }

  Future loadAsset2() async {
    return await rootBundle.load('assets/audio/Two.mp3');
  }

  Future loadAsset3() async {
    return await rootBundle.load('assets/audio/Three.mp3');
  }

  Future loadAsset4() async {
    return await rootBundle.load('assets/audio/Four.mp3');
  }

  Future loadAsset5() async {
    return await rootBundle.load('assets/audio/Five.mp3');
  }

  Future loadAsset6() async {
    return await rootBundle.load('assets/audio/Six.mp3');
  }

  Future loadAsset7() async {
    return await rootBundle.load('assets/audio/Seven.mp3');
  }

  Future loadAsset8() async {
    return await rootBundle.load('assets/audio/Eight.mp3');
  }

  Future loadAsset9() async {
    return await rootBundle.load('assets/audio/Nine.mp3');
  }

  Future loadAsset10() async {
    return await rootBundle.load('assets/audio/Ten.mp3');
  }

  Future<void> play0() async {
    final file = new File('${(await getTemporaryDirectory()).path}/Zero.mp3');
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
    final file = new File('${(await getTemporaryDirectory()).path}/One.mp3');
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
    final file = new File('${(await getTemporaryDirectory()).path}/Two.mp3');
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
    final file = new File('${(await getTemporaryDirectory()).path}/Three.mp3');
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
    final file = new File('${(await getTemporaryDirectory()).path}/Four.mp3');
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
    final file = new File('${(await getTemporaryDirectory()).path}/Five.mp3');
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
    final file = new File('${(await getTemporaryDirectory()).path}/Six.mp3');
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
    final file = new File('${(await getTemporaryDirectory()).path}/Seven.mp3');
    await file.writeAsBytes((await loadAsset7()).buffer.asUint8List());
    await audioPlayer.play(file.path, isLocal: true);
    setState(() {
      playerState = AudioPlayerState.PLAYING;
      if (audioPlayer.state == AudioPlayerState.COMPLETED) {
        playerState = AudioPlayerState.STOPPED;
      }
    });
  }

  Future<void> play8() async {
    final file = new File('${(await getTemporaryDirectory()).path}/Eight.mp3');
    await file.writeAsBytes((await loadAsset8()).buffer.asUint8List());
    await audioPlayer.play(file.path, isLocal: true);
    setState(() {
      playerState = AudioPlayerState.PLAYING;
      if (audioPlayer.state == AudioPlayerState.COMPLETED) {
        playerState = AudioPlayerState.STOPPED;
      }
    });
  }

  Future<void> play9() async {
    final file = new File('${(await getTemporaryDirectory()).path}/Nine.mp3');
    await file.writeAsBytes((await loadAsset9()).buffer.asUint8List());
    await audioPlayer.play(file.path, isLocal: true);
    setState(() {
      playerState = AudioPlayerState.PLAYING;
      if (audioPlayer.state == AudioPlayerState.COMPLETED) {
        playerState = AudioPlayerState.STOPPED;
      }
    });
  }

  Future<void> play10() async {
    final file = new File('${(await getTemporaryDirectory()).path}/Ten.mp3');
    await file.writeAsBytes((await loadAsset10()).buffer.asUint8List());
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
            Container(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //8
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          this.inggris[8],
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
                          this.indonesia[8],
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
                              ? play8
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
                //9
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          this.inggris[9],
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
                          this.indonesia[9],
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
                              ? play9
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
                //8
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          this.inggris[10],
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
                          this.indonesia[10],
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
                              ? play10
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
