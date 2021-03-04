import 'dart:async';
import 'dart:io';

import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

typedef void OnError(Exception exception);

class Huruf extends StatefulWidget {
  @override
  _ExampleAppState createState() => _ExampleAppState();
}

class _ExampleAppState extends State<Huruf> {
  AudioCache audioCache = AudioCache();
  AudioPlayer advancedPlayer = AudioPlayer();
  String localFilePath;

  Widget localAsset() {
    return SingleChildScrollView(
      child: _Tab(children: [
        Text('Play Local Asset \'audio.mp3\':'),
        _Btn(txt: 'Play', onPressed: () => audioCache.play('audio.mp3')),
        Text('Play Local Asset (via byte source) \'audio.mp3\':'),
        _Btn(
          txt: 'Play',
          onPressed: () async {
            var bytes =
                await (await audioCache.load('audio.mp3')).readAsBytes();
            audioCache.playBytes(bytes);
          },
        ),
        Text('Loop Local Asset \'audio.mp3\':'),
        _Btn(txt: 'Loop', onPressed: () => audioCache.loop('audio.mp3')),
        Text('Loop Local Asset (via byte source) \'audio.mp3\':'),
        _Btn(
          txt: 'Loop',
          onPressed: () async {
            var bytes =
                await (await audioCache.load('audio.mp3')).readAsBytes();
            audioCache.playBytes(bytes, loop: true);
          },
        ),
        Text('Play Local Asset \'audio2.mp3\':'),
        _Btn(txt: 'Play', onPressed: () => audioCache.play('audio2.mp3')),
        Text('Play Local Asset In Low Latency \'audio.mp3\':'),
        _Btn(
          txt: 'Play',
          onPressed: () =>
              audioCache.play('audio.mp3', mode: PlayerMode.LOW_LATENCY),
        ),
        Text('Play Local Asset Concurrently In Low Latency \'audio.mp3\':'),
        _Btn(
            txt: 'Play',
            onPressed: () async {
              await audioCache.play('audio.mp3', mode: PlayerMode.LOW_LATENCY);
              await audioCache.play('audio2.mp3', mode: PlayerMode.LOW_LATENCY);
            }),
        Text('Play Local Asset In Low Latency \'audio2.mp3\':'),
        _Btn(
          txt: 'Play',
          onPressed: () =>
              audioCache.play('audio2.mp3', mode: PlayerMode.LOW_LATENCY),
        ),
        getLocalFileDuration(),
      ]),
    );
  }

  Future<int> _getDuration() async {
    File audiofile = await audioCache.load('audio2.mp3');
    await advancedPlayer.setUrl(
      audiofile.path,
    );
    int duration = await Future.delayed(
      Duration(seconds: 2),
      () => advancedPlayer.getDuration(),
    );
    return duration;
  }

  getLocalFileDuration() {
    return FutureBuilder<int>(
      future: _getDuration(),
      builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.none:
            return Text('No Connection...');
          case ConnectionState.active:
          case ConnectionState.waiting:
            return Text('Awaiting result...');
          case ConnectionState.done:
            if (snapshot.hasError) return Text('Error: ${snapshot.error}');
            return Text(
              'audio2.mp3 duration is: ${Duration(milliseconds: snapshot.data)}',
            );
        }
        return null; // unreachable
      },
    );
  }

  Widget notification() {
    return _Tab(children: [
      Text('Play notification sound: \'messenger.mp3\':'),
      _Btn(
        txt: 'Play',
        onPressed: () => audioCache.play('messenger.mp3', isNotification: true),
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StreamProvider<Duration>.value(
            initialData: Duration(),
            value: advancedPlayer.onAudioPositionChanged),
      ],
      child: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: 'Local Asset'),
              ],
            ),
            title: Text('audioplayers Example'),
          ),
          body: TabBarView(
            children: [
              localAsset(),
            ],
          ),
        ),
      ),
    );
  }
}

class _Tab extends StatelessWidget {
  final List<Widget> children;

  const _Tab({Key key, this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: children
                .map((w) => Container(child: w, padding: EdgeInsets.all(6.0)))
                .toList(),
          ),
        ),
      ),
    );
  }
}

class _Btn extends StatelessWidget {
  final String txt;
  final VoidCallback onPressed;

  const _Btn({Key key, this.txt, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 48.0,
      child: RaisedButton(child: Text(txt), onPressed: onPressed),
    );
  }
}
