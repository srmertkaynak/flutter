import 'package:flutter/material.dart';

class ResimveButonTurleri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        // Text(
        //   "Resim ve Buton Türleri",
        //   style: TextStyle(
        //     fontSize: 24,
        //     fontWeight: FontWeight.bold,
        //   ),
        // ),
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  width: 100,
                  height: 100,
                  color: Colors.red[200],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Image.asset("assets/images/resim-1.jpg"),
                      Text("Asset Image"),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.red[200],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      FadeInImage.assetNetwork(
                          placeholder: "assets/images/resim-1.jpg",
                          image:
                              "https://cdn.pixabay.com/photo/2016/10/18/21/22/california-1751455_1280.jpg"),
                      Text("Network Image"),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.red[200],
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CircleAvatar(
                        child: Text("Emre"),
                        backgroundColor: Colors.purple,
                        foregroundColor: Colors.orange,
                      ),
                      Text("Circle Avatar"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: 50,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              RaisedButton(
                child: Text("Emre Altunbilek"),
                color: Colors.orange,
                onPressed: () => debugPrint("Fat Arrowlu Fonksiyon"),
              ),
              RaisedButton(
                child: Text("Flutter ve Dart Dersleri"),
                elevation: 12,
                textColor: Colors.yellow,
                color: Colors.purple,
                onPressed: () {
                  debugPrint("Normal Lambda Expression");
                  debugPrint("İkinci satır");
                },
              ),
              RaisedButton(
                child: Text("Hızla Devam Ediyor"),
                elevation: 12,
                textColor: Colors.black,
                color: Colors.red,
                onPressed: () {
                  uzunMethod();
                },
              ),
              RaisedButton(
                child: Text("Çalışmaya Devam"),
                elevation: 15,
                textColor: Colors.black,
                color: Colors.blue,
                onPressed: uzunMethod,
              ),
              IconButton(
                icon: Icon(
                  Icons.add_circle_outline,
                  size: 24,
                ),
                onPressed: uzunMethod,
              ),
              FlatButton(
                  onPressed: uzunMethod,
                  child: Text(
                    "Flat Button",
                    style: TextStyle(fontSize: 24),
                  ))
            ],
          ),
        )
      ],
    );
  }

  void uzunMethod() {
    debugPrint("Çok uzun içerikli fonksiyon");
  }
}
