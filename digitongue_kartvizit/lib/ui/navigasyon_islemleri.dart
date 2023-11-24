import 'package:flutter/material.dart';

class NavigasyonIslemleri extends StatelessWidget {
  String baslik = "B Sayfası 2";
  String yazi = "Açıklama";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Navigasyon İşlemleri",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ASayfasi()),
                );
              },
              child: Text("A Sayfasına Git"),
              color: Colors.blue,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => BSayfasi(baslik, yazi)),
                );
              },
              child: Text("B Sayfasına Git ve Veri Gönder"),
              color: Colors.blue,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CSayfasi()),
                );
              },
              child: Text("C Sayfasına Git ve Veri Gönder"),
              color: Colors.blue,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DSayfasi()),
                ).then((popOlayindanSonraGelenDeger) {
                  debugPrint(
                      "Pop İşleminden Gelen Değer : $popOlayindanSonraGelenDeger");
                });
              },
              child: Text("D Sayfasına Git ve Veri Gönder"),
              color: Colors.blue,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => ESayfasi()));
              },
              child: Text("E Sayfasına Git ve gERİ gELME"),
              color: Colors.blue,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/listeSayfasi");
              },
              child: Text("Liste Sayfasına Git"),
              color: Colors.blue,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/formIslemleri");
              },
              child: Text("Liste Sayfasına Git"),
              color: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}

class ListeSinifi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Liste Sayfası",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext Context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/detay/$index");
            },
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Liste Elemanı : $index"),
              ),
            ),
          );
        },
        itemCount: 60,
      ),
    );
  }
}

class ListeDetay extends StatelessWidget {
  int tiklanilanIndex = 0;

  ListeDetay(this.tiklanilanIndex) {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Liste Detay Sayfası $tiklanilanIndex",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: GestureDetector(
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Liste Elemanı $tiklanilanIndex"),
        )),
      ),
    );
  }
}

class ASayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "A Sayfası",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "A Sayfası",
              style: TextStyle(fontSize: 24, color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}

class BSayfasi extends StatelessWidget {
  String gelenBaslikVerisi;
  String gelenYaziVerisi;

  BSayfasi(this.gelenBaslikVerisi, this.gelenYaziVerisi);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          gelenBaslikVerisi,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              gelenYaziVerisi,
              style: TextStyle(
                fontSize: 24,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "C Sayfası",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "C Sayfası",
              style: TextStyle(
                fontSize: 24,
                color: Colors.red,
              ),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pop(context); // Geriye Gönder
              },
              color: Colors.red,
              child: Text(
                "Geri Dön",
                style: TextStyle(color: Colors.white),
              ),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ASayfasi())); // Geriye Gönder
              },
              color: Colors.red,
              child: Text(
                "A Sayfasına Git",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return WillPopScope(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "D Sayfası",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "D Sayfası",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.red,
                  ),
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.pop(context, true);
                    // true demek ürün silindi
                    // false demek ürün silinemedi veya vazgeçildi
                  },
                  color: Colors.red,
                  child: Text(
                    "Geri Dön ve Veri Gönder",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                RaisedButton(
                  onPressed: () {
                    // Navigator.pop(context, true);
                    // true demek ürün silindi
                    // false demek ürün silinemedi veya vazgeçildi
                    Navigator.pushReplacementNamed(context, "/CPage");
                  },
                  color: Colors.pink,
                  child: Text(
                    "Route",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
        onWillPop: () {
          debugPrint("On Will Pop Çalıştı");
          Navigator.pop(context, false);
          return Future.value(false);
        });
  }
}

class ESayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "E Sayfası",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "E Sayfası",
              style: TextStyle(fontSize: 24, color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
