import 'package:flutter/material.dart';

class ListeKonuAnlatimi extends StatelessWidget {
  // Liste için veri kaynağı oluştur

  List<int> listeNumaralari = List.generate(300, (index) => index);
  List<String> listeAltBaslik =
      List.generate(300, (index) => "Liste elemanı alt başlık $index");

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: listeNumaralari
          .map(
            (oankiEleman) => Column(
              children: <Widget>[
                Container(
                  child: Card(
                    color: Colors.teal[100],
                    margin: EdgeInsets.all(10),
                    elevation: 10,
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Icon(Icons.android),
                        radius: 12,
                      ),
                      title: Text("Liste elemanı başlık $oankiEleman"),
                      subtitle: Text(listeAltBaslik[oankiEleman]),
                      trailing: Icon(Icons.add_circle),
                    ),
                  ),
                ),
                Divider(
                  color: Colors.orange,
                  height: 32,
                  indent: 20,
                ),
              ],
            ),
          )
          .toList(),
    );
  }
}

/*
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              child: Card(
                color: Colors.teal[100],
                margin: EdgeInsets.all(10),
                elevation: 10,
                child: ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.android),
                    radius: 12,
                  ),
                  title: Text("Liste elemanı başlık"),
                  subtitle: Text("Liste elemanı alt başlık"),
                  trailing: Icon(Icons.add_circle),
                ),
              ),
            ),
            Divider(
              color: Colors.orange,
              height: 32,
              indent: 20,
            ),
          ],
        ),
      ],
*/
