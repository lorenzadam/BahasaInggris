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
      title: 'Pengenalan Huruf',
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
    'Morning',
    'Name',
    'Happy',
    'Hungry',
    'Drink',
    'Eat',
    'Afternoon',
    'Night',
    'Sleep',
    'Cloudy'
  ];
  final List<String> indonesia = [
    'Pagi',
    'Nama',
    'Senang',
    'Lapar',
    'Minum',
    'Makan',
    'Sore',
    'Malam',
    'Tidur',
    'Mendung'
  ];
  AudioPlayer audioPlayer;
  AudioPlayerState playerState;

  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer();
    playerState = null;
  }

  Future loadAssetMorning() async {
    return await rootBundle.load('assets/audio/Morning.mp3');
  }

  Future loadAssetName() async {
    return await rootBundle.load('assets/audio/Name.mp3');
  }

  Future loadAssetHappy() async {
    return await rootBundle.load('assets/audio/Happy.mp3');
  }

  Future loadAssetHungry() async {
    return await rootBundle.load('assets/audio/Hungry.mp3');
  }

  Future loadAssetDrink() async {
    return await rootBundle.load('assets/audio/Drink.mp3');
  }

  Future loadAssetEat() async {
    return await rootBundle.load('assets/audio/Eat.mp3');
  }

  Future loadAssetAfternoon() async {
    return await rootBundle.load('assets/audio/Afternoon.mp3');
  }

  Future loadAssetNight() async {
    return await rootBundle.load('assets/audio/Night.mp3');
  }

  Future loadAssetSleep() async {
    return await rootBundle.load('assets/audio/Sleep.mp3');
  }

  Future loadAssetCloudy() async {
    return await rootBundle.load('assets/audio/Cloudy.mp3');
  }

  Future<void> playMorning() async {
    final file =
        new File('${(await getTemporaryDirectory()).path}/Morning.mp3');
    await file.writeAsBytes((await loadAssetMorning()).buffer.asUint8List());
    await audioPlayer.play(file.path, isLocal: true);
    setState(() {
      playerState = AudioPlayerState.PLAYING;
      if (audioPlayer.state == AudioPlayerState.COMPLETED) {
        playerState = AudioPlayerState.STOPPED;
      }
    });
  }

  Future<void> playName() async {
    final file = new File('${(await getTemporaryDirectory()).path}/Name.mp3');
    await file.writeAsBytes((await loadAssetName()).buffer.asUint8List());
    await audioPlayer.play(file.path, isLocal: true);
    setState(() {
      playerState = AudioPlayerState.PLAYING;
      if (audioPlayer.state == AudioPlayerState.COMPLETED) {
        playerState = AudioPlayerState.STOPPED;
      }
    });
  }

  Future<void> playHappy() async {
    final file = new File('${(await getTemporaryDirectory()).path}/Happy.mp3');
    await file.writeAsBytes((await loadAssetHappy()).buffer.asUint8List());
    await audioPlayer.play(file.path, isLocal: true);
    setState(() {
      playerState = AudioPlayerState.PLAYING;
      if (audioPlayer.state == AudioPlayerState.COMPLETED) {
        playerState = AudioPlayerState.STOPPED;
      }
    });
  }

  Future<void> playHungry() async {
    final file = new File('${(await getTemporaryDirectory()).path}/Hungry.mp3');
    await file.writeAsBytes((await loadAssetHungry()).buffer.asUint8List());
    await audioPlayer.play(file.path, isLocal: true);
    setState(() {
      playerState = AudioPlayerState.PLAYING;
      if (audioPlayer.state == AudioPlayerState.COMPLETED) {
        playerState = AudioPlayerState.STOPPED;
      }
    });
  }

  Future<void> playDrink() async {
    final file = new File('${(await getTemporaryDirectory()).path}/Drink.mp3');
    await file.writeAsBytes((await loadAssetDrink()).buffer.asUint8List());
    await audioPlayer.play(file.path, isLocal: true);
    setState(() {
      playerState = AudioPlayerState.PLAYING;
      if (audioPlayer.state == AudioPlayerState.COMPLETED) {
        playerState = AudioPlayerState.STOPPED;
      }
    });
  }

  Future<void> playEat() async {
    final file = new File('${(await getTemporaryDirectory()).path}/Eat.mp3');
    await file.writeAsBytes((await loadAssetEat()).buffer.asUint8List());
    await audioPlayer.play(file.path, isLocal: true);
    setState(() {
      playerState = AudioPlayerState.PLAYING;
      if (audioPlayer.state == AudioPlayerState.COMPLETED) {
        playerState = AudioPlayerState.STOPPED;
      }
    });
  }

  Future<void> playAfternoon() async {
    final file =
        new File('${(await getTemporaryDirectory()).path}/Afternoon.mp3');
    await file.writeAsBytes((await loadAssetAfternoon()).buffer.asUint8List());
    await audioPlayer.play(file.path, isLocal: true);
    setState(() {
      playerState = AudioPlayerState.PLAYING;
      if (audioPlayer.state == AudioPlayerState.COMPLETED) {
        playerState = AudioPlayerState.STOPPED;
      }
    });
  }

  Future<void> playNight() async {
    final file = new File('${(await getTemporaryDirectory()).path}/Night.mp3');
    await file.writeAsBytes((await loadAssetNight()).buffer.asUint8List());
    await audioPlayer.play(file.path, isLocal: true);
    setState(() {
      playerState = AudioPlayerState.PLAYING;
      if (audioPlayer.state == AudioPlayerState.COMPLETED) {
        playerState = AudioPlayerState.STOPPED;
      }
    });
  }

  Future<void> playSleep() async {
    final file = new File('${(await getTemporaryDirectory()).path}/Sleep.mp3');
    await file.writeAsBytes((await loadAssetSleep()).buffer.asUint8List());
    await audioPlayer.play(file.path, isLocal: true);
    setState(() {
      playerState = AudioPlayerState.PLAYING;
      if (audioPlayer.state == AudioPlayerState.COMPLETED) {
        playerState = AudioPlayerState.STOPPED;
      }
    });
  }

  Future<void> playCloudy() async {
    final file = new File('${(await getTemporaryDirectory()).path}/Cloudy.mp3');
    await file.writeAsBytes((await loadAssetCloudy()).buffer.asUint8List());
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
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                //Morning
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
                              ? playMorning
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
                //Name
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
                              ? playName
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
                //Happy
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
                              ? playHappy
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
                //Hungry
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
                              ? playHungry
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
                //Drink
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
                              ? playDrink
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
                //Eat
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
                              ? playEat
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
                //Afternoon
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
                              ? playAfternoon
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
                //Night
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
                              ? playNight
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
                //Sleep
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
                              ? playSleep
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
                //Night
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
                              ? playCloudy
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
          ],
        ),
      ),
    );
  }
}
