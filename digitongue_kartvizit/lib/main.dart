import 'package:digitongue_kartvizit/ui/form_islemleri.dart';
import 'package:digitongue_kartvizit/ui/navigasyon_islemleri.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Flutter Dersleri",
    // initialRoute: "/CPage/DPage/APage",
    routes: {
      '/': (context) => NavigasyonIslemleri(),
      '/formIslemleri': (context) => FormIslemleri(),
      '/APage': (context) => ASayfasi(),
      '/CPage': (context) => CSayfasi(),
      '/DPage': (context) => DSayfasi(),
      '/CPage/DPage': (context) => DSayfasi(),
      // '/CPage/DPage/APage': (context) => ASayfasi(),
      '/listeSayfasi': (context) => ListeSinifi(),
    },
    onGenerateRoute: (RouteSettings settings) {
      List<String> pathElemanlari =
          settings.name.split("/"); //  /detay/$index   /urun/detay/id

      if (pathElemanlari[1] == 'detay') {
        return MaterialPageRoute(
            builder: (context) => ListeDetay(int.parse(pathElemanlari[2])));
      }
    },
    onUnknownRoute: (RouteSettings settings) =>
        MaterialPageRoute(builder: (context) => DSayfasi()),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.orange,
    ),
    //home: NavigasyonIslemleri(),
  ));
}
