import 'package:flutter/material.dart';

class FormIslemleri extends StatefulWidget {
  @override
  _FormIslemleriState createState() => _FormIslemleriState();
}

class _FormIslemleriState extends State<FormIslemleri> {
  String girilenMetin = "";
  int maxLine = 1;
  FocusNode _fNode;
  TextEditingController textController1;

  @override
  void initState() {
    super.initState();
    _fNode = FocusNode();
    textController1 = TextEditingController(text: "Varsayılan");

    _fNode.addListener(() {
      setState(() {
        if (_fNode.hasFocus) {
          maxLine = 3;
        } else {
          maxLine = 1;
        }
      });
    });
  }

  @override
  void dispose() {
    _fNode.dispose();
    textController1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input İşlemleri"),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            width: 24,
            height: 24,
            child: FloatingActionButton(
              heroTag: "btn1",
              onPressed: () {
                FocusScope.of(context).requestFocus(_fNode);
              },
              child: Icon(
                Icons.edit,
                size: 12,
              ),
              // mini: true,
              backgroundColor: Colors.green,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            heroTag: "btn2",
            onPressed: () {
              debugPrint(textController1.text.toString());
            },
            child: Icon(
              Icons.edit,
              size: 20,
            ),
            mini: true,
            // mini: true,
            backgroundColor: Colors.pink,
          ),
          SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            heroTag: "btn3",
            onPressed: () {
              FocusScope.of(context).requestFocus(_fNode);
            },
            child: Icon(
              Icons.edit,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.done,
              autofocus: false,
              maxLines: maxLine,
              controller: textController1,
              maxLength: 11,
              focusNode: _fNode,
              decoration: InputDecoration(
                  hintText: "Başlık", // placeholder
                  labelText: "Başlık",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  icon: Icon(Icons.edit),
                  prefixIcon: Icon(Icons.done),
                  suffixIcon: Icon(Icons.add)),
              maxLengthEnforced: true,
              onChanged: (s) => debugPrint("On Change : $s"),
              onSubmitted: (s) {
                girilenMetin = s;
              },
              cursorColor: Colors.pink,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.done,
              autofocus: false,
              maxLines: 1,
              maxLength: 11,
              decoration: InputDecoration(
                  hintText: "Başlık", // placeholder
                  labelText: "Başlık",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  icon: Icon(Icons.edit),
                  prefixIcon: Icon(Icons.done),
                  suffixIcon: Icon(Icons.add)),
              maxLengthEnforced: true,
              onChanged: (s) => debugPrint("On Change : $s"),
              onSubmitted: (s) {
                girilenMetin = s;
              },
              cursorColor: Colors.pink,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            width: double.infinity,
            // height: MediaQuery.of(context).size.height * 2,
            height: 200,
            color: Colors.teal[400],
            child:
                Align(alignment: Alignment.center, child: Text(girilenMetin)),
          ),
        ],
      ),
    );
  }
}
