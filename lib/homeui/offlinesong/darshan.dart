import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:bobby_media_app/homeui/localaudio.dart';
import 'package:bobby_media_app/homeui/offlinesong/allen.dart';
import 'package:bobby_media_app/homeui/offlinesong/marshmellow.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:line_icons/line_icons.dart';

class Darshanhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Bobby Media",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageSetup createState() => _MyHomePageSetup();
}

class _MyHomePageSetup extends State<MyHomePage> {
  bool isHeartPressed = false;
  bool isPlayPressed = false;
  // double _value = 0;
  Duration _duration = new Duration();
  Duration _position = new Duration();
  AudioPlayer advancedPlayer;
  AudioCache audioCache;

  @override
  void initState() {
    super.initState();
    initPlayer();
  }

  void initPlayer() {
    advancedPlayer = new AudioPlayer();
    audioCache = new AudioCache(fixedPlayer: advancedPlayer);
    // ignore: deprecated_member_use
    advancedPlayer.durationHandler = (d) => setState(() => _duration = d);
    // ignore: deprecated_member_use
    advancedPlayer.positionHandler = (p) => setState(() => _position = p);
  }

  void seekToSecond(int second) {
    Duration newDuration = Duration(seconds: second);
    advancedPlayer.seek(newDuration);
  }

  double setChanged() {
    Duration newDuration = Duration(seconds: 0);
    advancedPlayer.seek(newDuration);
    return 0.0;
  }

  @override
  Widget build(BuildContext context) {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          left: 10,
          right: 10,
          top: 40,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Colors.orangeAccent.shade100,
              Colors.black26,
            ],
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LocalAudio()),
                      );
                    },
                    child: Icon(
                      LineIcons.angle_down,
                      color: Colors.black,
                      size: 24,
                    ),
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        "PLAYING FROM ALBUM",
                        style: TextStyle(
                          letterSpacing: 1,
                          fontSize: 11,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Hava Banke',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5,
                          fontFamily: "ProximaNova",
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    LineIcons.ellipsis_v,
                    color: Colors.white,
                    size: 24,
                  )
                ],
              ),
              SizedBox(
                height: 90,
              ),
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset('assets/Image/Hawabanke.jpeg'),
                ),
                width: 325,
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                padding: EdgeInsets.only(left: 25, right: 25),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Hava Banke",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "ProximaNova",
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            wordSpacing: 0.2,
                          ),
                        ),
                        Text(
                          "Darshan Raval",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "ProximaNovaThin",
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            letterSpacing: 0.1,
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                      icon: (isHeartPressed == true)
                          ? Icon(
                              LineIcons.heart,
                              color: Colors.green,
                              size: 30,
                            )
                          : Icon(
                              LineIcons.heart_o,
                              color: Colors.grey.shade400,
                              size: 30,
                            ),
                      onPressed: () {
                        setState(() {
                          isHeartPressed =
                              (isHeartPressed == false) ? true : false;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(left: 5, right: 5),
                    width: double.infinity,
                    child: SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Colors.grey.shade600,
                        activeTickMarkColor: Colors.white,
                        thumbColor: Colors.white,
                        trackHeight: 3,
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 4,
                        ),
                      ),
                      child: Slider(
                        value: (_position.inSeconds.toDouble() !=
                                _duration.inSeconds.toDouble())
                            ? _position.inSeconds.toDouble()
                            : setChanged(),
                        min: 0,
                        max: _duration.inSeconds.toDouble(),
                        onChanged: (double value) {
                          setState(() {
                            seekToSecond(value.toInt());
                            value = value;
                          });
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "${_position.inMinutes.toInt()}:${(_position.inSeconds % 60).toString().padLeft(2, "0")}",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "ProximaNovaThin",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "${_duration.inMinutes.toInt()}:${(_duration.inSeconds % 60).toString().padLeft(2, "0")}",
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: "ProximaNovaThin",
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      LineIcons.random,
                      color: Colors.black,
                    ),
                    RaisedButton(
                      onPressed: () {
                        print('previous');
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Allenhome()),
                        );
                      },
                      child: Icon(
                        Icons.skip_previous,
                        color: Colors.black,
                        size: 40,
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 76,
                      child: Center(
                        child: IconButton(
                          iconSize: 30,
                          alignment: Alignment.center,
                          icon: (isPlayPressed == true)
                              ? Icon(
                                  Icons.pause_circle_filled,
                                  color: Colors.black,
                                )
                              : Icon(
                                  Icons.play_circle_filled,
                                  color: Colors.black,
                                ),
                          onPressed: () {
                            setState(() {
                              isPlayPressed =
                                  isPlayPressed == false ? true : false;
                              if (isPlayPressed == true) {
                                print("Playing .....");
                                audioCache.play(
                                    'Audio/Darshan Raval-HawaBanke-OfficialMusic.mp3');
                              } else {
                                print("Paused .....");
                                advancedPlayer.pause();
                              }
                            });
                          },
                        ),
                      ),
                    ),
                    RaisedButton(
                      onPressed: () {
                        print('object');
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Marshmellowhome()),
                        );
                      },
                      child: Icon(
                        Icons.skip_next,
                        color: Colors.black,
                        size: 40,
                      ),
                    ),
                    Icon(
                      LineIcons.repeat,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 22, right: 22),
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      LineIcons.desktop,
                      color: Colors.black,
                    ),
                    Icon(
                      LineIcons.list_alt,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
