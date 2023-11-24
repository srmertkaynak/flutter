import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Projem',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: Mesaj());
  }
}

class Mesaj extends StatelessWidget {
  final GlobalKey<ScaffoldState> anahtar = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: anahtar,
      appBar: AppBar(),
      body: RaisedButton(
        onPressed: () => {
          anahtar.currentState.showSnackBar(SnackBar(content: Text("Merhaba")))
        },
        child: Text("Mesaj At"),
      ),
    );
  }
}
