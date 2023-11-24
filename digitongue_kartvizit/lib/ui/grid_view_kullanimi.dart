import 'package:flutter/material.dart';

class GridViewOrnek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 100,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          child: Container(
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.yellow, Colors.red],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              image: DecorationImage(
                  image: AssetImage("assets/images/mert.png"),
                  fit: BoxFit.contain,
                  alignment: Alignment.topCenter),
            ),
            margin: EdgeInsets.all(20),
            child: Text(
              "Merhaba Flutter $index",
              style: TextStyle(fontSize: 16, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
          onTap: () => debugPrint("Tıklanıldı Kısa: $index"),
          onDoubleTap: () => debugPrint("Tıklanıldı Uzun: $index"),
          onLongPress: () => debugPrint("Tıklanıldı Uzun Long: $index"),
          onHorizontalDragStart: (e) =>
              debugPrint("Drag Start: $index ve konum: $e"),
        );
      },
    );
  }
}

// EXTENT
/*
    return GridView.extent(
      maxCrossAxisExtent: 500,
      reverse: false,
      primary: false,
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          color: Colors.teal[300],
          child: Text(
            "Merhaba Flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal[300],
          child: Text(
            "Merhaba Flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal[300],
          child: Text(
            "Merhaba Flutter",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal[300],
          child: Text(
            "Merhaba Flutter",
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
*/

// - COUNT -

/*return GridView.count(
crossAxisCount: 3,
reverse: true,
primary: false,
scrollDirection: Axis.vertical,
padding: EdgeInsets.all(10),
crossAxisSpacing: 20,
mainAxisSpacing: 40,
children: <Widget>[
Container(
alignment: Alignment.center,
color: Colors.teal[300],
child: Text(
"Merhaba Flutter",
textAlign: TextAlign.center,
),
),
Container(
alignment: Alignment.center,
color: Colors.teal[300],
child: Text(
"Merhaba Flutter",
textAlign: TextAlign.center,
),
),
Container(
alignment: Alignment.center,
color: Colors.teal[300],
child: Text(
"Merhaba Flutter",
textAlign: TextAlign.center,
),
),
Container(
alignment: Alignment.center,
color: Colors.teal[300],
child: Text(
"Merhaba Flutter",
textAlign: TextAlign.center,
),
),
],
);*/
