import 'package:flutter/material.dart';
import 'package:sociaworld/gonderikarti.dart';
import 'package:sociaworld/profilsayfasi.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {},
        child: Icon(
          Icons.add_a_photo,
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.grey,
            size: 32,
          ),
          onPressed: () {},
        ),
        title: Container(
          height: 30,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: NetworkImage("https://www.digitongue.com/img/logo-dark.png"),
          )),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.red[400],
                size: 32,
              ),
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Column(
                        children: [
                          duyuru("Rabia seni takip etti", "3 dk önce"),
                          duyuru("Ekrem gönderine yorum yaptı", "1 gün önce"),
                          duyuru("Berkay mesaj gönderdi", "2 hafta önce"),
                        ],
                      );
                    });
              }),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(color: Colors.grey[100], boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0, 3),
                blurRadius: 5,
              ),
            ]),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                profilkartiolustur(
                  "mertkkk_",
                  "https://i.hizliresim.com/91NiM6.png",
                  "Mert Kaynak",
                  "https://cdn.pixabay.com/photo/2016/02/17/18/59/ping-pong-1205609_1280.jpg",
                ),
                profilkartiolustur(
                  "mkkk18",
                  "https://i.hizliresim.com/2Ph5BU.png",
                  "Rabia Ekren",
                  "https://www.timsahajans.com.tr/wp-content/uploads/2020/03/Instagram-payla%C5%9F%C4%B1mlar%C4%B1yla-ana-sayfan%C4%B1z%C4%B1-renklendirecek-tasar%C4%B1mc%C4%B1-hesaplar%C4%B1.jpg",
                ),
                profilkartiolustur(
                  "ekremkutsal",
                  "https://i.hizliresim.com/PTPUVp.png",
                  "Ekrem Kutsal",
                  "https://cdn.pixabay.com/photo/2015/07/17/22/43/student-849823_1280.jpg",
                ),
                profilkartiolustur(
                  "berkaybrn",
                  "https://i.hizliresim.com/cBsAPZ.png",
                  "Berkay Boran",
                  "https://cdn.pixabay.com/photo/2018/07/28/21/05/football-3568968_1280.jpg",
                ),
                profilkartiolustur(
                  "dgny.a",
                  "https://i.hizliresim.com/B0EvX4.png",
                  "Doğanay Aşık",
                  "https://cdn.pixabay.com/photo/2017/08/30/23/41/football-2698966_1280.jpg",
                ),
                profilkartiolustur(
                  "mmmuggge",
                  "https://i.hizliresim.com/hB5MyM.png",
                  "Müge Derman",
                  "https://cdn.pixabay.com/photo/2017/02/20/18/03/cat-2083492_1280.jpg",
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GonderiKarti(
            profilResimLinki: "https://i.hizliresim.com/91NiM6.png",
            isimSoyad: "Mert Kaynak",
            aciklama: "Bozkırlarda bir fener yaktım...",
            gonderiResimLinki:
                "https://cdn.pixabay.com/photo/2016/11/14/04/36/boy-1822614_1280.jpg",
          ),
          GonderiKarti(
            profilResimLinki: "https://i.hizliresim.com/2Ph5BU.png",
            isimSoyad: "Rabia Ekren",
            aciklama: "Çalışmak benim işim!",
            gonderiResimLinki:
                "https://cdn.pixabay.com/photo/2020/08/25/18/29/workplace-5517762_1280.jpg",
          ),
          GonderiKarti(
            profilResimLinki: "https://i.hizliresim.com/PTPUVp.png",
            isimSoyad: "Ekrem Kutsal",
            aciklama: "Yeni evime taşındım...",
            gonderiResimLinki:
                "https://cdn.pixabay.com/photo/2016/11/18/17/46/architecture-1836070_1280.jpg",
          ),
        ],
      ),
    );
  }

  Padding duyuru(String mesaj, String gecenSure) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            mesaj,
            style: TextStyle(fontSize: 15),
          ),
          Text(gecenSure)
        ],
      ),
    );
  }

  Widget profilkartiolustur(String kullaniciAdi, String resimLinki,
      String isimSoyad, String kapakResimLinki) {
    return Material(
      child: InkWell(
        onTap: () async {
          bool donenVeri = await Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => ProfilSayfasi(
                    profilResimLinki: resimLinki,
                    kullaniciAdi: kullaniciAdi,
                    isimSoyad: isimSoyad,
                    kapakResimLinki: kapakResimLinki,
                  )));

          if (donenVeri) {
            print("Kullanıcı Profil Sayfasından Döndü.");
          }
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  Hero(
                    tag: kullaniciAdi,
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 2.0, color: Colors.grey),
                        borderRadius: BorderRadius.circular(35.0),
                        image: DecorationImage(
                          image: NetworkImage(resimLinki),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                        width: 2,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                kullaniciAdi,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
