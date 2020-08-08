import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:audioplayers/audio_cache.dart';

MaterialApphome() {
  FlutterStatusbarcolor.setStatusBarColor(Colors.white10);

  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("Media Player"),
        backgroundColor: Colors.deepOrangeAccent.shade200,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: () => {
                    Fluttertoast.showToast(
                        msg: "Opening Account !!",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.amber,
                        textColor: Colors.white,
                        fontSize: 16.0)
                  }),
          IconButton(
              icon: Icon(Icons.audiotrack),
              onPressed: () => {
                    Fluttertoast.showToast(
                        msg: "Audio Track changed !!",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.amber,
                        textColor: Colors.white,
                        fontSize: 16.0)
                  }),
          IconButton(
              icon: Icon(Icons.file_download),
              onPressed: () => {
                    Fluttertoast.showToast(
                        msg: "wait for download !!",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.amber,
                        textColor: Colors.white,
                        fontSize: 16.0)
                  }),
        ],
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                width: 200,
                height: 200,
                child: RaisedButton(
                  onPressed: () {
                    print("dino");
                    var audio = AudioCache();
                    audio.play(
                        'assets/DinoJames–WishlistfeatKaprila-OfficialMusicVideo.mp3');
                  },
                  child: Card(
                    color: Colors.grey.shade400,
                    child: Image.asset('images/Chidya.jpeg'),
                    elevation: 10,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topRight,
                width: 200,
                height: 200,
                child: RaisedButton(
                  onPressed: () {
                    print("clicked");
                  },
                  child: Card(
                    color: Colors.grey.shade400,
                    child: Image.asset('images/Hawabanke.jpeg'),
                    elevation: 10,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                alignment: Alignment.centerLeft,
                width: 200,
                height: 200,
                child: RaisedButton(
                  onPressed: () {
                    print("clicked");
                  },
                  child: Card(
                    color: Colors.grey.shade400,
                    child: Image.asset('images/TeriAkhiyan.jpg'),
                    elevation: 10,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                width: 200,
                height: 200,
                child: RaisedButton(
                  onPressed: () {
                    print('clicked');
                  },
                  child: Card(
                    color: Colors.grey.shade400,
                    child: Image.asset('images/wishlist.jpg'),
                    elevation: 10,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                alignment: Alignment.bottomLeft,
                width: 200,
                height: 200,
                child: RaisedButton(
                  onPressed: () {
                    launch('https://gaana.com/');
                  },
                  child: Card(
                    color: Colors.grey.shade400,
                    child: Image.asset('images/gaana_social.jpg'),
                    elevation: 10,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.bottomRight,
                width: 200,
                height: 200,
                child: RaisedButton(
                  onPressed: () {
                    launch('https://www.youtube.com/');
                  },
                  child: Card(
                    color: Colors.grey.shade400,
                    child: Image.asset('images/youtube.png'),
                    elevation: 10,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
