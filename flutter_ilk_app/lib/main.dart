import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Color(0xff000),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blueGrey[800],
        title: Text("Favori Filmim"),
      ),
      body: Center(
        child: Image.network(
            "https://tr.web.img4.acsta.net/pictures/bzp/01/27070.jpg"),
      ),
    ),
  ));
}
