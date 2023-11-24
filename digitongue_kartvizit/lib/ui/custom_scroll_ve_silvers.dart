import 'dart:math' as matematik;

import 'package:flutter/material.dart';

class ScroolandSilvers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Colors.red,
          expandedHeight: 400,
          floating: false,
          pinned: true,
          snap: false,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              "Sliver App Bar",
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
            background: Image.asset(
              "assets/images/mert.png",
              fit: BoxFit.cover,
            ),
          ),
        ),

        // Sabit Elemanlarla Bir Satırda Kaç Eleman Olacağını Söylediğimiz Grid Türü
        SliverGrid(
          delegate: SliverChildListDelegate(sabitListeElemanlari()),
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        ),
        // Dinamik(Builder) Elemanlarla Bir Satırda Kaç Eleman Olacağını Söylediğimiz Grid Türü
        SliverGrid(
            delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFonksiyon,
                childCount: 3),
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3)),
        // Dinamik(Builder) Elemanlarla Bir Satırdaki Bir Elemanın Max Genişliğini Söylediğimiz Grid Türü
        SliverGrid(
            delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFonksiyon,
                childCount: 3),
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200)),
        SliverGrid.count(
          crossAxisCount: 6,
          children: sabitListeElemanlari(),
        ),
        // Statik Elemanlı Bir Sliver List View
        SliverPadding(
          padding: EdgeInsets.all(5),
          sliver: SliverList(
            delegate: SliverChildListDelegate(sabitListeElemanlari()),
          ),
        ),
        // Dinamik Elemanlı Bir Sliver List View
        SliverPadding(
          padding: EdgeInsets.all(10),
          sliver: SliverList(
            delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFonksiyon,
                childCount: 10),
          ),
        ),
        // Performanslı Çalışan, Belli Bir Ölçü Girdiğimiz Grid Türü
        SliverFixedExtentList(
            delegate: SliverChildListDelegate(sabitListeElemanlari()),
            itemExtent: 300),

        SliverFixedExtentList(
            delegate: SliverChildBuilderDelegate(_dinamikElemanUretenFonksiyon,
                childCount: 6),
            itemExtent: 200),
        // SliverList(delegate: null),
        // SliverFixedExtentList(delegate: null, itemExtent: null),
        // SliverGrid(delegate: null, gridDelegate: null),
        // SliverGrid.count(crossAxisCount: 2),
        // SliverGrid.extent(maxCrossAxisExtent: 200),
      ],
    );
  }

  List<Widget> sabitListeElemanlari() {
    return [
      Container(
        height: 100,
        color: Colors.amber,
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanı 1",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.teal,
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanı 2",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.blue,
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanı 3",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.orange,
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanı 4",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.cyan,
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanı 5",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.purple,
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanı 6",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.black,
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanı 7",
          style: TextStyle(fontSize: 18, color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
      Container(
        height: 100,
        color: Colors.purple,
        alignment: Alignment.center,
        child: Text(
          "Sabit Liste Elemanı 8",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    ];
  }

  // Dinamik İçerik Ürettiğimiz Fonksiyonumuz
  Widget _dinamikElemanUretenFonksiyon(BuildContext context, int index) {
    return Container(
      height: 100,
      color: rastgeleRenkUret(),
      alignment: Alignment.center,
      child: Text(
        "Dinamik Liste Elemanı ${index + 1}",
        style: TextStyle(fontSize: 18),
        textAlign: TextAlign.center,
      ),
    );
  }

  // Rastgele Renk Ürettiğimiz Bir Fonksiyon
  Color rastgeleRenkUret() {
    return Color.fromARGB(
        matematik.Random().nextInt(255),
        matematik.Random().nextInt(255),
        matematik.Random().nextInt(255),
        matematik.Random().nextInt(255));
  }
}
