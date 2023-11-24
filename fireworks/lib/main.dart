import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Projem',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  final db = Firestore.instance;

  void kullanicilariGetir() async {
    var snapshot = await db.collection("kullanıcılar").getDocuments();
    snapshot.documents.forEach((doc) {
      print(doc.data);
    });
  }

  void kimlikIleKullaniciGetir() async {
    var doc = await db
        .collection("kullanıcılar")
        .document("dEQ10PGgTW7zlKZrAiha")
        .get();

    if (doc.exists) {
      print(doc.data);
    } else {
      print("Böyle bir döküman yok");
    }
  }

  void kullanicilariSirala() async {
    var snapshot = await db
        .collection("kullanıcılar")
        .orderBy("yas", descending: true)
        .getDocuments();
    snapshot.documents.forEach((doc) {
      print(doc.data);
    });
  }

  void kullaniciSorgula() async {
    var snapshot = await db
        .collection("kullanıcılar")
        .where("yas", isLessThanOrEqualTo: 60)
        .getDocuments();
    snapshot.documents.forEach((doc) {
      print(doc.data);
    });
  }

  void kullaniciCokluSorgula() async {
    var snapshot = await db
        .collection("kullanıcılar")
        .where("soyad", isEqualTo: "Kurt")
        .where("yas", isGreaterThan: 20)
        .limit(1)
        .getDocuments();
    snapshot.documents.forEach((doc) {
      print(doc.data);
    });
  }

  void kullaniciOlustur() async {
    var doc = await db
        .collection("kullanıcılar")
        .document("Owemxka9MNWAZNcn7Ahj")
        .get();

    var kullanici_1 = Kullanici(
      id: doc.documentID,
      isim: doc.data['isim'],
      soyad: doc.data['soyad'],
      eposta: doc.data['mail'],
      avatar: doc.data['avatar'],
    );

    print(kullanici_1.id);
    print(kullanici_1.isim);
    print(kullanici_1.soyad);
    print(kullanici_1.eposta);
    print(kullanici_1.avatar);
  }

  @override
  void initState() {
    super.initState();
    kullaniciOlustur();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(),
    );
  }
}

class Kullanici {
  final String id;
  final String isim;
  final String soyad;
  final String avatar;
  final String eposta;

  Kullanici({this.id, this.isim, this.soyad, this.avatar, this.eposta});
}
