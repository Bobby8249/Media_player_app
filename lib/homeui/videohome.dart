import 'package:bobby_media_app/homeui/internetVideo.dart';
import 'package:bobby_media_app/homeui/localvideo.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Videomain extends StatelessWidget {
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
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    width: 5,
                    color: Colors.deepOrangeAccent.shade200,
                  )),
              margin: const EdgeInsets.all(10.0),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LocalVideo()),
                  );
                },
                child: Card(
                  color: Colors.blueGrey[200],
                  child: Text("Play Video Offline"),
                  elevation: 10,
                ),
              ),
            ),
            Container(
              width: 200,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    width: 5,
                    color: Colors.deepOrangeAccent.shade200,
                  )),
              margin: const EdgeInsets.all(10.0),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WebVideo()),
                  );
                },
                child: Card(
                  color: Colors.blueGrey[200],
                  child: Text("Play Video From Internet"),
                  elevation: 10,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
