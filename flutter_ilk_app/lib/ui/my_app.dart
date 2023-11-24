import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'resim_ve_buton_turleri.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red, accentColor: Colors.orange),
      home: new Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text(
                "Son Dakika",
                style: TextStyle(
                  fontSize: 36.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              debugPrint("FAB Tıklandı");
            },
            child: Icon(
              Icons.access_alarms,
              color: Colors.white,
            ),
          ),
          body: ResimveButonTurleri()),
    );
  }
}
