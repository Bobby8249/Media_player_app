import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';

class WebVideo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Video Player"),
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              child: RaisedButton(
                onPressed: () {
                  print("YOu Tube");
                  launch('https://www.youtube.com/');
                },
                child: Card(
                  color: Colors.grey.shade400,
                  child: Image.asset('assets/Image/youtube.png'),
                  elevation: 10,
                ),
              ),
            ),
            Container(
              width: 200,
              height: 200,
              child: RaisedButton(
                onPressed: () {
                  print("Mx Player");
                  launch('https://www.mxplayer.in//');
                },
                child: Card(
                  color: Colors.grey.shade400,
                  child: Image.asset('assets/Image/mxplayer.jpeg'),
                  elevation: 10,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
