import 'package:bobby_media_app/homeui/offlinesong/allen.dart';
import 'package:bobby_media_app/homeui/offlinesong/darshan.dart';
import 'package:bobby_media_app/homeui/offlinesong/dino.dart';
import 'package:bobby_media_app/homeui/offlinesong/vilen.dart';
import 'package:bobby_media_app/homeui/offlinevideo/OnMYWAY.dart';
import 'package:bobby_media_app/homeui/offlinevideo/VilenChidiya.dart';
import 'package:bobby_media_app/homeui/offlinevideo/alone.dart';
import 'package:bobby_media_app/homeui/offlinevideo/havabanke.dart';
import 'package:bobby_media_app/homeui/offlinevideo/wishlist.dart';
import 'package:bobby_media_app/homeui/teriakhiyan.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LocalVideo extends StatelessWidget {
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
      body: Row(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 180,
                height: 200,
                child: RaisedButton(
                  onPressed: () {
                    print("Vilen");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => VilenChidiyaVideo()),
                    );
                  },
                  child: Card(
                    color: Colors.grey.shade400,
                    child: Image.asset('assets/Image/Chidya.jpeg'),
                    elevation: 10,
                  ),
                ),
              ),
              Container(
                width: 180,
                height: 200,
                child: RaisedButton(
                  onPressed: () {
                    print("dino");
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WishlistVideo()),
                    );
                  },
                  child: Card(
                    color: Colors.grey.shade400,
                    child: Image.asset('assets/Image/wishlist.jpg'),
                    elevation: 10,
                  ),
                ),
              ),
              Container(
                width: 180,
                height: 200,
                child: RaisedButton(
                  onPressed: () {
                    print("Darshan");
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HavaBankeVideo()),
                    );
                  },
                  child: Card(
                    color: Colors.grey.shade400,
                    child: Image.asset('assets/Image/Hawabanke.jpeg'),
                    elevation: 10,
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: 180,
                height: 200,
                child: RaisedButton(
                  onPressed: () {
                    print("Abazz");
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AbazzVideo()),
                    );
                  },
                  child: Card(
                    color: Colors.grey.shade400,
                    child: Image.asset('assets/Image/TeriAkhiyan.jpg'),
                    elevation: 10,
                  ),
                ),
              ),
              Container(
                width: 180,
                height: 200,
                child: RaisedButton(
                  onPressed: () {
                    print("Alanwalker");
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OnMyWayVideo()),
                    );
                  },
                  child: Card(
                    color: Colors.grey.shade400,
                    child: Image.asset('assets/Image/onmyway.jpg'),
                    elevation: 10,
                  ),
                ),
              ),
              Container(
                width: 180,
                height: 200,
                child: RaisedButton(
                  onPressed: () {
                    print("Marshmello");
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AloneVideo()),
                    );
                  },
                  child: Card(
                    color: Colors.grey.shade400,
                    child: Image.asset('assets/Image/alone.jpeg'),
                    elevation: 10,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
